
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;



 int TUNABLE_INT_FETCH (char*,int *) ;
 int drm_debug ;
 int drm_notyet ;

__attribute__((used)) static int
drm_modevent(module_t mod, int type, void *data)
{

 switch (type) {
 case 128:
  TUNABLE_INT_FETCH("drm.debug", &drm_debug);
  TUNABLE_INT_FETCH("drm.notyet", &drm_notyet);
  break;
 }
 return (0);
}
