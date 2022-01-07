
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {scalar_t__ pos; int * buf; } ;
struct TYPE_4__ {TYPE_1__ string; } ;
struct source {int * vtable; TYPE_2__ u; } ;


 int string_vtable ;

void
src_setstring(struct source *src, char *p)
{

 src->u.string.buf = (u_char *)p;
 src->u.string.pos = 0;
 src->vtable = &string_vtable;
}
