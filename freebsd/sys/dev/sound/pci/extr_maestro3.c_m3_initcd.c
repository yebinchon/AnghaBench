
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sc_info {int dummy; } ;
typedef int kobj_t ;


 int CALL ;
 int CODEC_COMMAND ;
 int M3_DEBUG (int ,char*) ;
 int m3_rd_1 (struct sc_info*,int ) ;

__attribute__((used)) static u_int32_t
m3_initcd(kobj_t kobj, void *devinfo)
{
 struct sc_info *sc = (struct sc_info *)devinfo;
 u_int32_t data;

 M3_DEBUG(CALL, ("m3_initcd\n"));



 data = m3_rd_1(sc, CODEC_COMMAND);
 return ((data & 0x1) ? 0 : 1);
}
