
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef void* uint32_t ;
struct TYPE_6__ {scalar_t__ cur_eqd; void* item_size; void* q_len; } ;
struct oce_eq {int eq_id; TYPE_1__ eq_cfg; int ring; void* parent; } ;
struct TYPE_8__ {int neqs; TYPE_2__* intrs; } ;
struct TYPE_7__ {struct oce_eq* eq; } ;
typedef TYPE_3__* POCE_SOFTC ;


 int M_DEVBUF ;
 int M_NOWAIT ;
 int M_ZERO ;
 struct oce_eq* malloc (int,int ,int) ;
 int oce_create_ring_buffer (TYPE_3__*,void*,void*) ;
 int oce_eq_del (struct oce_eq*) ;
 int oce_mbox_create_eq (struct oce_eq*) ;

__attribute__((used)) static struct
oce_eq *oce_eq_create(POCE_SOFTC sc, uint32_t q_len,
        uint32_t item_size,
        uint32_t eq_delay,
        uint32_t vector)
{
 struct oce_eq *eq;
 int rc = 0;


 eq = malloc(sizeof(struct oce_eq), M_DEVBUF, M_NOWAIT | M_ZERO);
 if (eq == ((void*)0))
  return ((void*)0);

 eq->parent = (void *)sc;
 eq->eq_id = 0xffff;
 eq->ring = oce_create_ring_buffer(sc, q_len, item_size);
 if (!eq->ring)
  goto free_eq;

 eq->eq_cfg.q_len = q_len;
 eq->eq_cfg.item_size = item_size;
 eq->eq_cfg.cur_eqd = (uint8_t) eq_delay;

 rc = oce_mbox_create_eq(eq);
 if (rc)
  goto free_eq;

 sc->intrs[sc->neqs++].eq = eq;

 return eq;

free_eq:
 oce_eq_del(eq);
 return ((void*)0);
}
