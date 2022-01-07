
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int History ;
typedef int HistEvent ;
typedef int EditLine ;


 int EL_EDITOR ;
 int EL_HIST ;
 int EL_PROMPT ;
 int EL_SIGNAL ;
 int H_SETSIZE ;
 int SIGINT ;
 int STDIN_FILENO ;
 int acting_as_client ;
 int command (int,int *,int *,int *) ;
 int command_prompt ;
 int * el_init (char*,int ,int ,int ) ;
 int el_reset (int *) ;
 int el_set (int *,int ,...) ;
 int el_source (int *,int *) ;
 int exit (int ) ;
 int history (int *,int *,int ,int) ;
 int * history_init () ;
 int init_options () ;
 int intr ;
 int isatty (int ) ;
 int mode ;
 int peer ;
 int putchar (char) ;
 scalar_t__ setjmp (int ) ;
 int setpeer (int,char**) ;
 int signal (int ,int ) ;
 int stderr ;
 int stdin ;
 int stdout ;
 int strcpy (int ,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int toplevel ;
 int txrx_error ;
 int urihandling (char*) ;

int
main(int argc, char *argv[])
{
 HistEvent he;
 static EditLine *el;
 static History *hist;
 bool interactive;

 acting_as_client = 1;
 peer = -1;
 strcpy(mode, "octet");
 signal(SIGINT, intr);

 interactive = isatty(STDIN_FILENO);
 if (interactive) {
  el = el_init("tftp", stdin, stdout, stderr);
  hist = history_init();
  history(hist, &he, H_SETSIZE, 100);
  el_set(el, EL_HIST, history, hist);
  el_set(el, EL_EDITOR, "emacs");
  el_set(el, EL_PROMPT, command_prompt);
  el_set(el, EL_SIGNAL, 1);
  el_source(el, ((void*)0));
 }

 if (argc > 1) {
  if (setjmp(toplevel) != 0)
   exit(txrx_error);

  if (strncmp(argv[1], "tftp://", 7) == 0) {
   urihandling(argv[1]);
   exit(txrx_error);
  }

  setpeer(argc, argv);
 }

 if (setjmp(toplevel) != 0) {
  if (interactive)
   el_reset(el);
  (void)putchar('\n');
 }

 init_options();
 command(interactive, el, hist, &he);
}
