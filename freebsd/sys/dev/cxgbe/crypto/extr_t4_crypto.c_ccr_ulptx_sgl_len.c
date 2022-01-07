
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ulptx_sgl {int dummy; } ;


 int roundup2 (int,int) ;

__attribute__((used)) static inline int
ccr_ulptx_sgl_len(int nsegs)
{
 u_int n;

 nsegs--;
 n = sizeof(struct ulptx_sgl) + 8 * ((3 * nsegs) / 2 + (nsegs & 1));
 return (roundup2(n, 16));
}
