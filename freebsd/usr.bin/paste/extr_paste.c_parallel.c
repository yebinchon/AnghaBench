
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char wint_t ;
typedef char wchar_t ;
struct TYPE_3__ {int cnt; char* name; int * fp; struct TYPE_3__* next; } ;
typedef TYPE_1__ LIST ;


 char WEOF ;
 char* delim ;
 int delimcnt ;
 int err (int,char*,...) ;
 int * fopen (char*,char*) ;
 char getwc (int *) ;
 TYPE_1__* malloc (int) ;
 int putwchar (char) ;
 int * stdin ;

__attribute__((used)) static int
parallel(char **argv)
{
 LIST *lp;
 int cnt;
 wint_t ich;
 wchar_t ch;
 char *p;
 LIST *head, *tmp;
 int opencnt, output;

 for (cnt = 0, head = tmp = ((void*)0); (p = *argv); ++argv, ++cnt) {
  if ((lp = malloc(sizeof(LIST))) == ((void*)0))
   err(1, ((void*)0));
  if (p[0] == '-' && !p[1])
   lp->fp = stdin;
  else if (!(lp->fp = fopen(p, "r")))
   err(1, "%s", p);
  lp->next = ((void*)0);
  lp->cnt = cnt;
  lp->name = p;
  if (!head)
   head = tmp = lp;
  else {
   tmp->next = lp;
   tmp = lp;
  }
 }

 for (opencnt = cnt; opencnt;) {
  for (output = 0, lp = head; lp; lp = lp->next) {
   if (!lp->fp) {
    if (output && lp->cnt &&
        (ch = delim[(lp->cnt - 1) % delimcnt]))
     putwchar(ch);
    continue;
   }
   if ((ich = getwc(lp->fp)) == WEOF) {
    if (!--opencnt)
     break;
    lp->fp = ((void*)0);
    if (output && lp->cnt &&
        (ch = delim[(lp->cnt - 1) % delimcnt]))
     putwchar(ch);
    continue;
   }




   if (!output) {
    output = 1;
    for (cnt = 0; cnt < lp->cnt; ++cnt)
     if ((ch = delim[cnt % delimcnt]))
      putwchar(ch);
   } else if ((ch = delim[(lp->cnt - 1) % delimcnt]))
    putwchar(ch);
   if (ich == '\n')
    continue;
   do {
    putwchar(ich);
   } while ((ich = getwc(lp->fp)) != WEOF && ich != '\n');
  }
  if (output)
   putwchar('\n');
 }

 return (0);
}
