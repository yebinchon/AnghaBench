
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 int errx (int,char*,char*) ;
 char* malloc (size_t) ;
 int strcpy (char*,char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static void
obsolete(char *argv[])
{
 char *ap, *p, *t;
 size_t len;
 char *start;

 while ((ap = *++argv)) {

  if (ap[0] != '-') {
   if (ap[0] != '+')
    return;
  } else if (ap[1] == '-')
   return;

  switch(*++ap) {

  case '0': case '1': case '2': case '3': case '4':
  case '5': case '6': case '7': case '8': case '9':


   len = strlen(*argv);
   if ((start = p = malloc(len + 3)) == ((void*)0))
    err(1, "malloc");
   *p++ = '-';






   t = *argv + len - 1;
   if (*t == 'F' || *t == 'f' || *t == 'r') {
    *p++ = *t;
    *t-- = '\0';
   }
   switch(*t) {
   case 'b':
    *p++ = 'b';
    *t = '\0';
    break;
   case 'c':
    *p++ = 'c';
    *t = '\0';
    break;
   case 'l':
    *t = '\0';

   case '0': case '1': case '2': case '3': case '4':
   case '5': case '6': case '7': case '8': case '9':
    *p++ = 'n';
    break;
   default:
    errx(1, "illegal option -- %s", *argv);
   }
   *p++ = *argv[0];
   (void)strcpy(p, ap);
   *argv = start;
   continue;





  case 'b':
  case 'c':
  case 'n':
   if (!ap[1])
    ++argv;


  case 'F':
  case 'f':
  case 'r':
   continue;


  default:
   return;
  }
 }
}
