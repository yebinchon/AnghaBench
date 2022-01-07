
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int scr_stat ;
struct TYPE_2__ {int te_refcount; } ;




 TYPE_1__ sc_term_dumb ;

__attribute__((used)) static int
dumb_init(scr_stat *scp, void **softc, int code)
{
 switch (code) {
 case 129:
  ++sc_term_dumb.te_refcount;
  break;
 case 128:
  break;
 }
 return 0;
}
