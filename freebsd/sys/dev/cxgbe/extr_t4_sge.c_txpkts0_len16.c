
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ulptx_sgl {int dummy; } ;
struct ulptx_idata {int dummy; } ;
struct ulp_txpkt {int dummy; } ;
struct cpl_tx_pkt_core {int dummy; } ;


 int MPASS (int) ;
 int howmany (int,int) ;

__attribute__((used)) static inline u_int
txpkts0_len16(u_int nsegs)
{
 u_int n;

 MPASS(nsegs > 0);

 nsegs--;
 n = sizeof(struct ulp_txpkt) + sizeof(struct ulptx_idata) +
     sizeof(struct cpl_tx_pkt_core) + sizeof(struct ulptx_sgl) +
     8 * ((3 * nsegs) / 2 + (nsegs & 1));

 return (howmany(n, 16));
}
