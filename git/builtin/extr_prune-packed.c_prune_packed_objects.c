
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PRUNE_PACKED_VERBOSE ;
 int _ (char*) ;
 int display_progress (int ,int) ;
 int for_each_loose_file_in_objdir (int ,int ,int *,int ,int*) ;
 int get_object_directory () ;
 int progress ;
 int prune_object ;
 int prune_subdir ;
 int start_delayed_progress (int ,int) ;
 int stop_progress (int *) ;

void prune_packed_objects(int opts)
{
 if (opts & PRUNE_PACKED_VERBOSE)
  progress = start_delayed_progress(_("Removing duplicate objects"), 256);

 for_each_loose_file_in_objdir(get_object_directory(),
          prune_object, ((void*)0), prune_subdir, &opts);


 display_progress(progress, 256);
 stop_progress(&progress);
}
