
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pid_t ;
struct TYPE_2__ {char* counter_name; int cpu; } ;
typedef int FILE ;


 int MAX_CPU ;
 int build_counters_from_header (int *) ;
 TYPE_1__* cnts ;
 int command ;
 int cpu_count_out ;
 int do_expression (int ,int) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int * glob_cpu ;
 int lace_cpus_together () ;
 int max_to_collect ;
 int my_pclose (int *,int ) ;
 int * my_popen (int ,char*,int *) ;
 int ncnts ;
 int print_header () ;
 int printf (char*,...) ;
 scalar_t__ read_a_line (int *) ;
 scalar_t__ verbose ;

__attribute__((used)) static void
process_file(char *filename)
{
 FILE *io;
 int i;
 int line_at, not_done;
 pid_t pid_of_command=0;

 if (filename == ((void*)0)) {
  io = my_popen(command, "r", &pid_of_command);
 } else {
  io = fopen(filename, "r");
  if (io == ((void*)0)) {
   printf("Can't process file %s err:%d\n",
          filename, errno);
   return;
  }
 }
 build_counters_from_header(io);
 if (cnts == ((void*)0)) {

  printf("Nothing to do -- no counters built\n");
  if (io) {
   fclose(io);
  }
  return;
 }
 lace_cpus_together();
 print_header();
 if (verbose) {
  for (i=0; i<ncnts; i++) {
   printf("Counter:%s cpu:%d index:%d\n",
          cnts[i].counter_name,
          cnts[i].cpu, i);
  }
 }
 line_at = 0;
 not_done = 1;
 while(not_done) {
  if (read_a_line(io)) {
   line_at++;
  } else {
   break;
  }
  if (line_at >= max_to_collect) {
   not_done = 0;
  }
  if (filename == ((void*)0)) {
   int cnt;

   for(i=0, cnt=0; i<MAX_CPU; i++) {
    do_expression(glob_cpu[i], (line_at-1));
    cnt++;
    if (cnt == cpu_count_out) {
     printf("\n");
     break;
    } else {
     printf("\t");
    }
   }
  }
 }
 if (filename) {
  fclose(io);
 } else {
  my_pclose(io, pid_of_command);
 }
}
