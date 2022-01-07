
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ttyinq {int ti_lastblock; int ti_reprintblock; int ti_startblock; int ti_end; int ti_reprint; int ti_linestart; } ;



void
ttyinq_canonicalize(struct ttyinq *ti)
{

 ti->ti_linestart = ti->ti_reprint = ti->ti_end;
 ti->ti_startblock = ti->ti_reprintblock = ti->ti_lastblock;
}
