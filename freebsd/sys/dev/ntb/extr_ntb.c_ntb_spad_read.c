
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ntb_child {scalar_t__ spadoff; } ;
typedef int device_t ;


 int NTB_SPAD_READ (int ,scalar_t__,int *) ;
 struct ntb_child* device_get_ivars (int ) ;
 int device_get_parent (int ) ;

int
ntb_spad_read(device_t ntb, unsigned int idx, uint32_t *val)
{
 struct ntb_child *nc = device_get_ivars(ntb);

 return (NTB_SPAD_READ(device_get_parent(ntb), idx + nc->spadoff, val));
}
