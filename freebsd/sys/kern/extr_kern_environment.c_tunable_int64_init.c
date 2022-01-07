
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tunable_int64 {int var; int path; } ;


 int TUNABLE_INT64_FETCH (int ,int ) ;

void
tunable_int64_init(void *data)
{
 struct tunable_int64 *d = (struct tunable_int64 *)data;

 TUNABLE_INT64_FETCH(d->path, d->var);
}
