
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gcov_ctors_done ;
 int gcov_fs_init () ;
 int gcov_invoke_lf_ctors ;
 int linker_file_foreach (int ,int *) ;

__attribute__((used)) static void
gcov_invoke_ctors(void)
{

 gcov_fs_init();

 linker_file_foreach(gcov_invoke_lf_ctors, ((void*)0));
 gcov_ctors_done = 1;
}
