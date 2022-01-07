
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isspace (unsigned char) ;

__attribute__((used)) static int remove_space(char *line)
{
 char *src = line;
 char *dst = line;
 unsigned char c;

 while ((c = *src++) != '\0') {
  if (!isspace(c))
   *dst++ = c;
 }
 return dst - line;
}
