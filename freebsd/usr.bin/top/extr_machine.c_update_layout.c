
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Header_lines ;
 int arc_enabled ;
 int carc_enabled ;
 int has_swap ;
 int ncpus ;
 scalar_t__ pcpu_stats ;
 int y_arc ;
 int y_carc ;
 int y_header ;
 int y_idlecursor ;
 int y_mem ;
 int y_message ;
 int y_procs ;
 int y_swap ;

__attribute__((used)) static void
update_layout(void)
{

 y_mem = 3;
 y_arc = 4;
 y_carc = 5;
 y_swap = 3 + arc_enabled + carc_enabled + has_swap;
 y_idlecursor = 4 + arc_enabled + carc_enabled + has_swap;
 y_message = 4 + arc_enabled + carc_enabled + has_swap;
 y_header = 5 + arc_enabled + carc_enabled + has_swap;
 y_procs = 6 + arc_enabled + carc_enabled + has_swap;
 Header_lines = 6 + arc_enabled + carc_enabled + has_swap;

 if (pcpu_stats) {
  y_mem += ncpus - 1;
  y_arc += ncpus - 1;
  y_carc += ncpus - 1;
  y_swap += ncpus - 1;
  y_idlecursor += ncpus - 1;
  y_message += ncpus - 1;
  y_header += ncpus - 1;
  y_procs += ncpus - 1;
  Header_lines += ncpus - 1;
 }
}
