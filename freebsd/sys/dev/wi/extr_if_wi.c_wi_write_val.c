
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int u_int16_t ;
struct wi_softc {int dummy; } ;


 int htole16 (int ) ;
 int wi_write_rid (struct wi_softc*,int,int *,int) ;

__attribute__((used)) static __inline int
wi_write_val(struct wi_softc *sc, int rid, u_int16_t val)
{

 val = htole16(val);
 return wi_write_rid(sc, rid, &val, sizeof(val));
}
