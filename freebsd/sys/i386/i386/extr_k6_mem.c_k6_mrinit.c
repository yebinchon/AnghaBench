
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int64_t ;
typedef int u_int32_t ;
struct mem_range_softc {int mr_ndesc; TYPE_1__* mr_desc; scalar_t__ mr_cap; } ;
struct mem_range_desc {int dummy; } ;
struct TYPE_2__ {int mr_base; int mr_len; int mr_flags; } ;


 int K6_REG_GET (int,int,int,int,int) ;
 int MDF_UNCACHEABLE ;
 int MDF_WRITECOMBINE ;
 int M_MEMDESC ;
 int M_NOWAIT ;
 int M_ZERO ;
 int UWCCR ;
 int ffs (int) ;
 TYPE_1__* malloc (int,int ,int) ;
 int panic (char*) ;
 int printf (char*,int) ;
 int rdmsr (int ) ;

__attribute__((used)) static void
k6_mrinit(struct mem_range_softc *sc)
{
 u_int64_t reg;
 u_int32_t addr, mask, wc, uc;
 int d;

 sc->mr_cap = 0;
 sc->mr_ndesc = 2;
 sc->mr_desc = malloc(sc->mr_ndesc * sizeof(struct mem_range_desc),
     M_MEMDESC, M_NOWAIT | M_ZERO);
 if (sc->mr_desc == ((void*)0))
  panic("k6_mrinit: malloc returns NULL");

 reg = rdmsr(UWCCR);
 for (d = 0; d < sc->mr_ndesc; d++) {
  u_int32_t one = (reg & (0xffffffff << (32 * d))) >> (32 * d);

  K6_REG_GET(one, addr, mask, wc, uc);
  sc->mr_desc[d].mr_base = addr;
  sc->mr_desc[d].mr_len = ffs(mask) << 17;
  if (wc)
   sc->mr_desc[d].mr_flags |= MDF_WRITECOMBINE;
  if (uc)
   sc->mr_desc[d].mr_flags |= MDF_UNCACHEABLE;
 }

 printf("K6-family MTRR support enabled (%d registers)\n", sc->mr_ndesc);
}
