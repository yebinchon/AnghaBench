
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tdfx_softc {int mrdesc; } ;
typedef int device_t ;


 int MEMRANGE_SET_REMOVE ;
 struct tdfx_softc* device_get_softc (int ) ;
 int mem_range_attr_set (int *,int*) ;

__attribute__((used)) static int
tdfx_clrmtrr(device_t dev) {



 int retval, act;
 struct tdfx_softc *tdfx_info = device_get_softc(dev);

 act = MEMRANGE_SET_REMOVE;
 retval = mem_range_attr_set(&tdfx_info->mrdesc, &act);
 return retval;
}
