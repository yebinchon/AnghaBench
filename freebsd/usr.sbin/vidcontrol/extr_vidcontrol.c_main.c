
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DUMP_ALL ;
 int DUMP_FBF ;
 int DUMP_FMT_RAW ;
 int DUMP_FMT_TXT ;
 int clear_history () ;
 int dump_screen (int,int) ;
 int get_terminal_emulators () ;
 int getopt (int,char**,char const*) ;
 int hex ;
 int init () ;
 scalar_t__ is_vt4 () ;
 int load_default_scrnmap () ;
 int load_default_vt4font () ;
 int load_font (char*,char*) ;
 int load_scrnmap (char*) ;
 char* nextarg (int,char**,int*,float,int ) ;
 char* optarg ;
 int optind ;
 int print_scrnmap () ;
 int revert () ;
 int set_border_color (char*) ;
 int set_console (char*) ;
 int set_cursor_type (char*) ;
 int set_history (char*) ;
 int set_lockswitch (char*) ;
 int set_mouse (char*) ;
 int set_mouse_char (char*) ;
 int set_normal_colors (int,char**,int*) ;
 int set_reverse_colors (int,char**,int*) ;
 int set_screensaver_timeout (char*) ;
 int set_terminal_emulator (char*) ;
 int set_terminal_mode (char*) ;
 int show_info (char*) ;
 int sscanf (char*,char*,int *,int *) ;
 scalar_t__ strcmp (char*,char*) ;
 int test_frame () ;
 int usage () ;
 int vesa_cols ;
 int vesa_rows ;
 int video_mode (int,char**,int*) ;
 scalar_t__ vt4_mode ;
 int warnx (char*,char*) ;

int
main(int argc, char **argv)
{
 char *font, *type, *termmode;
 const char *opts;
 int dumpmod, dumpopt, opt;

 vt4_mode = is_vt4();

 init();

 dumpmod = 0;
 dumpopt = DUMP_FBF;
 termmode = ((void*)0);
 if (vt4_mode)
  opts = "b:Cc:fg:h:Hi:M:m:pPr:S:s:T:t:x";
 else
  opts = "b:Cc:deE:fg:h:Hi:l:LM:m:pPr:S:s:T:t:x";

 while ((opt = getopt(argc, argv, opts)) != -1)
  switch(opt) {
  case 'b':
   set_border_color(optarg);
   break;
  case 'C':
   clear_history();
   break;
  case 'c':
   set_cursor_type(optarg);
   break;
  case 'd':
   if (vt4_mode)
    break;
   print_scrnmap();
   break;
  case 'E':
   if (vt4_mode)
    break;
   set_terminal_emulator(optarg);
   break;
  case 'e':
   if (vt4_mode)
    break;
   get_terminal_emulators();
   break;
  case 'f':
   optarg = nextarg(argc, argv, &optind, 'f', 0);
   if (optarg != ((void*)0)) {
    font = nextarg(argc, argv, &optind, 'f', 0);

    if (font == ((void*)0)) {
     type = ((void*)0);
     font = optarg;
    } else
     type = optarg;

    load_font(type, font);
   } else {
    if (!vt4_mode)
     usage();

    load_default_vt4font();
   }
   break;
  case 'g':
   if (sscanf(optarg, "%dx%d",
       &vesa_cols, &vesa_rows) != 2) {
    revert();
    warnx("incorrect geometry: %s", optarg);
    usage();
   }
                 break;
  case 'h':
   set_history(optarg);
   break;
  case 'H':
   dumpopt = DUMP_ALL;
   break;
  case 'i':
   show_info(optarg);
   break;
  case 'l':
   if (vt4_mode)
    break;
   load_scrnmap(optarg);
   break;
  case 'L':
   if (vt4_mode)
    break;
   load_default_scrnmap();
   break;
  case 'M':
   set_mouse_char(optarg);
   break;
  case 'm':
   set_mouse(optarg);
   break;
  case 'p':
   dumpmod = DUMP_FMT_RAW;
   break;
  case 'P':
   dumpmod = DUMP_FMT_TXT;
   break;
  case 'r':
   set_reverse_colors(argc, argv, &optind);
   break;
  case 'S':
   set_lockswitch(optarg);
   break;
  case 's':
   set_console(optarg);
   break;
  case 'T':
   if (strcmp(optarg, "xterm") != 0 &&
       strcmp(optarg, "cons25") != 0)
    usage();
   termmode = optarg;
   break;
  case 't':
   set_screensaver_timeout(optarg);
   break;
  case 'x':
   hex = 1;
   break;
  default:
   usage();
  }

 if (dumpmod != 0)
  dump_screen(dumpmod, dumpopt);
 video_mode(argc, argv, &optind);
 set_normal_colors(argc, argv, &optind);

 if (optind < argc && !strcmp(argv[optind], "show")) {
  test_frame();
  optind++;
 }

 if (termmode != ((void*)0))
  set_terminal_mode(termmode);

 if ((optind != argc) || (argc == 1))
  usage();
 return (0);
}
