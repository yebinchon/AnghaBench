
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twe_softc {int dummy; } ;


 int EIO ;
 int TWE_PARAM_AEN ;
 int TWE_PARAM_AEN_UnitCode ;
 int debug_called (int) ;
 int * twe_get_param (struct twe_softc*,int ,int ,int,int ) ;
 int twe_handle_aen ;

__attribute__((used)) static int
twe_fetch_aen(struct twe_softc *sc)
{

    debug_called(4);

    if ((twe_get_param(sc, TWE_PARAM_AEN, TWE_PARAM_AEN_UnitCode, 2, twe_handle_aen)) == ((void*)0))
 return(EIO);
    return(0);
}
