
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void *
memchr(const void *s, int c, size_t n)
{
 if (n != 0) {
  const unsigned char *p = s;

  do {
   if (*p++ == (unsigned char)c)
    return ((void *)(uintptr_t)(p - 1));
  } while (--n != 0);
 }
 return (((void*)0));
}
