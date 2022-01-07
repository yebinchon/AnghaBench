
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ device_t ;


 int FILTER_HANDLED ;
 int KDB_WHY_POWERPC ;
 int device_get_nameunit (scalar_t__) ;
 int kdb_enter (int ,int ) ;

__attribute__((used)) static int
pswitch_intr(void *arg)
{
 device_t dev;

 dev = (device_t)arg;

 kdb_enter(KDB_WHY_POWERPC, device_get_nameunit(dev));
 return (FILTER_HANDLED);
}
