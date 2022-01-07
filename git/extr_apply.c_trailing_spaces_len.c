
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static size_t trailing_spaces_len(const char *line, size_t len)
{
 const char *p;


 if (!len || line[len - 1] != ' ')
  return 0;

 p = line + len;
 while (p != line) {
  p--;
  if (*p != ' ')
   return line + len - (p + 1);
 }


 return len;
}
