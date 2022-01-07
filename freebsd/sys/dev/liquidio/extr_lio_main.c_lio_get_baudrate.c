
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct octeon_device {int subdevice_id; } ;


 int IF_Gbps (int) ;






__attribute__((used)) static uint64_t
lio_get_baudrate(struct octeon_device *oct)
{

 switch(oct->subdevice_id) {
 case 132:
 case 131:
 case 129:
  return (IF_Gbps(10));

 case 130:
 case 128:
  return (IF_Gbps(25));
 }

 return (IF_Gbps(10));
}
