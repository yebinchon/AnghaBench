
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rev_info {int dummy; } ;


 int add_object_entry_from_bitmap ;
 int assert (scalar_t__) ;
 int bitmap_git ;
 int display_progress (int ,int ) ;
 int nr_result ;
 scalar_t__ pack_options_allow_reuse () ;
 int prepare_bitmap_walk (struct rev_info*) ;
 int progress_state ;
 int reuse_packfile ;
 scalar_t__ reuse_packfile_objects ;
 int reuse_packfile_offset ;
 int reuse_partial_packfile_from_bitmap (int ,int *,scalar_t__*,int *) ;
 int traverse_bitmap_commit_list (int ,int *) ;

__attribute__((used)) static int get_object_list_from_bitmap(struct rev_info *revs)
{
 if (!(bitmap_git = prepare_bitmap_walk(revs)))
  return -1;

 if (pack_options_allow_reuse() &&
     !reuse_partial_packfile_from_bitmap(
   bitmap_git,
   &reuse_packfile,
   &reuse_packfile_objects,
   &reuse_packfile_offset)) {
  assert(reuse_packfile_objects);
  nr_result += reuse_packfile_objects;
  display_progress(progress_state, nr_result);
 }

 traverse_bitmap_commit_list(bitmap_git, &add_object_entry_from_bitmap);
 return 0;
}
