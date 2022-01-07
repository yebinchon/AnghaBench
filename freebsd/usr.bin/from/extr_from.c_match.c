
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;
 char tolower (char const) ;

__attribute__((used)) static int
match(const char *line, const char *sender)
{
 char ch, pch, first;
 const char *p, *t;

 for (first = *sender++;;) {
  if (isspace(ch = *line))
   return(0);
  ++line;
  ch = tolower(ch);
  if (ch != first)
   continue;
  for (p = sender, t = line;;) {
   if (!(pch = *p++))
    return(1);
   ch = tolower(*t);
   t++;
   if (ch != pch)
    break;
  }
 }

}
