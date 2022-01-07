
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int write (int,int *,size_t) ;

void
bindump(uint8_t *data, size_t datalen)
{
 write(1, data, datalen);
}
