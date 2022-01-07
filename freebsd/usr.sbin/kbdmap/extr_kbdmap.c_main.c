
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * DEFAULT_SC_FONT ;
 int DEFAULT_SC_FONT_DIR ;
 int DEFAULT_SC_KEYMAP_DIR ;
 int SLIST_INIT (int *) ;
 scalar_t__ check_vt () ;
 int dir ;
 int extract_name (char*) ;
 int * font_current ;
 int * font_default ;
 int fontdir ;
 int fprintf (int ,char*) ;
 int * get_font () ;
 int get_locale () ;
 int head ;
 int keymapdir ;
 int lang ;
 int menu_read () ;
 int parse_args (int,char**) ;
 int program ;
 int sleep (int) ;
 int stderr ;
 scalar_t__ strcmp (int ,char*) ;
 scalar_t__ system (char*) ;
 scalar_t__ using_vt ;
 scalar_t__ x11 ;

int
main(int argc, char **argv)
{

 x11 = system("kbdcontrol -d >/dev/null");

 if (x11) {
  fprintf(stderr, "You are not on a virtual console - "
    "expect certain strange side-effects\n");
  sleep(2);
 }

 using_vt = check_vt();
 if (using_vt == 0) {
  keymapdir = DEFAULT_SC_KEYMAP_DIR;
  fontdir = DEFAULT_SC_FONT_DIR;
  font_default = DEFAULT_SC_FONT;
 }

 SLIST_INIT(&head);

 lang = get_locale();

 program = extract_name(argv[0]);

 font_current = get_font();
 if (font_current == ((void*)0))
  font_current = font_default;

 if (strcmp(program, "kbdmap"))
  dir = fontdir;
 else
  dir = keymapdir;


 parse_args(argc, argv);


 menu_read();

 return 0;
}
