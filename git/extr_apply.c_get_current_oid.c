
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct apply_state {TYPE_2__* repo; } ;
struct TYPE_6__ {TYPE_1__** cache; } ;
struct TYPE_5__ {TYPE_3__* index; } ;
struct TYPE_4__ {int oid; } ;


 int index_name_pos (TYPE_3__*,char const*,int ) ;
 int oidcpy (struct object_id*,int *) ;
 scalar_t__ read_apply_cache (struct apply_state*) ;
 int strlen (char const*) ;

__attribute__((used)) static int get_current_oid(struct apply_state *state, const char *path,
      struct object_id *oid)
{
 int pos;

 if (read_apply_cache(state) < 0)
  return -1;
 pos = index_name_pos(state->repo->index, path, strlen(path));
 if (pos < 0)
  return -1;
 oidcpy(oid, &state->repo->index->cache[pos]->oid);
 return 0;
}
