
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct amd_ntb_softc {TYPE_1__* hw_info; } ;
typedef int device_t ;
struct TYPE_2__ {int mw_count; } ;


 struct amd_ntb_softc* device_get_softc (int ) ;

__attribute__((used)) static uint8_t
amd_ntb_mw_count(device_t dev)
{
 struct amd_ntb_softc *ntb = device_get_softc(dev);

 return (ntb->hw_info->mw_count);
}
