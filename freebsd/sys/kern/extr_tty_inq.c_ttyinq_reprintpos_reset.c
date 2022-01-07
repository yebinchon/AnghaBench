
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttyinq {int ti_startblock; int ti_reprintblock; int ti_linestart; int ti_reprint; } ;



void
ttyinq_reprintpos_reset(struct ttyinq *ti)
{

 ti->ti_reprint = ti->ti_linestart;
 ti->ti_reprintblock = ti->ti_startblock;
}
