
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isdigit (char const) ;
 scalar_t__ memcmp (char*,char const*,int) ;
 int strtol (char const*,int *,int) ;

__attribute__((used)) static int is_from_line(const char *line, int len)
{
 const char *colon;

 if (len < 20 || memcmp("From ", line, 5))
  return 0;

 colon = line + len - 2;
 line += 5;
 for (;;) {
  if (colon < line)
   return 0;
  if (*--colon == ':')
   break;
 }

 if (!isdigit(colon[-4]) ||
     !isdigit(colon[-2]) ||
     !isdigit(colon[-1]) ||
     !isdigit(colon[ 1]) ||
     !isdigit(colon[ 2]))
  return 0;


 if (strtol(colon+3, ((void*)0), 10) <= 90)
  return 0;


 return 1;
}
