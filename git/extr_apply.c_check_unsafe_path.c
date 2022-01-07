
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {char* old_name; char* new_name; int new_mode; int old_mode; scalar_t__ is_delete; int is_copy; int is_new; } ;


 int _ (char*) ;
 int error (int ,char const*) ;
 int verify_path (char const*,int ) ;

__attribute__((used)) static int check_unsafe_path(struct patch *patch)
{
 const char *old_name = ((void*)0);
 const char *new_name = ((void*)0);
 if (patch->is_delete)
  old_name = patch->old_name;
 else if (!patch->is_new && !patch->is_copy)
  old_name = patch->old_name;
 if (!patch->is_delete)
  new_name = patch->new_name;

 if (old_name && !verify_path(old_name, patch->old_mode))
  return error(_("invalid path '%s'"), old_name);
 if (new_name && !verify_path(new_name, patch->new_mode))
  return error(_("invalid path '%s'"), new_name);
 return 0;
}
