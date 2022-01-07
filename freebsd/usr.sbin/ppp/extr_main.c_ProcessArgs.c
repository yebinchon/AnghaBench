
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switches {int mode; int unit; int nat; int quiet; int fg; } ;


 int EX_START ;
 int LogWARN ;
 int Nam2mode (char*) ;

 scalar_t__ PHYS_AUTO ;
 int PHYS_FOREGROUND ;
 int PHYS_INTERACTIVE ;

 int Usage () ;
 void* atoi (char*) ;
 int exit (int ) ;
 int fprintf (int ,char*,...) ;
 int log_Printf (int ,char*,char*) ;
 int memset (struct switches*,char,int) ;
 int stderr ;
 int strcmp (char*,char*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static int
ProcessArgs(int argc, char **argv, struct switches *sw)
{
  int optc, newmode, arg;
  char *cp;

  optc = 0;
  memset(sw, '\0', sizeof *sw);
  sw->mode = PHYS_INTERACTIVE;
  sw->unit = -1;

  for (arg = 1; arg < argc && *argv[arg] == '-'; arg++, optc++) {
    cp = argv[arg] + 1;
    newmode = Nam2mode(cp);
    switch (newmode) {
      case 128:
        if (strcmp(cp, "nat") == 0) {



          sw->nat = 1;

          optc--;
        } else if (strcmp(cp, "alias") == 0) {




          log_Printf(LogWARN, "%s is deprecated\n", argv[arg]);
          fprintf(stderr, "%s is deprecated\n", argv[arg]);
          sw->nat = 1;

          optc--;
        } else if (strncmp(cp, "unit", 4) == 0) {
          optc--;
          if (cp[4] == '\0') {
            optc--;
            if (++arg == argc) {
              fprintf(stderr, "-unit: Expected unit number\n");
              Usage();
            } else
              sw->unit = atoi(argv[arg]);
          } else
            sw->unit = atoi(cp + 4);
        } else if (strcmp(cp, "quiet") == 0) {
          sw->quiet = 1;
          optc--;
        } else
          Usage();
        break;

      case 129:
        Usage();
        break;

      default:
        sw->mode = newmode;
        if (newmode == PHYS_FOREGROUND)
          sw->fg = 1;
    }
  }

  if (optc > 1) {
    fprintf(stderr, "You may specify only one mode.\n");
    exit(EX_START);
  }

  if (sw->mode == PHYS_AUTO && arg == argc) {
    fprintf(stderr, "A system must be specified in auto mode.\n");
    exit(EX_START);
  }

  return arg;
}
