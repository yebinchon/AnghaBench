
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct hn_softc {int dummy; } ;


 int hn_rndis_query2 (struct hn_softc*,int ,void const*,size_t,void*,size_t*,size_t) ;

__attribute__((used)) static int
hn_rndis_query(struct hn_softc *sc, uint32_t oid,
    const void *idata, size_t idlen, void *odata, size_t *odlen0)
{

 return (hn_rndis_query2(sc, oid, idata, idlen, odata, odlen0, *odlen0));
}
