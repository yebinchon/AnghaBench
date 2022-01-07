
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int done ;
 int syslog (int ,char*,int,int ) ;

__attribute__((used)) static void
sigint(int s)
{
 syslog(LOG_DEBUG, "Got signal %d, total number of signals %d",
   s, ++ done);
}
