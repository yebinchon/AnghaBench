
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long linelen(const char *buffer, unsigned long size)
{
 unsigned long len = 0;
 while (size--) {
  len++;
  if (*buffer++ == '\n')
   break;
 }
 return len;
}
