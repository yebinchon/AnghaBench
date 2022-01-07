
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tunable_quad {int var; int path; } ;


 int TUNABLE_QUAD_FETCH (int ,int ) ;

void
tunable_quad_init(void *data)
{
 struct tunable_quad *d = (struct tunable_quad *)data;

 TUNABLE_QUAD_FETCH(d->path, d->var);
}
