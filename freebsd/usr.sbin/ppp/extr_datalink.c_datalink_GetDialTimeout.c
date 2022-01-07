
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int incs; } ;
struct TYPE_4__ {int timeout; int inc; int maxinc; } ;
struct TYPE_5__ {TYPE_1__ dial; } ;
struct datalink {TYPE_3__ dial; TYPE_2__ cfg; } ;



int
datalink_GetDialTimeout(struct datalink *dl)
{
  int result = dl->cfg.dial.timeout + dl->dial.incs * dl->cfg.dial.inc;

  if (dl->dial.incs < dl->cfg.dial.maxinc)
    dl->dial.incs++;

  return result;
}
