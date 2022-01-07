
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vifi_t ;


 int VIF_LOCK () ;
 int VIF_UNLOCK () ;
 int del_vif_locked (int ) ;

__attribute__((used)) static int
del_vif(vifi_t vifi)
{
    int cc;

    VIF_LOCK();
    cc = del_vif_locked(vifi);
    VIF_UNLOCK();

    return cc;
}
