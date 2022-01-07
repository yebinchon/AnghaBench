
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pad_boundary; } ;
struct TYPE_4__ {TYPE_1__ sge; } ;
struct adapter {TYPE_2__ params; } ;


 scalar_t__ fl_pad ;

__attribute__((used)) static inline int
hwsz_ok(struct adapter *sc, int hwsz)
{
 int mask = fl_pad ? sc->params.sge.pad_boundary - 1 : 16 - 1;

 return (hwsz >= 64 && (hwsz & mask) == 0);
}
