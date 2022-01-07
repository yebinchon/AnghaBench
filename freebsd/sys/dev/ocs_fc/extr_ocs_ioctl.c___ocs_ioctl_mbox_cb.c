
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ocs_softc {int dbg_lock; } ;
typedef int ocs_hw_t ;
typedef int int32_t ;


 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int wakeup (void*) ;

__attribute__((used)) static int32_t
__ocs_ioctl_mbox_cb(ocs_hw_t *hw, int32_t status, uint8_t *mqe, void *arg)
{
 struct ocs_softc *ocs = arg;


 mtx_lock(&ocs->dbg_lock);

 mtx_unlock(&ocs->dbg_lock);

 wakeup(arg);

 return 0;
}
