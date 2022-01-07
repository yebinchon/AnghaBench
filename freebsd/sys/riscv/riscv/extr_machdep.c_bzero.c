
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



void
bzero(void *buf, size_t len)
{
 uint8_t *p;

 p = buf;
 while(len-- > 0)
  *p++ = 0;
}
