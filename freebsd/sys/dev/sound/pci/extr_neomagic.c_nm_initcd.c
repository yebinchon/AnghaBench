
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dummy; } ;
typedef int kobj_t ;


 int nm_wr (struct sc_info*,int,int,int) ;

__attribute__((used)) static u_int32_t
nm_initcd(kobj_t obj, void *devinfo)
{
 struct sc_info *sc = (struct sc_info *)devinfo;

 nm_wr(sc, 0x6c0, 0x01, 1);
 nm_wr(sc, 0x6cc, 0x80, 1);
 nm_wr(sc, 0x6cc, 0x00, 1);
 return 1;
}
