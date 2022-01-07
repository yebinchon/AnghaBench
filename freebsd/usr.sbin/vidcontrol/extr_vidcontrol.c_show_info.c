
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errx (int,char*) ;
 int revert () ;
 int show_active_info () ;
 int show_adapter_info () ;
 int show_mode_info () ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void
show_info(char *arg)
{

 if (!strcmp(arg, "active")) {
  show_active_info();
 } else if (!strcmp(arg, "adapter")) {
  show_adapter_info();
 } else if (!strcmp(arg, "mode")) {
  show_mode_info();
 } else {
  revert();
  errx(1, "argument to -i must be active, adapter, or mode");
 }
}
