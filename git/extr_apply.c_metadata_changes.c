
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct patch {scalar_t__ is_rename; scalar_t__ is_copy; scalar_t__ is_new; scalar_t__ old_mode; scalar_t__ new_mode; scalar_t__ is_delete; } ;



__attribute__((used)) static inline int metadata_changes(struct patch *patch)
{
 return patch->is_rename > 0 ||
  patch->is_copy > 0 ||
  patch->is_new > 0 ||
  patch->is_delete ||
  (patch->old_mode && patch->new_mode &&
   patch->old_mode != patch->new_mode);
}
