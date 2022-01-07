
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (size_t) ;
 char rdigit () ;

__attribute__((used)) static char *
alloc_buffer(size_t len)
{
 char *buf;
 size_t i;

 buf = malloc(len);
 for (i = 0; i < len; i++)
  buf[i] = rdigit();
 return (buf);
}
