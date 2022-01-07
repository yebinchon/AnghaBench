
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;



__attribute__((used)) static size_t
indent_length(const wchar_t *line, size_t length)
{
 size_t n = 0;

 while (n < length && *line++ == ' ')
  ++n;
 return n;
}
