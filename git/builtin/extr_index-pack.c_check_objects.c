
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 scalar_t__ check_object (int ) ;
 int display_progress (int ,unsigned int) ;
 int get_indexed_object (unsigned int) ;
 unsigned int get_max_object_index () ;
 int progress ;
 int start_delayed_progress (int ,unsigned int) ;
 int stop_progress (int *) ;
 scalar_t__ verbose ;

__attribute__((used)) static unsigned check_objects(void)
{
 unsigned i, max, foreign_nr = 0;

 max = get_max_object_index();

 if (verbose)
  progress = start_delayed_progress(_("Checking objects"), max);

 for (i = 0; i < max; i++) {
  foreign_nr += check_object(get_indexed_object(i));
  display_progress(progress, i + 1);
 }

 stop_progress(&progress);
 return foreign_nr;
}
