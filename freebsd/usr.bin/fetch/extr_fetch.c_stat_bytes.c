
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int off_t ;


 char* prefixes ;
 int snprintf (char*,size_t,char*,int ,char const) ;

__attribute__((used)) static void
stat_bytes(char *str, size_t strsz, off_t bytes)
{
 const char *prefix = prefixes;

 while (bytes > 9999 && prefix[1] != '\0') {
  bytes /= 1024;
  prefix++;
 }
 snprintf(str, strsz, "%4ju %cB", (uintmax_t)bytes, *prefix);
}
