
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iwn_softc {TYPE_1__* rxon; } ;
struct TYPE_2__ {int filter; } ;


 int IWN_FILTER_BSS ;
 int htole32 (int ) ;

__attribute__((used)) static int
iwn_check_bss_filter(struct iwn_softc *sc)
{
 return ((sc->rxon->filter & htole32(IWN_FILTER_BSS)) != 0);
}
