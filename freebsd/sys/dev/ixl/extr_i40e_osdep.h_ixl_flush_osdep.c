
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i40e_osdep {int flush_reg; } ;


 int rd32_osdep (struct i40e_osdep*,int ) ;

__attribute__((used)) static __inline void
ixl_flush_osdep(struct i40e_osdep *osdep)
{
 rd32_osdep(osdep, osdep->flush_reg);
}
