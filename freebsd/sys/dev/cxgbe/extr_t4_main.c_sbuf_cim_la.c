
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct sbuf {int dummy; } ;
struct TYPE_2__ {int cim_la_size; } ;
struct adapter {TYPE_1__ params; } ;


 int A_UP_UP_DBG_LA_CFG ;
 scalar_t__ CHELSIO_T6 ;
 int ENOMEM ;
 int MPASS (int) ;
 int M_CXGBE ;
 int M_NOWAIT ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ chip_id (struct adapter*) ;
 int free (int *,int ) ;
 int * malloc (int,int ,int) ;
 int sbuf_cim_la4 (struct adapter*,struct sbuf*,int *,int ) ;
 int sbuf_cim_la6 (struct adapter*,struct sbuf*,int *,int ) ;
 int t4_cim_read (struct adapter*,int ,int,int *) ;
 int t4_cim_read_la (struct adapter*,int *,int *) ;

__attribute__((used)) static int
sbuf_cim_la(struct adapter *sc, struct sbuf *sb, int flags)
{
 uint32_t cfg, *buf;
 int rc;

 rc = -t4_cim_read(sc, A_UP_UP_DBG_LA_CFG, 1, &cfg);
 if (rc != 0)
  return (rc);

 MPASS(flags == M_WAITOK || flags == M_NOWAIT);
 buf = malloc(sc->params.cim_la_size * sizeof(uint32_t), M_CXGBE,
     M_ZERO | flags);
 if (buf == ((void*)0))
  return (ENOMEM);

 rc = -t4_cim_read_la(sc, buf, ((void*)0));
 if (rc != 0)
  goto done;
 if (chip_id(sc) < CHELSIO_T6)
  sbuf_cim_la4(sc, sb, buf, cfg);
 else
  sbuf_cim_la6(sc, sb, buf, cfg);

done:
 free(buf, M_CXGBE);
 return (rc);
}
