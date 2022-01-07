
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf; } ;
struct stash_info {TYPE_1__ revision; int is_stash_ref; } ;


 int _ (char*) ;
 int error (int ,int ) ;
 int exit (int) ;
 int free_stash_info (struct stash_info*) ;

__attribute__((used)) static void assert_stash_ref(struct stash_info *info)
{
 if (!info->is_stash_ref) {
  error(_("'%s' is not a stash reference"), info->revision.buf);
  free_stash_info(info);
  exit(1);
 }
}
