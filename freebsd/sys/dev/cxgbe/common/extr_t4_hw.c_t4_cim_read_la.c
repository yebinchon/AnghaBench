
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef unsigned int u32 ;
struct TYPE_2__ {int cim_la_size; } ;
struct adapter {TYPE_1__ params; } ;


 int A_UP_UP_DBG_LA_CFG ;
 int A_UP_UP_DBG_LA_DATA ;
 int ETIMEDOUT ;
 unsigned int F_UPDBGLAEN ;
 unsigned int F_UPDBGLARDEN ;
 unsigned int G_UPDBGLAWRPTR (unsigned int) ;
 unsigned int M_UPDBGLARDPTR ;
 unsigned int V_UPDBGLARDPTR (unsigned int) ;
 scalar_t__ is_t6 (struct adapter*) ;
 int t4_cim_read (struct adapter*,int ,int,unsigned int*) ;
 int t4_cim_write1 (struct adapter*,int ,unsigned int) ;

int t4_cim_read_la(struct adapter *adap, u32 *la_buf, unsigned int *wrptr)
{
 int i, ret;
 unsigned int cfg, val, idx;

 ret = t4_cim_read(adap, A_UP_UP_DBG_LA_CFG, 1, &cfg);
 if (ret)
  return ret;

 if (cfg & F_UPDBGLAEN) {
  ret = t4_cim_write1(adap, A_UP_UP_DBG_LA_CFG, 0);
  if (ret)
   return ret;
 }

 ret = t4_cim_read(adap, A_UP_UP_DBG_LA_CFG, 1, &val);
 if (ret)
  goto restart;

 idx = G_UPDBGLAWRPTR(val);
 if (wrptr)
  *wrptr = idx;

 for (i = 0; i < adap->params.cim_la_size; i++) {
  ret = t4_cim_write1(adap, A_UP_UP_DBG_LA_CFG,
        V_UPDBGLARDPTR(idx) | F_UPDBGLARDEN);
  if (ret)
   break;
  ret = t4_cim_read(adap, A_UP_UP_DBG_LA_CFG, 1, &val);
  if (ret)
   break;
  if (val & F_UPDBGLARDEN) {
   ret = -ETIMEDOUT;
   break;
  }
  ret = t4_cim_read(adap, A_UP_UP_DBG_LA_DATA, 1, &la_buf[i]);
  if (ret)
   break;


  idx = (idx + 1) & M_UPDBGLARDPTR;




  if (is_t6(adap))
   while ((idx & 0xf) > 9)
    idx = (idx + 1) % M_UPDBGLARDPTR;
 }
restart:
 if (cfg & F_UPDBGLAEN) {
  int r = t4_cim_write1(adap, A_UP_UP_DBG_LA_CFG,
          cfg & ~F_UPDBGLARDEN);
  if (!ret)
   ret = r;
 }
 return ret;
}
