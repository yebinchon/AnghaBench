
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int oid ;


 size_t IFNAMSIZ ;
 int snprintf (char*,int,char*,char const*) ;
 scalar_t__ sysctlbyname (char*,char*,size_t*,int *,int ) ;

__attribute__((used)) static int
getparent(const char *ifname, char parent[IFNAMSIZ+1])
{
 char oid[256];
 size_t parentlen;


 snprintf(oid, sizeof(oid), "net.wlan.%s.%%parent", ifname+4);
 parentlen = IFNAMSIZ;
 if (sysctlbyname(oid, parent, &parentlen, ((void*)0), 0) < 0)
  return -1;
 parent[parentlen] = '\0';
 return 0;
}
