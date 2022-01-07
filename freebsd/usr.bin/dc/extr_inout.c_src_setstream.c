
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * stream; } ;
struct source {int * vtable; TYPE_1__ u; } ;
typedef int FILE ;


 int stream_vtable ;

void
src_setstream(struct source *src, FILE *stream)
{

 src->u.stream = stream;
 src->vtable = &stream_vtable;
}
