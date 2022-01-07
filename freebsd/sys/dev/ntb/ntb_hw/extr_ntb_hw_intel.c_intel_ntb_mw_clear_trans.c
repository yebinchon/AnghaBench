
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int intel_ntb_mw_set_trans (int ,unsigned int,int ,int ) ;

__attribute__((used)) static int
intel_ntb_mw_clear_trans(device_t dev, unsigned mw_idx)
{

 return (intel_ntb_mw_set_trans(dev, mw_idx, 0, 0));
}
