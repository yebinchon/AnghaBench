
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memmove (char*,char*,int) ;
 char* strchr (char*,char) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static char *host_end(char **hoststart, int removebrackets)
{
 char *host = *hoststart;
 char *end;
 char *start = strstr(host, "@[");
 if (start)
  start++;
 else
  start = host;
 if (start[0] == '[') {
  end = strchr(start + 1, ']');
  if (end) {
   if (removebrackets) {
    *end = 0;
    memmove(start, start + 1, end - start);
    end++;
   }
  } else
   end = host;
 } else
  end = host;
 return end;
}
