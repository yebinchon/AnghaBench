
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tunable_uint64 {int var; int path; } ;


 int TUNABLE_UINT64_FETCH (int ,int ) ;

void
tunable_uint64_init(void *data)
{
 struct tunable_uint64 *d = (struct tunable_uint64 *)data;

 TUNABLE_UINT64_FETCH(d->path, d->var);
}
