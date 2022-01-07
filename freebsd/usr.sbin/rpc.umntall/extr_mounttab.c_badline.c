
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 int syslog (int ,char*,char const*,char*) ;

__attribute__((used)) static void
badline(const char *field, const char *bad)
{
 syslog(LOG_ERR, "bad mounttab %s field '%s'", field,
     (bad == ((void*)0)) ? "<null>" : bad);
}
