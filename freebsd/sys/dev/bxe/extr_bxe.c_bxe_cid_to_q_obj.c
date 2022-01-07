
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ecore_queue_sp_obj {int dummy; } ;
struct bxe_softc {TYPE_1__* sp_objs; } ;
struct TYPE_2__ {struct ecore_queue_sp_obj q_obj; } ;


 int BLOGD (struct bxe_softc*,int ,char*,int ) ;
 size_t CID_TO_FP (int ,struct bxe_softc*) ;
 int DBG_SP ;

__attribute__((used)) static inline struct ecore_queue_sp_obj *
bxe_cid_to_q_obj(struct bxe_softc *sc,
                 uint32_t cid)
{
    BLOGD(sc, DBG_SP, "retrieving fp from cid %d\n", cid);
    return (&sc->sp_objs[CID_TO_FP(cid, sc)].q_obj);
}
