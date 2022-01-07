
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
typedef int device_t ;


 int PCIB_READ_CONFIG (int ,int ,int ,int ,int ,int) ;
 int device_get_parent (int ) ;

__attribute__((used)) static uint32_t
cbb_read_config(device_t brdev, u_int b, u_int s, u_int f, u_int reg, int width)
{



 return (PCIB_READ_CONFIG(device_get_parent(device_get_parent(brdev)),
     b, s, f, reg, width));
}
