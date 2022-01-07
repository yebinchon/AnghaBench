
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int drv_t ;


 int CP_DEBUG (int *,char*) ;

__attribute__((used)) static void cp_initialize (void *softc)
{
 drv_t *d = softc;

 CP_DEBUG (d, ("cp_initialize\n"));
}
