
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tmpfs_dir_duphead {int dummy; } ;
struct TYPE_4__ {struct tmpfs_dir_duphead tn_dupindex; } ;
struct tmpfs_node {TYPE_1__ tn_dir; } ;
struct tmpfs_dirent {scalar_t__ td_cookie; } ;
struct TYPE_5__ {int entries; int index_entries; } ;
struct TYPE_6__ {TYPE_2__ td_dup; } ;


 struct tmpfs_dirent* LIST_FIRST (struct tmpfs_dir_duphead*) ;
 int LIST_INSERT_AFTER (struct tmpfs_dirent*,struct tmpfs_dirent*,int ) ;
 int LIST_INSERT_BEFORE (struct tmpfs_dirent*,struct tmpfs_dirent*,int ) ;
 int LIST_INSERT_HEAD (struct tmpfs_dir_duphead*,struct tmpfs_dirent*,int ) ;
 struct tmpfs_dirent* LIST_NEXT (struct tmpfs_dirent*,int ) ;
 int MPASS (int) ;
 scalar_t__ TMPFS_DIRCOOKIE_DUP_MAX ;
 scalar_t__ TMPFS_DIRCOOKIE_DUP_MIN ;
 int tmpfs_dirent_dup (struct tmpfs_dirent*) ;
 TYPE_3__ uh ;

__attribute__((used)) static void
tmpfs_dir_attach_dup(struct tmpfs_node *dnode,
    struct tmpfs_dir_duphead *duphead, struct tmpfs_dirent *nde)
{
 struct tmpfs_dir_duphead *dupindex;
 struct tmpfs_dirent *de, *pde;

 dupindex = &dnode->tn_dir.tn_dupindex;
 de = LIST_FIRST(dupindex);
 if (de == ((void*)0) || de->td_cookie < TMPFS_DIRCOOKIE_DUP_MAX) {
  if (de == ((void*)0))
   nde->td_cookie = TMPFS_DIRCOOKIE_DUP_MIN;
  else
   nde->td_cookie = de->td_cookie + 1;
  MPASS(tmpfs_dirent_dup(nde));
  LIST_INSERT_HEAD(dupindex, nde, uh.td_dup.index_entries);
  LIST_INSERT_HEAD(duphead, nde, uh.td_dup.entries);
  return;
 }






 while (1) {
  pde = de;
  de = LIST_NEXT(de, uh.td_dup.index_entries);
  if (de == ((void*)0) && pde->td_cookie != TMPFS_DIRCOOKIE_DUP_MIN) {




   nde->td_cookie = TMPFS_DIRCOOKIE_DUP_MIN;
   LIST_INSERT_AFTER(pde, nde, uh.td_dup.index_entries);
   LIST_INSERT_HEAD(duphead, nde, uh.td_dup.entries);
   return;
  } else if (de == ((void*)0)) {






   nde->td_cookie = TMPFS_DIRCOOKIE_DUP_MAX;
   LIST_INSERT_HEAD(dupindex, nde,
       uh.td_dup.index_entries);
   LIST_INSERT_HEAD(duphead, nde, uh.td_dup.entries);
   return;
  }
  if (de->td_cookie + 1 == pde->td_cookie ||
      de->td_cookie >= TMPFS_DIRCOOKIE_DUP_MAX)
   continue;
  nde->td_cookie = de->td_cookie + 1;
  MPASS(tmpfs_dirent_dup(nde));
  MPASS(pde->td_cookie > nde->td_cookie);
  MPASS(nde->td_cookie > de->td_cookie);
  LIST_INSERT_BEFORE(de, nde, uh.td_dup.index_entries);
  LIST_INSERT_HEAD(duphead, nde, uh.td_dup.entries);
  return;
 }
}
