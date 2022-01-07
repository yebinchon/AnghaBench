
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fha_params {int dummy; } ;


 int fha_uninit (struct fha_params*) ;
 struct fha_params fhanew_softc ;

__attribute__((used)) static void
fhanew_uninit(void *foo)
{
 struct fha_params *softc;

 softc = &fhanew_softc;

 fha_uninit(softc);
}
