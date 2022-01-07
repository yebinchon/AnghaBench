
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hn_softc {int hn_ifp; } ;


 int EINVAL ;
 int OID_GEN_MEDIA_CONNECT_STATUS ;
 int hn_rndis_query (struct hn_softc*,int ,int *,int ,int *,size_t*) ;
 int if_printf (int ,char*,size_t) ;

int
hn_rndis_get_linkstatus(struct hn_softc *sc, uint32_t *link_status)
{
 size_t size;
 int error;

 size = sizeof(*link_status);
 error = hn_rndis_query(sc, OID_GEN_MEDIA_CONNECT_STATUS, ((void*)0), 0,
     link_status, &size);
 if (error)
  return (error);
 if (size != sizeof(uint32_t)) {
  if_printf(sc->hn_ifp, "invalid link status len %zu\n", size);
  return (EINVAL);
 }
 return (0);
}
