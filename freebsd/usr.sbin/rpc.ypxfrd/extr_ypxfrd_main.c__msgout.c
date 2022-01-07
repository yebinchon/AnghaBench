
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 scalar_t__ _rpcpmstart ;
 int syslog (int ,char*,char*) ;
 int warnx (char*,char*) ;

__attribute__((used)) static void
_msgout(char *msg)
{






 syslog(LOG_ERR, "%s", msg);

}
