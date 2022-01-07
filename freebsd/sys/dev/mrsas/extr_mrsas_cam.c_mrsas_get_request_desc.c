
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int16_t ;
struct mrsas_softc {int max_fw_cmds; int * req_desc; } ;
typedef int MRSAS_REQUEST_DESCRIPTOR_UNION ;


 int KASSERT (int,char*) ;

MRSAS_REQUEST_DESCRIPTOR_UNION *
mrsas_get_request_desc(struct mrsas_softc *sc, u_int16_t index)
{
 u_int8_t *p;

 KASSERT(index < sc->max_fw_cmds, ("req_desc is out of range"));
 p = sc->req_desc + sizeof(MRSAS_REQUEST_DESCRIPTOR_UNION) * index;

 return (MRSAS_REQUEST_DESCRIPTOR_UNION *) p;
}
