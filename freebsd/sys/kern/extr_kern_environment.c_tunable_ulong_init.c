
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tunable_ulong {int var; int path; } ;


 int TUNABLE_ULONG_FETCH (int ,int ) ;

void
tunable_ulong_init(void *data)
{
 struct tunable_ulong *d = (struct tunable_ulong *)data;

 TUNABLE_ULONG_FETCH(d->path, d->var);
}
