
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct switches {scalar_t__ mode; int fg; int quiet; scalar_t__ nat; int unit; } ;
struct stat {int st_mode; } ;
struct prompt {struct bundle* bundle; } ;
struct TYPE_6__ {int fd; } ;
struct TYPE_7__ {int peer_range; } ;
struct TYPE_8__ {TYPE_2__ cfg; } ;
struct TYPE_9__ {TYPE_3__ ipcp; } ;
struct bundle {TYPE_1__ notify; TYPE_5__* iface; TYPE_4__ ncp; scalar_t__ NatEnabled; } ;
typedef int pid_t ;
struct TYPE_10__ {int name; } ;


 scalar_t__ AF_UNSPEC ;
 int AbortProgram (int) ;
 int BGPid ;
 int BringDownServer ;
 char* CONFFILE ;
 int CheckLabel (char*,struct prompt*,scalar_t__) ;
 int CloseConnection ;
 int CloseSession ;
 int DoLoop (struct bundle*) ;



 int EX_SOCK ;
 int EX_START ;
 int ID0init () ;
 scalar_t__ ID0realuid () ;
 int KillChild ;
 int LibAliasInit (int *) ;
 int LogALERT ;
 int LogERROR ;
 int LogPHASE ;
 int OPT_IFACEALIAS ;
 int O_RDONLY ;
 int O_RDWR ;
 scalar_t__ PHYS_AUTO ;
 scalar_t__ PHYS_BACKGROUND ;
 scalar_t__ PHYS_DIRECT ;
 scalar_t__ PHYS_INTERACTIVE ;
 char* PPP_CONFDIR ;
 int PROMPT_STD ;
 int ProcessArgs (int,char**,struct switches*) ;
 int RestartServer ;
 int SIGALRM ;
 int SIGHUP ;
 int SIGINT ;
 int SIGPIPE ;
 int SIGQUIT ;
 int SIGTERM ;
 int SIGTSTP ;
 int SIGUSR1 ;
 int SIGUSR2 ;
 int SIG_IGN ;
 int STDERR_FILENO ;
 int STDIN_FILENO ;
 int STDOUT_FILENO ;
 int S_IWOTH ;
 struct bundle* SignalBundle ;
 struct prompt* SignalPrompt ;
 int TUN_PREFIX ;
 int TerminalStop ;
 char* _PATH_DEVNULL ;
 char* _PATH_TTY ;
 int bundle_ChangedPID (struct bundle*) ;
 struct bundle* bundle_Create (int ,scalar_t__,int ) ;
 int bundle_LockTun (struct bundle*) ;
 int bundle_SetLabel (struct bundle*,char const*) ;
 int close (int) ;
 int dup (int) ;
 int errno ;
 char* ex_desc (int) ;
 int fork () ;
 int fprintf (int ,char*,char*) ;
 int la ;
 int log_Open (char*) ;
 int log_Printf (int ,char*,...) ;
 char* mode2Nam (scalar_t__) ;
 scalar_t__ ncprange_family (int *) ;
 int open (char*,int ) ;
 int opt_enable (struct bundle*,int ) ;
 scalar_t__ pipe (int*) ;
 int probe_Init () ;
 struct prompt* prompt_Create (int *,int *,int ) ;
 int prompt_Destroy (struct prompt*,int ) ;
 int prompt_Printf (struct prompt*,char*,...) ;
 int prompt_Required (struct prompt*) ;
 int prompt_TtyCommandMode (struct prompt*) ;
 int prompt_TtyInit (struct prompt*) ;
 int read (int,char*,int) ;
 int setsid () ;
 int sig_signal (int ,int ) ;
 int signal (int ,int ) ;
 int snprintf (char*,int,char*,char*,char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 int stderr ;
 char* strerror (int ) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;
 scalar_t__ system_Select (struct bundle*,char*,char*,struct prompt*,int *) ;

int
main(int argc, char **argv)
{
  char *name;
  const char *lastlabel;
  int arg, holdfd[3], label;
  unsigned f;
  struct bundle *bundle;
  struct prompt *prompt;
  struct switches sw;

  probe_Init();







  if ((holdfd[0] = open(_PATH_DEVNULL, O_RDWR)) == -1) {
    fprintf(stderr, "Cannot open %s !\n", _PATH_DEVNULL);
    return 2;
  }
  for (f = 1; f < sizeof holdfd / sizeof *holdfd; f++)
    holdfd[f] = dup(holdfd[0]);

  name = strrchr(argv[0], '/');
  log_Open(name ? name + 1 : argv[0]);


  la = LibAliasInit(((void*)0));

  label = ProcessArgs(argc, argv, &sw);
  if (sw.mode == PHYS_INTERACTIVE) {
    close(STDIN_FILENO);
    if (open(_PATH_TTY, O_RDONLY) != STDIN_FILENO) {
      fprintf(stderr, "Cannot open %s for input !\n", _PATH_TTY);
      return 2;
    }
  }


  if (sw.mode == PHYS_DIRECT)
    prompt = ((void*)0);
  else
    SignalPrompt = prompt = prompt_Create(((void*)0), ((void*)0), PROMPT_STD);

  ID0init();
  if (ID0realuid() != 0) {
    char conf[200], *ptr;

    snprintf(conf, sizeof conf, "%s/%s", PPP_CONFDIR, CONFFILE);
    do {
      struct stat sb;

      if (stat(conf, &sb) == 0 && sb.st_mode & S_IWOTH) {
        log_Printf(LogALERT, "ppp: Access violation: Please protect %s\n",
                   conf);
        return -1;
      }
      ptr = conf + strlen(conf)-2;
      while (ptr > conf && *ptr != '/')
        *ptr-- = '\0';
    } while (ptr >= conf);
  }

  if (label < argc)
    for (arg = label; arg < argc; arg++)
      CheckLabel(argv[arg], prompt, sw.mode);
  else
    CheckLabel("default", prompt, sw.mode);

  if (!sw.quiet)
    prompt_Printf(prompt, "Working in %s mode\n", mode2Nam(sw.mode));

  if ((bundle = bundle_Create(TUN_PREFIX, sw.mode, sw.unit)) == ((void*)0))
    return EX_START;



  SignalBundle = bundle;
  bundle->NatEnabled = sw.nat;
  if (sw.nat)
    opt_enable(bundle, OPT_IFACEALIAS);

  if (system_Select(bundle, "default", CONFFILE, prompt, ((void*)0)) < 0)
    prompt_Printf(prompt, "Warning: No default entry found in config file.\n");

  sig_signal(SIGHUP, CloseSession);
  sig_signal(SIGTERM, CloseSession);
  sig_signal(SIGINT, CloseConnection);
  sig_signal(SIGQUIT, CloseSession);
  sig_signal(SIGALRM, SIG_IGN);
  signal(SIGPIPE, SIG_IGN);

  if (sw.mode == PHYS_INTERACTIVE)
    sig_signal(SIGTSTP, TerminalStop);

  sig_signal(SIGUSR1, RestartServer);
  sig_signal(SIGUSR2, BringDownServer);

  lastlabel = argv[argc - 1];
  for (arg = label; arg < argc; arg++) {

    bundle_SetLabel(bundle, lastlabel);
    system_Select(bundle, argv[arg], CONFFILE, prompt, ((void*)0));
  }

  if (label < argc)

    bundle_SetLabel(bundle, lastlabel);

  if (sw.mode == PHYS_AUTO &&
      ncprange_family(&bundle->ncp.ipcp.cfg.peer_range) == AF_UNSPEC) {
    prompt_Printf(prompt, "You must ``set ifaddr'' with a peer address "
                  "in auto mode.\n");
    AbortProgram(EX_START);
  }

  if (prompt) {
    prompt->bundle = bundle;
    if (!sw.quiet)
      prompt_Printf(prompt, "Using interface: %s\n", bundle->iface->name);
  }

  if (sw.mode != PHYS_INTERACTIVE) {
    if (sw.mode != PHYS_DIRECT) {
      if (!sw.fg) {
        int bgpipe[2];
        pid_t bgpid;

        if (sw.mode == PHYS_BACKGROUND && pipe(bgpipe)) {
          log_Printf(LogERROR, "pipe: %s\n", strerror(errno));
   AbortProgram(EX_SOCK);
        }

        bgpid = fork();
        if (bgpid == -1) {
   log_Printf(LogERROR, "fork: %s\n", strerror(errno));
   AbortProgram(EX_SOCK);
        }

        if (bgpid) {
   char c = 130;
          int ret;

   if (sw.mode == PHYS_BACKGROUND) {
     close(bgpipe[1]);
     BGPid = bgpid;

            signal(SIGHUP, KillChild);
            signal(SIGTERM, KillChild);
            signal(SIGINT, KillChild);
            signal(SIGQUIT, KillChild);


            while ((ret = read(bgpipe[0], &c, 1)) == 1) {
              switch (c) {
                case 130:
                  if (!sw.quiet) {
             prompt_Printf(prompt, "PPP enabled\n");
             log_Printf(LogPHASE, "Parent: PPP enabled\n");
                  }
           break;
                case 128:
                  if (!sw.quiet)
             prompt_Printf(prompt, "Attempting redial\n");
                  continue;
                case 129:
                  if (!sw.quiet)
             prompt_Printf(prompt, "Attempting reconnect\n");
                  continue;
         default:
           prompt_Printf(prompt, "Child failed (%s)\n",
                                ex_desc((int)c));
           log_Printf(LogPHASE, "Parent: Child failed (%s)\n",
               ex_desc((int) c));
       }
       break;
            }
            if (ret != 1) {
       prompt_Printf(prompt, "Child exit, no status.\n");
       log_Printf(LogPHASE, "Parent: Child exit, no status.\n");
     }
     close(bgpipe[0]);
   }
   return c;
        } else if (sw.mode == PHYS_BACKGROUND) {
   close(bgpipe[0]);
          bundle->notify.fd = bgpipe[1];
        }

        bundle_ChangedPID(bundle);
        bundle_LockTun(bundle);
      }


      prompt_Destroy(prompt, 0);
      close(STDOUT_FILENO);
      close(STDERR_FILENO);
      close(STDIN_FILENO);
      if (!sw.fg)
        setsid();
    } else {




      prompt_TtyInit(((void*)0));
      close(STDERR_FILENO);
    }
  } else {

    close(STDERR_FILENO);
    prompt_TtyInit(prompt);
    prompt_TtyCommandMode(prompt);
    prompt_Required(prompt);
  }


  for (f = 0; f < sizeof holdfd / sizeof *holdfd; f++)
    close(holdfd[f]);

  log_Printf(LogPHASE, "PPP Started (%s mode).\n", mode2Nam(sw.mode));
  DoLoop(bundle);
  AbortProgram(130);

  return 130;
}
