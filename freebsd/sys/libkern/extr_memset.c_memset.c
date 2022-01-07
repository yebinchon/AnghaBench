
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void *
(memset)(void *b, int c, size_t len)
{
 char *bb;

 for (bb = (char *)b; len--; )
  *bb++ = c;
 return (b);
}
