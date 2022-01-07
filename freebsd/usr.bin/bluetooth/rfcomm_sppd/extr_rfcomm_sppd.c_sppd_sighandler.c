
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_INFO ;
 int done ;
 int syslog (int ,char*,int,int ) ;

__attribute__((used)) static void
sppd_sighandler(int s)
{
 syslog(LOG_INFO, "Signal %d received. Total %d signals received\n",
   s, ++ done);
}
