
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_git {scalar_t__ pack_keep_in_core; scalar_t__ pack_keep; scalar_t__ pack_local; } ;


 int have_non_local_packs ;
 scalar_t__ ignore_packed_keep_in_core ;
 scalar_t__ ignore_packed_keep_on_disk ;
 scalar_t__ incremental ;
 scalar_t__ local ;

__attribute__((used)) static int want_found_object(int exclude, struct packed_git *p)
{
 if (exclude)
  return 1;
 if (incremental)
  return 0;
 if (!ignore_packed_keep_on_disk &&
     !ignore_packed_keep_in_core &&
     (!local || !have_non_local_packs))
  return 1;

 if (local && !p->pack_local)
  return 0;
 if (p->pack_local &&
     ((ignore_packed_keep_on_disk && p->pack_keep) ||
      (ignore_packed_keep_in_core && p->pack_keep_in_core)))
  return 0;


 return -1;
}
