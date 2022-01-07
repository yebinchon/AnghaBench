
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int drv_t ;


 int CX_DEBUG (int *,char*) ;

__attribute__((used)) static void cx_initialize (void *softc)
{
 drv_t *d = softc;

 CX_DEBUG (d, ("cx_initialize\n"));
}
