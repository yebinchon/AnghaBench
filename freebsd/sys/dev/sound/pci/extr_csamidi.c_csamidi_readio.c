
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef int u_int32_t ;
struct csa_midi_softc {int io; } ;


 scalar_t__ BA0_AC97_RESET ;
 int bus_space_read_4 (int ,int ,scalar_t__) ;
 int rman_get_bushandle (int ) ;
 int rman_get_bustag (int ) ;

__attribute__((used)) static u_int32_t
csamidi_readio(struct csa_midi_softc *scp, u_long offset)
{
 if (offset < BA0_AC97_RESET)
  return bus_space_read_4(rman_get_bustag(scp->io), rman_get_bushandle(scp->io), offset) & 0xffffffff;
 else
  return (0);
}
