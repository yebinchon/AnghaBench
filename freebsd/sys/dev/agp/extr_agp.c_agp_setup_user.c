
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int device_t ;
struct TYPE_3__ {int agp_mode; } ;
typedef TYPE_1__ agp_setup ;


 int AGP_ENABLE (int ,int ) ;

__attribute__((used)) static int
agp_setup_user(device_t dev, agp_setup *setup)
{
 return AGP_ENABLE(dev, setup->agp_mode);
}
