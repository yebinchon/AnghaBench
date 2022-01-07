
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 char* malloc (int) ;

__attribute__((used)) static char *
prepare_buf(int size, uint32_t off)
{
 char *buf;

 buf = malloc(size);
 if (buf == ((void*)0))
  return (buf);

 if (size == 1)
  buf[0] = off & 0xff;
 else if (size == 2) {
  buf[0] = (off >> 8) & 0xff;
  buf[1] = off & 0xff;
 }

 return (buf);
}
