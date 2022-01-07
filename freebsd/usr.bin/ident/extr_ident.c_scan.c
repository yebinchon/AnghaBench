
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
typedef int locale_t ;
typedef int analyzer_states ;
typedef int FILE ;



 int EOF ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;


 int LC_ALL_MASK ;



 int fgetc (int *) ;
 int fprintf (int ,char*,char*,char const*) ;
 int freelocale (int ) ;
 char* getprogname () ;
 int isalpha_l (int,int ) ;
 int iscntrl_l (int,int ) ;
 int newlocale (int ,char*,int *) ;
 int printf (char*,char const*) ;
 int sbuf_clear (struct sbuf*) ;
 char* sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 int sbuf_len (struct sbuf*) ;
 struct sbuf* sbuf_new_auto () ;
 int sbuf_putc (struct sbuf*,int) ;
 int stderr ;

__attribute__((used)) static int
scan(FILE *fp, const char *name, bool quiet)
{
 int c;
 bool hasid = 0;
 bool subversion = 0;
 analyzer_states state = 132;
 struct sbuf *id = sbuf_new_auto();
 locale_t l;

 l = newlocale(LC_ALL_MASK, "C", ((void*)0));

 if (name != ((void*)0))
  printf("%s:\n", name);

 while ((c = fgetc(fp)) != EOF) {
  switch (state) {
  case 132:
   if (c == '$') {

    state = 133;
   } else {

    continue;
   }
   break;
  case 133:
   if (isalpha_l(c, l)) {

    sbuf_clear(id);
    sbuf_putc(id, '$');
    sbuf_putc(id, c);
    state = 131;

    continue;
   } else if (c == '$') {

    continue;
   } else {

    state = 132;
   }
   break;
  case 131:
   sbuf_putc(id, c);

   if (isalpha_l(c, l)) {



    continue;
   } else if (c == ':') {




    state = 130;
    subversion = 0;
   } else if (c == '$') {





    state = 133;
   } else {



    state = 132;
   }
   break;
  case 130:
  case 129:
   sbuf_putc(id, c);

   switch (c) {
   case ':':
    if (state == 130) {
     state = 129;
     subversion = 1;
    } else {
     state = 132;
    }
    break;
   case ' ':




    state = 128;
    break;
   default:

    state = 132;
    break;
   }
   break;
  case 128:
   sbuf_putc(id, c);

   if (iscntrl_l(c, l)) {

    state = 132;
   } else if (c == '$') {
    sbuf_finish(id);
    c = sbuf_data(id)[sbuf_len(id) - 2];
    if (c == ' ' || (subversion && c == '#')) {
     printf("     %s\n", sbuf_data(id));
     hasid = 1;
    }
    state = 132;
   }

   break;
  }
 }
 sbuf_delete(id);
 freelocale(l);

 if (!hasid) {
  if (!quiet)
   fprintf(stderr, "%s warning: no id keywords in %s\n",
       getprogname(), name ? name : "standard input");

  return (EXIT_FAILURE);
 }

 return (EXIT_SUCCESS);
}
