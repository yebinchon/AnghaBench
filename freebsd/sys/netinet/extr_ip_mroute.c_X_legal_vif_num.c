
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int VIF_LOCK () ;
 int VIF_UNLOCK () ;
 int V_numvifs ;

__attribute__((used)) static int
X_legal_vif_num(int vif)
{
 int ret;

 ret = 0;
 if (vif < 0)
  return (ret);

 VIF_LOCK();
 if (vif < V_numvifs)
  ret = 1;
 VIF_UNLOCK();

 return (ret);
}
