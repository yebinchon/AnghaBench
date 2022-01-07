
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int device_t ;


 int CARD_SET_RES_FLAGS (int ,int ,int,int,int ) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
pccard_set_res_flags(device_t dev, device_t child, int type, int rid,
    u_long flags)
{
 return (CARD_SET_RES_FLAGS(device_get_parent(dev), child, type,
     rid, flags));
}
