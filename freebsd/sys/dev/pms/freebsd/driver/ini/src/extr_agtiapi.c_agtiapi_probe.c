
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;
typedef int ag_card_info_t ;


 int AGTIAPI_MAX_CARDS ;
 int BUS_PROBE_DEFAULT ;
 int ENXIO ;
 int * agCardInfoList ;
 int agtiapi_ProbeCard (int ,int *,int) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int agtiapi_probe( device_t dev )
{
  int retVal;
  int thisCard;
  ag_card_info_t *thisCardInst;

  thisCard = device_get_unit( dev );
  if ( thisCard >= AGTIAPI_MAX_CARDS )
  {
    device_printf( dev, "Too many PMC-Sierra cards detected ERROR!\n" );
    return (ENXIO);
  }
  thisCardInst = &agCardInfoList[ thisCard ];
  retVal = agtiapi_ProbeCard( dev, thisCardInst, thisCard );
  if ( retVal )
    return (ENXIO);
  return( BUS_PROBE_DEFAULT );
}
