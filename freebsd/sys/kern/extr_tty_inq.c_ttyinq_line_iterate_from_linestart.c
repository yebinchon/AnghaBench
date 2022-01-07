
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ttyinq_line_iterator_t ;
struct ttyinq {int ti_startblock; int ti_linestart; } ;


 int ttyinq_line_iterate (struct ttyinq*,int *,void*,int ,int ) ;

void
ttyinq_line_iterate_from_linestart(struct ttyinq *ti,
    ttyinq_line_iterator_t *iterator, void *data)
{

 ttyinq_line_iterate(ti, iterator, data,
     ti->ti_linestart, ti->ti_startblock);
}
