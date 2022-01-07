
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int LOG_NOTICE ;
 int done ;
 int syslog (int ,char*,int ,int ) ;

__attribute__((used)) static void
sighandler(int32_t s)
{
 syslog(LOG_NOTICE, "Got signal %d, total number of signals %d",
  s, ++ done);
}
