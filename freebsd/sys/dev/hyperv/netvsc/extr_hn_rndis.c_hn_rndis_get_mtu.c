
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hn_softc {int hn_ifp; } ;


 int EINVAL ;
 int OID_GEN_MAXIMUM_FRAME_SIZE ;
 int hn_rndis_query (struct hn_softc*,int ,int *,int ,int *,size_t*) ;
 int if_printf (int ,char*,size_t) ;

int
hn_rndis_get_mtu(struct hn_softc *sc, uint32_t *mtu)
{
 size_t size;
 int error;

 size = sizeof(*mtu);
 error = hn_rndis_query(sc, OID_GEN_MAXIMUM_FRAME_SIZE, ((void*)0), 0,
     mtu, &size);
 if (error)
  return (error);
 if (size != sizeof(uint32_t)) {
  if_printf(sc->hn_ifp, "invalid mtu len %zu\n", size);
  return (EINVAL);
 }
 return (0);
}
