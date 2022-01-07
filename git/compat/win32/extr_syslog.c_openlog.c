
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetLastError () ;
 scalar_t__ RegisterEventSourceA (int *,char const*) ;
 scalar_t__ ms_eventlog ;
 int warning (char*,int ) ;

void openlog(const char *ident, int logopt, int facility)
{
 if (ms_eventlog)
  return;

 ms_eventlog = RegisterEventSourceA(((void*)0), ident);

 if (!ms_eventlog)
  warning("RegisterEventSource() failed: %lu", GetLastError());
}
