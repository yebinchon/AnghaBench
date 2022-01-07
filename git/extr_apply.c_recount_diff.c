
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fragment {int oldlines; int newlines; } ;


 int _ (char*) ;
 int linelen (char const*,int) ;
 int starts_with (char const*,char*) ;
 int warning (char*,...) ;

__attribute__((used)) static void recount_diff(const char *line, int size, struct fragment *fragment)
{
 int oldlines = 0, newlines = 0, ret = 0;

 if (size < 1) {
  warning("recount: ignore empty hunk");
  return;
 }

 for (;;) {
  int len = linelen(line, size);
  size -= len;
  line += len;

  if (size < 1)
   break;

  switch (*line) {
  case ' ': case '\n':
   newlines++;

  case '-':
   oldlines++;
   continue;
  case '+':
   newlines++;
   continue;
  case '\\':
   continue;
  case '@':
   ret = size < 3 || !starts_with(line, "@@ ");
   break;
  case 'd':
   ret = size < 5 || !starts_with(line, "diff ");
   break;
  default:
   ret = -1;
   break;
  }
  if (ret) {
   warning(_("recount: unexpected line: %.*s"),
    (int)linelen(line, size), line);
   return;
  }
  break;
 }
 fragment->oldlines = oldlines;
 fragment->newlines = newlines;
}
