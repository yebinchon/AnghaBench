
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int etherswitch_info_t ;
typedef int device_t ;


 int etherswitch_info ;

__attribute__((used)) static etherswitch_info_t*
e6000sw_getinfo(device_t dev)
{

 return (&etherswitch_info);
}
