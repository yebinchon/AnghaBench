
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KBADDKBD ;
 int KBRELKBD ;
 int add_keymap_path (int ) ;
 int exit (int ) ;
 int getopt (int,char**,char const*) ;
 int hex ;
 int load_default_functionkeys () ;
 int load_keymap (int ,int) ;
 int mux_keyboard (int ,int ) ;
 int nextarg (int,char**,int*,float) ;
 int optarg ;
 int optind ;
 int optreset ;
 int print_keymap () ;
 int release_keyboard () ;
 int set_bell_values (int ) ;
 int set_functionkey (int ,int ) ;
 int set_keyboard (int ) ;
 int set_keyrates (int ) ;
 int show_kbd_info () ;
 int usage () ;

int
main(int argc, char **argv)
{
 const char *optstring = "A:a:b:df:iKk:Fl:L:P:r:x";
 int opt;


 while ((opt = getopt(argc, argv, optstring)) != -1) {
  if (opt == 'P')
   add_keymap_path(optarg);
  if (opt == '?')
   usage();
 }

 optind = optreset = 1;
 while ((opt = getopt(argc, argv, optstring)) != -1)
  switch(opt) {
  case 'A':
  case 'a':
   mux_keyboard((opt == 'A')? KBRELKBD : KBADDKBD, optarg);
   break;
  case 'b':
   set_bell_values(optarg);
   break;
  case 'd':
   print_keymap();
   break;
  case 'l':
   load_keymap(optarg, 0);
   break;
  case 'L':
   load_keymap(optarg, 1);
   break;
  case 'P':
   break;
  case 'f':
   set_functionkey(optarg,
       nextarg(argc, argv, &optind, 'f'));
   break;
  case 'F':
   load_default_functionkeys();
   break;
  case 'i':
   show_kbd_info();
   break;
  case 'K':
   release_keyboard();
   break;
  case 'k':
   set_keyboard(optarg);
   break;
  case 'r':
   set_keyrates(optarg);
   break;
  case 'x':
   hex = 1;
   break;
  default:
   usage();
  }
 if ((optind != argc) || (argc == 1))
  usage();
 exit(0);
}
