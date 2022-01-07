
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,size_t,char*,...) ;

__attribute__((used)) static void
setoid(char oid[], size_t oidlen, const char *wlan)
{

 if (wlan)
  snprintf(oid, oidlen, "net.%s.debug", wlan);
}
