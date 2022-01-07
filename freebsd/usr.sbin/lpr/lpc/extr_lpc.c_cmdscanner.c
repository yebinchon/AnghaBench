
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmd {int c_opts; int (* c_handler ) (scalar_t__,int *) ;int * c_generic; } ;
typedef int History ;
typedef int HistEvent ;
typedef int EditLine ;


 int EL_EDITOR ;
 int EL_HIST ;
 int EL_PROMPT ;
 int EL_SIGNAL ;
 int H_ENTER ;
 int H_SETSIZE ;
 int LPC_PRIVCMD ;
 int LPR_OPER ;
 scalar_t__ MAX_CMDLINE ;
 size_t MIN (scalar_t__,int) ;
 int cgetset (int *) ;
 scalar_t__* cmdline ;
 char* el_gets (int *,int*) ;
 int * el_init (char*,int ,int ,int ) ;
 int el_parse (int *,scalar_t__,char const**) ;
 int el_set (int *,int ,...) ;
 int el_source (int *,int *) ;
 int * fgets (scalar_t__*,scalar_t__,int ) ;
 scalar_t__ fromatty ;
 int generic (int *,int,int (*) (scalar_t__,int *),scalar_t__,int *) ;
 struct cmd* getcmd (int ) ;
 scalar_t__ getuid () ;
 int history (int *,int *,int ,...) ;
 int * history_init () ;
 scalar_t__ ingroup (int ) ;
 int lpc_prompt ;
 int makeargv () ;
 scalar_t__ margc ;
 int * margv ;
 int memcpy (scalar_t__*,char const*,size_t) ;
 int printf (char*) ;
 int quit (int ,int *) ;
 int stderr ;
 int stdin ;
 int stdout ;
 int stub1 (scalar_t__,int *) ;

__attribute__((used)) static void
cmdscanner(void)
{
 register struct cmd *c;
 static EditLine *el;
 static History *hist;
 HistEvent he;
 size_t len;
 int num;
 const char *bp;

 num = 0;
 bp = ((void*)0);
 el = ((void*)0);
 hist = ((void*)0);
 for (;;) {
  if (fromatty) {
   if (!el) {
    el = el_init("lpc", stdin, stdout, stderr);
    hist = history_init();
    history(hist, &he, H_SETSIZE, 100);
    el_set(el, EL_HIST, history, hist);
    el_set(el, EL_EDITOR, "emacs");
    el_set(el, EL_PROMPT, lpc_prompt);
    el_set(el, EL_SIGNAL, 1);
    el_source(el, ((void*)0));
    cgetset(((void*)0));
   }
   if ((bp = el_gets(el, &num)) == ((void*)0) || num == 0)
    quit(0, ((void*)0));

   len = MIN(MAX_CMDLINE - 1, num);
   memcpy(cmdline, bp, len);
   cmdline[len] = 0;
   history(hist, &he, H_ENTER, bp);

  } else {
   if (fgets(cmdline, MAX_CMDLINE, stdin) == ((void*)0))
    quit(0, ((void*)0));
   if (cmdline[0] == 0 || cmdline[0] == '\n')
    break;
  }

  makeargv();
  if (margc == 0)
   continue;
  if (el != ((void*)0) && el_parse(el, margc, (const char **)margv) != -1)
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
  if ((c->c_opts & LPC_PRIVCMD) && getuid() &&
      ingroup(LPR_OPER) == 0) {
   printf("?Privileged command\n");
   continue;
  }
  if (c->c_generic != ((void*)0))
   generic(c->c_generic, c->c_opts, c->c_handler,
       margc, margv);
  else
   (*c->c_handler)(margc, margv);
 }
}
