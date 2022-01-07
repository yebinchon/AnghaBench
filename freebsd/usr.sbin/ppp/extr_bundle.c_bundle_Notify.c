
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;
struct bundle {TYPE_1__ notify; } ;


 char EX_NORMAL ;
 char EX_RECONNECT ;
 char EX_REDIAL ;
 int LogCHAT ;
 int LogERROR ;
 int close (int) ;
 char* ex_desc (char) ;
 int log_Printf (int ,char*,...) ;
 int write (int,char*,int) ;

void
bundle_Notify(struct bundle *bundle, char c)
{
  if (bundle->notify.fd != -1) {
    int ret;

    ret = write(bundle->notify.fd, &c, 1);
    if (c != EX_REDIAL && c != EX_RECONNECT) {
      if (ret == 1)
        log_Printf(LogCHAT, "Parent notified of %s\n",
                   c == EX_NORMAL ? "success" : "failure");
      else
        log_Printf(LogERROR, "Failed to notify parent of success\n");
      close(bundle->notify.fd);
      bundle->notify.fd = -1;
    } else if (ret == 1)
      log_Printf(LogCHAT, "Parent notified of %s\n", ex_desc(c));
    else
      log_Printf(LogERROR, "Failed to notify parent of %s\n", ex_desc(c));
  }
}
