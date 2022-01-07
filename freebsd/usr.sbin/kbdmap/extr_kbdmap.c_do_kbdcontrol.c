
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keymap {char* keym; } ;


 int asprintf (char**,char*,int ,char*) ;
 int dir ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int stderr ;
 int system (char*) ;
 int x11 ;

__attribute__((used)) static void
do_kbdcontrol(struct keymap *km)
{
 char *kbd_cmd;
 asprintf(&kbd_cmd, "kbdcontrol -l %s/%s", dir, km->keym);

 if (!x11)
  system(kbd_cmd);

 fprintf(stderr, "keymap=\"%s\"\n", km->keym);
 free(kbd_cmd);
}
