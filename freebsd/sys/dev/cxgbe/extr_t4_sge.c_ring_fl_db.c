
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct sge_fl {int pidx; scalar_t__ dbval; int sidx; int dbidx; int * udb; } ;
struct adapter {int sge_kdoorbell_reg; } ;


 scalar_t__ IDXDIFF (int,int ,int ) ;
 int IDXINCR (int ,scalar_t__,int ) ;
 int MPASS (int) ;
 scalar_t__ V_PIDX (scalar_t__) ;
 int htole32 (scalar_t__) ;
 int t4_write_reg (struct adapter*,int ,scalar_t__) ;
 int wmb () ;

__attribute__((used)) static inline void
ring_fl_db(struct adapter *sc, struct sge_fl *fl)
{
 uint32_t n, v;

 n = IDXDIFF(fl->pidx / 8, fl->dbidx, fl->sidx);
 MPASS(n > 0);

 wmb();
 v = fl->dbval | V_PIDX(n);
 if (fl->udb)
  *fl->udb = htole32(v);
 else
  t4_write_reg(sc, sc->sge_kdoorbell_reg, v);
 IDXINCR(fl->dbidx, n, fl->sidx);
}
