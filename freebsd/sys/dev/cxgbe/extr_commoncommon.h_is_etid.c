
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u_int ;
struct TYPE_2__ {scalar_t__ netids; scalar_t__ etid_base; scalar_t__ etid_end; } ;
struct adapter {TYPE_1__ tids; } ;



__attribute__((used)) static inline int is_etid(const struct adapter *sc, u_int tid)
{

 return (sc->tids.netids > 0 && tid >= sc->tids.etid_base &&
     tid <= sc->tids.etid_end);
}
