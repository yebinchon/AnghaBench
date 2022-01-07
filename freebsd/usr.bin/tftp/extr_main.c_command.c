
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd {int (* handler ) (scalar_t__,int *) ;} ;
typedef int History ;
typedef int HistEvent ;
typedef int EditLine ;


 int H_ENTER ;
 int MAXLINE ;
 int MIN (int,int) ;
 char* el_gets (int *,int*) ;
 int exit (int ) ;
 scalar_t__ feof (int ) ;
 int * fgets (char*,int,int ) ;
 struct cmd* getcmd (int ) ;
 int history (int *,int *,int ,char const*) ;
 int makeargv (char*) ;
 scalar_t__ margc ;
 int * margv ;
 int memcpy (char*,char const*,int) ;
 int printf (char*) ;
 int stdin ;
 char* strchr (char*,char) ;
 int stub1 (scalar_t__,int *) ;
 int txrx_error ;

__attribute__((used)) static void
command(bool interactive, EditLine *el, History *hist, HistEvent *hep)
{
 struct cmd *c;
 const char *bp;
 char *cp;
 int len, num;
 char line[MAXLINE];

 for (;;) {
  if (interactive) {
   if ((bp = el_gets(el, &num)) == ((void*)0) || num == 0)
    exit(0);
   len = MIN(MAXLINE, num);
   memcpy(line, bp, len);
   line[len - 1] = '\0';
   history(hist, hep, H_ENTER, bp);
  } else {
   line[0] = 0;
   if (fgets(line, sizeof line , stdin) == ((void*)0)) {
    if (feof(stdin)) {
     exit(txrx_error);
    } else {
     continue;
    }
   }
  }
  if ((cp = strchr(line, '\n')))
   *cp = '\0';
  if (line[0] == 0)
   continue;
  makeargv(line);
  if (margc == 0)
   continue;
  c = getcmd(margv[0]);
  if (c == (struct cmd *)-1) {
   printf("?Ambiguous command\n");
   continue;
  }
  if (c == ((void*)0)) {
   printf("?Invalid command\n");
   continue;
  }
  (*c->handler)(margc, margv);
 }
}
