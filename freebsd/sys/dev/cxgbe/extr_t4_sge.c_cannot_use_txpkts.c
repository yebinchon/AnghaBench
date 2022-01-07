
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;


 int MC_RAW_WR ;
 int mbuf_cflags (struct mbuf*) ;
 scalar_t__ needs_tso (struct mbuf*) ;

__attribute__((used)) static inline int
cannot_use_txpkts(struct mbuf *m)
{


 return (needs_tso(m) || (mbuf_cflags(m) & MC_RAW_WR) != 0);
}
