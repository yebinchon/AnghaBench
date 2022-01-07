
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef enum ib_mtu { ____Placeholder_ib_mtu } ib_mtu ;


 int IB_MTU_1024 ;
 int IB_MTU_2048 ;
 int IB_MTU_256 ;
 int IB_MTU_4096 ;
 int IB_MTU_512 ;

__attribute__((used)) static enum ib_mtu
qlnxr_mtu_int_to_enum(u16 mtu)
{
 enum ib_mtu ib_mtu_size;

 switch (mtu) {
 case 256:
  ib_mtu_size = IB_MTU_256;
  break;

 case 512:
  ib_mtu_size = IB_MTU_512;
  break;

 case 1024:
  ib_mtu_size = IB_MTU_1024;
  break;

 case 2048:
  ib_mtu_size = IB_MTU_2048;
  break;

 case 4096:
  ib_mtu_size = IB_MTU_4096;
  break;

 default:
  ib_mtu_size = IB_MTU_1024;
  break;
 }
 return (ib_mtu_size);
}
