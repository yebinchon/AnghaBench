
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int BUS_PROBE_DEFAULT ;

__attribute__((used)) static int
iic_dp_aux_probe(device_t idev)
{

 return (BUS_PROBE_DEFAULT);
}
