
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct smbios_eps {int length; } ;



__attribute__((used)) static int
smbios_cksum (struct smbios_eps *e)
{
 u_int8_t *ptr;
 u_int8_t cksum;
 int i;

 ptr = (u_int8_t *)e;
 cksum = 0;
 for (i = 0; i < e->length; i++) {
  cksum += ptr[i];
 }

 return (cksum);
}
