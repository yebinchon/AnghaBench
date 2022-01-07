
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tunable_long {int var; int path; } ;


 int TUNABLE_LONG_FETCH (int ,int ) ;

void
tunable_long_init(void *data)
{
 struct tunable_long *d = (struct tunable_long *)data;

 TUNABLE_LONG_FETCH(d->path, d->var);
}
