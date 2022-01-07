
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int server_capabilities_v1 ;
 int strlen (char const*) ;
 int xstrdup (char const*) ;

__attribute__((used)) static void process_capabilities(const char *line, int *len)
{
 int nul_location = strlen(line);
 if (nul_location == *len)
  return;
 server_capabilities_v1 = xstrdup(line + nul_location + 1);
 *len = nul_location;
}
