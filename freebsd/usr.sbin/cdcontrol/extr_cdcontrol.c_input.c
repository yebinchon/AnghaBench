
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int History ;
typedef int HistEvent ;
typedef int EditLine ;


 int CMD_QUIT ;
 int EL_EDITOR ;
 int EL_HIST ;
 int EL_PROMPT ;
 int EL_SIGNAL ;
 int H_ENTER ;
 int H_SETSIZE ;
 int MAXLINE ;
 int cdcontrol_prompt ;
 char* el_gets (int *,int*) ;
 int * el_init (char*,int ,int ,int ) ;
 int el_set (int *,int ,...) ;
 int el_source (int *,int *) ;
 int fgets (char*,int,int ) ;
 int fprintf (int ,char*) ;
 int history (int *,int *,int ,...) ;
 int * history_init () ;
 int memcpy (char*,char const*,int) ;
 char* parse (char*,int*) ;
 int stderr ;
 int stdin ;
 int stdout ;
 scalar_t__ verbose ;

__attribute__((used)) static char *
input(int *cmd)
{

 static EditLine *el = ((void*)0);
 static History *hist = ((void*)0);
 HistEvent he;
 static char buf[80];
 int num = 0;
 int len;
 const char *bp = ((void*)0);
 char *p;

 do {
  if (verbose) {
   if (!el) {
    el = el_init("cdcontrol", stdin, stdout,
        stderr);
    hist = history_init();
    history(hist, &he, H_SETSIZE, 100);
    el_set(el, EL_HIST, history, hist);
    el_set(el, EL_EDITOR, "emacs");
    el_set(el, EL_PROMPT, cdcontrol_prompt);
    el_set(el, EL_SIGNAL, 1);
    el_source(el, ((void*)0));
   }
   if ((bp = el_gets(el, &num)) == ((void*)0) || num == 0) {
    *cmd = CMD_QUIT;
    fprintf (stderr, "\r\n");
    return (0);
   }

   len = (num > 80) ? 80 : num;
   memcpy(buf, bp, len);
   buf[len] = 0;
   history(hist, &he, H_ENTER, bp);


  } else {
   if (! fgets (buf, sizeof (buf), stdin)) {
    *cmd = CMD_QUIT;
    fprintf (stderr, "\r\n");
    return (0);
   }
  }
  p = parse (buf, cmd);
 } while (! p);
 return (p);
}
