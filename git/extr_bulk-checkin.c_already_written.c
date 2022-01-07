
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct bulk_checkin_state {int nr_written; TYPE_1__** written; } ;
struct TYPE_2__ {int oid; } ;


 scalar_t__ has_object_file (struct object_id*) ;
 scalar_t__ oideq (int *,struct object_id*) ;

__attribute__((used)) static int already_written(struct bulk_checkin_state *state, struct object_id *oid)
{
 int i;


 if (has_object_file(oid))
  return 1;


 for (i = 0; i < state->nr_written; i++)
  if (oideq(&state->written[i]->oid, oid))
   return 1;


 return 0;
}
