
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ttyinq_line_iterator_t ;
struct ttyinq {int ti_reprintblock; int ti_reprint; } ;


 int ttyinq_line_iterate (struct ttyinq*,int *,void*,int ,int ) ;

void
ttyinq_line_iterate_from_reprintpos(struct ttyinq *ti,
    ttyinq_line_iterator_t *iterator, void *data)
{

 ttyinq_line_iterate(ti, iterator, data,
     ti->ti_reprint, ti->ti_reprintblock);
}
