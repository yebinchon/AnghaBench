
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sge_fl {int qsize; int sidx; int flags; int lockname; } ;
struct TYPE_3__ {int spg_len; } ;
struct TYPE_4__ {TYPE_1__ sge; } ;
struct adapter {int flags; TYPE_2__ params; } ;


 int BUF_PACKING_OK ;
 int EQ_ESIZE ;
 int FL_BUF_PACKING ;
 int buffer_packing ;
 int find_best_refill_source (struct adapter*,struct sge_fl*,int) ;
 int find_safe_refill_source (struct adapter*,struct sge_fl*) ;
 scalar_t__ is_t4 (struct adapter*) ;
 int strlcpy (int ,char*,int) ;

__attribute__((used)) static inline void
init_fl(struct adapter *sc, struct sge_fl *fl, int qsize, int maxp, char *name)
{

 fl->qsize = qsize;
 fl->sidx = qsize - sc->params.sge.spg_len / EQ_ESIZE;
 strlcpy(fl->lockname, name, sizeof(fl->lockname));
 if (sc->flags & BUF_PACKING_OK &&
     ((!is_t4(sc) && buffer_packing) ||
     (is_t4(sc) && buffer_packing == 1)))
  fl->flags |= FL_BUF_PACKING;
 find_best_refill_source(sc, fl, maxp);
 find_safe_refill_source(sc, fl);
}
