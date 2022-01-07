
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pathspec {int nr; TYPE_1__* items; } ;
struct argv_array {int dummy; } ;
struct TYPE_2__ {int original; } ;


 int argv_array_push (struct argv_array*,int ) ;

__attribute__((used)) static void add_pathspecs(struct argv_array *args,
     const struct pathspec *ps) {
 int i;

 for (i = 0; i < ps->nr; i++)
  argv_array_push(args, ps->items[i].original);
}
