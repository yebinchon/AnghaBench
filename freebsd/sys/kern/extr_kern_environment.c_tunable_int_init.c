
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tunable_int {int var; int path; } ;


 int TUNABLE_INT_FETCH (int ,int ) ;

void
tunable_int_init(void *data)
{
 struct tunable_int *d = (struct tunable_int *)data;

 TUNABLE_INT_FETCH(d->path, d->var);
}
