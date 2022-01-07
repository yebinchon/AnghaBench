
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strstr (char const*,char const*) ;

__attribute__((used)) static bool
disk_match(const char *devnames, const char *disk, size_t len)
{
 const char *dname;

 dname = devnames;
 while ((dname = strstr(dname, disk)) != ((void*)0)) {
  if (dname[len] == '\0' || dname[len] == ',') {
   return (1);
  }
  dname++;
 }

 return (0);
}
