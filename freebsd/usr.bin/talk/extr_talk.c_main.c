
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LC_CTYPE ;
 int check_local () ;
 int check_writeable () ;
 int end_msgs () ;
 int get_names (int,char**) ;
 int init_display () ;
 int invite_remote () ;
 int open_ctl () ;
 int open_sockt () ;
 int set_edit_chars () ;
 int setlocale (int ,char*) ;
 int setproctitle (char*) ;
 int start_msgs () ;
 int talk () ;

int
main(int argc, char **argv)
{
 (void) setlocale(LC_CTYPE, "");

 get_names(argc, argv);
 setproctitle(" ");
 check_writeable();
 init_display();
 open_ctl();
 open_sockt();
 start_msgs();
 if (!check_local())
  invite_remote();
 end_msgs();
 set_edit_chars();
 talk();
 return 0;
}
