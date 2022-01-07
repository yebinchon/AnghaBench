
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct i40e_hw {int dummy; } ;
struct ixl_pf {int dev; struct i40e_hw hw; } ;
typedef int device_t ;


 int device_printf (int ,char*,int ) ;
 int ixl_nvm_version_str (struct i40e_hw*,struct sbuf*) ;
 int sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 struct sbuf* sbuf_new_auto () ;

void
ixl_print_nvm_version(struct ixl_pf *pf)
{
 struct i40e_hw *hw = &pf->hw;
 device_t dev = pf->dev;
 struct sbuf *sbuf;

 sbuf = sbuf_new_auto();
 ixl_nvm_version_str(hw, sbuf);
 sbuf_finish(sbuf);
 device_printf(dev, "%s\n", sbuf_data(sbuf));
 sbuf_delete(sbuf);
}
