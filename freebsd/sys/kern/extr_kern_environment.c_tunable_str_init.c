
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tunable_str {int size; int var; int path; } ;


 int TUNABLE_STR_FETCH (int ,int ,int ) ;

void
tunable_str_init(void *data)
{
 struct tunable_str *d = (struct tunable_str *)data;

 TUNABLE_STR_FETCH(d->path, d->var, d->size);
}
