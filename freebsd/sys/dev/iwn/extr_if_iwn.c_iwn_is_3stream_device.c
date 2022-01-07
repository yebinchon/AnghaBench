
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwn_softc {scalar_t__ hw_type; } ;


 scalar_t__ IWN_HW_REV_TYPE_5300 ;

__attribute__((used)) static int
iwn_is_3stream_device(struct iwn_softc *sc)
{

 if (sc->hw_type == IWN_HW_REV_TYPE_5300)
  return (1);
 return (0);
}
