
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* do_malloc (unsigned int) ;

__attribute__((used)) static char *
copy(const char *str, unsigned int len)
{
 char *new, *sp;

 new = do_malloc(len + 1);
 sp = new;
 do {
  *sp++ = *str;
 } while (*str++);

 return (new);
}
