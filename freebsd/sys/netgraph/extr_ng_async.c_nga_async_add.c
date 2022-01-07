
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
typedef int u_int16_t ;
typedef int u_char ;
typedef TYPE_1__* sc_p ;
struct TYPE_3__ {int* abuf; } ;


 int PPP_ESCAPE ;
 int PPP_FCS (int ,int) ;
 int PPP_FLAG ;
 int PPP_TRANS ;

__attribute__((used)) static __inline void
nga_async_add(const sc_p sc, u_int16_t *fcs, u_int32_t accm, int *len, u_char x)
{
 *fcs = PPP_FCS(*fcs, x);
 if ((x < 32 && ((1 << x) & accm))
     || (x == PPP_ESCAPE)
     || (x == PPP_FLAG)) {
  sc->abuf[(*len)++] = PPP_ESCAPE;
  x ^= PPP_TRANS;
 }
 sc->abuf[(*len)++] = x;
}
