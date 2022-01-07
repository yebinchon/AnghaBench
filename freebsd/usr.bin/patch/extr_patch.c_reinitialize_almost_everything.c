
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ diff_type ;
 int ** filearg ;
 scalar_t__ filec ;
 int free (int *) ;
 int get_some_switches () ;
 scalar_t__ input_lines ;
 scalar_t__ last_frozen_line ;
 scalar_t__ last_offset ;
 int out_of_mem ;
 int * outname ;
 int re_input () ;
 int re_patch () ;
 int reverse ;
 int reverse_flag_specified ;
 int * revision ;
 int skip_rest_of_patch ;
 int * source_file ;

__attribute__((used)) static void
reinitialize_almost_everything(void)
{
 re_patch();
 re_input();

 input_lines = 0;
 last_frozen_line = 0;

 filec = 0;
 if (!out_of_mem) {
  free(filearg[0]);
  filearg[0] = ((void*)0);
 }

 free(source_file);
 source_file = ((void*)0);

 free(outname);
 outname = ((void*)0);

 last_offset = 0;
 diff_type = 0;

 free(revision);
 revision = ((void*)0);

 reverse = reverse_flag_specified;
 skip_rest_of_patch = 0;

 get_some_switches();
}
