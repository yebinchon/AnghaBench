
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int debuglog (char*,...) ;
 int do_clear (char const*) ;
 int siglock () ;
 int sigunlock () ;

void
notify(const char *hostname, const int state)
{
 debuglog("notify from %s, new state %d", hostname, state);

 siglock();
 do_clear(hostname);
 sigunlock();

 debuglog("Leaving notify\n");
}
