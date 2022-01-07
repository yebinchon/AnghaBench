
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,int,char*,int) ;

const char *
ex_desc(int ex)
{
  static char num[12];
  static const char * const desc[] = {
    "normal", "start", "sock", "modem", "dial", "dead", "done",
    "reboot", "errdead", "hangup", "term", "nodial", "nologin",
    "redial", "reconnect"
  };

  if (ex >= 0 && ex < (int)(sizeof desc / sizeof *desc))
    return desc[ex];
  snprintf(num, sizeof num, "%d", ex);
  return num;
}
