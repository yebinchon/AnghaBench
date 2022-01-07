
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_child {unsigned int spadcnt; scalar_t__ spadoff; } ;
typedef int device_t ;


 int NTB_SPAD_WRITE (int ,scalar_t__,int ) ;
 struct ntb_child* device_get_ivars (int ) ;
 int device_get_parent (int ) ;

void
ntb_spad_clear(device_t ntb)
{
 struct ntb_child *nc = device_get_ivars(ntb);
 unsigned i;

 for (i = 0; i < nc->spadcnt; i++)
  NTB_SPAD_WRITE(device_get_parent(ntb), i + nc->spadoff, 0);
}
