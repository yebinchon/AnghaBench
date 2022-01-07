
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct fw_eui64 {int lo; int hi; } ;
struct eui64 {int * octet; } ;


 int htonl (int ) ;

__attribute__((used)) static void
fweui2eui64(const struct fw_eui64 *fweui, struct eui64 *eui)
{
 *(u_int32_t*)&(eui->octet[0]) = htonl(fweui->hi);
 *(u_int32_t*)&(eui->octet[4]) = htonl(fweui->lo);
}
