
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;
typedef int ao ;


 int memcpy (void*,int*,int) ;
 int pf_cksum_fixup (int ,int,int,int ) ;

void
pf_change_a(void *a, u_int16_t *c, u_int32_t an, u_int8_t u)
{
 u_int32_t ao;

 memcpy(&ao, a, sizeof(ao));
 memcpy(a, &an, sizeof(u_int32_t));
 *c = pf_cksum_fixup(pf_cksum_fixup(*c, ao / 65536, an / 65536, u),
     ao % 65536, an % 65536, u);
}
