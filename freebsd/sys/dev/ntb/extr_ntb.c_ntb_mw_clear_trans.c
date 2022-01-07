
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_child {unsigned int mwoff; } ;
typedef int device_t ;


 int NTB_MW_CLEAR_TRANS (int ,unsigned int) ;
 struct ntb_child* device_get_ivars (int ) ;
 int device_get_parent (int ) ;

int
ntb_mw_clear_trans(device_t ntb, unsigned mw_idx)
{
 struct ntb_child *nc = device_get_ivars(ntb);

 return (NTB_MW_CLEAR_TRANS(device_get_parent(ntb), mw_idx + nc->mwoff));
}
