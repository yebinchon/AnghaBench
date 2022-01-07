
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skip_range {void* end; void* start; } ;


 int atoi (char*) ;
 char* strsep (char**,char*) ;
 void* strtoul (char*,int ,int) ;

__attribute__((used)) static struct skip_range
skip_get_range(char *skip_addr)
{
 struct skip_range addr_range;
 char *token;

 addr_range.start = 0;
 addr_range.end = 0;

 token = strsep(&skip_addr, "..");
 if (token) {
  addr_range.start = strtoul(token, 0, 16);
  token = strsep(&skip_addr, "..");
  if ((token != ((void*)0)) && !atoi(token)) {
   token = strsep(&skip_addr, "..");
   if (token)
    addr_range.end = strtoul(token, 0, 16);
  }
 }

 return (addr_range);
}
