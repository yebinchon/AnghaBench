
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prompt {int dummy; } ;
struct datalink {int dummy; } ;
struct bundle {int dummy; } ;


 int Commands ;
 int FindExec (struct bundle*,int ,int,int ,char const* const*,struct prompt*,struct datalink*) ;
 int LINE_LEN ;
 int LogCOMMAND ;
 scalar_t__ arghidden (char const* const*,int) ;
 scalar_t__ log_IsKept (int ) ;
 int log_Printf (int ,char*,char*) ;
 int strcat (char*,char*) ;
 size_t strlen (char*) ;
 int strncpy (char*,char const* const,int) ;

void
command_Run(struct bundle *bundle, int argc, char const *const *argv,
           struct prompt *prompt, const char *label, struct datalink *cx)
{
  if (argc > 0) {
    if (log_IsKept(LogCOMMAND)) {
      char buf[LINE_LEN];
      int f;
      size_t n;

      if (label) {
        strncpy(buf, label, sizeof buf - 3);
        buf[sizeof buf - 3] = '\0';
        strcat(buf, ": ");
        n = strlen(buf);
      } else {
        *buf = '\0';
        n = 0;
      }
      buf[sizeof buf - 1] = '\0';

      for (f = 0; f < argc; f++) {
        if (n < sizeof buf - 1 && f)
          buf[n++] = ' ';
        if (arghidden(argv, f))
          strncpy(buf+n, "********", sizeof buf - n - 1);
        else
          strncpy(buf+n, argv[f], sizeof buf - n - 1);
        n += strlen(buf+n);
      }
      log_Printf(LogCOMMAND, "%s\n", buf);
    }
    FindExec(bundle, Commands, argc, 0, argv, prompt, cx);
  }
}
