
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* hwreset_t ;
struct TYPE_3__ {int rst_id; int provider_dev; } ;


 int HWRESET_IS_ASSERTED (int ,int ,int*) ;

int
hwreset_is_asserted(hwreset_t rst, bool *value)
{

 return (HWRESET_IS_ASSERTED(rst->provider_dev, rst->rst_id, value));
}
