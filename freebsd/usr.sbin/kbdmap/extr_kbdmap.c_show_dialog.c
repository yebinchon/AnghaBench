
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keymap {char* desc; } ;
typedef int choice ;
typedef int FILE ;


 int asprintf (char**,char*,int ) ;
 int close (int) ;
 int do_kbdcontrol (struct keymap*) ;
 int do_vidfont (struct keymap*) ;
 int exit (int) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 char* font ;
 char* font_current ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 scalar_t__ malloc (scalar_t__) ;
 int menu ;
 int mkstemp (char*) ;
 char* program ;
 int remove (char*) ;
 int stderr ;
 int strcat (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;
 int system (char*) ;
 int vidcontrol (char*) ;

__attribute__((used)) static void
show_dialog(struct keymap **km_sorted, int num_keymaps)
{
 FILE *fp;
 char *cmd, *dialog;
 char tmp_name[] = "/tmp/_kbd_lang.XXXX";
 int fd, i, size;

 fd = mkstemp(tmp_name);
 if (fd == -1) {
  fprintf(stderr, "Could not open temporary file \"%s\"\n",
      tmp_name);
  exit(1);
 }
 asprintf(&dialog, "/usr/bin/dialog --clear --title \"Keyboard Menu\" "
     "--menu \"%s\" 0 0 0", menu);
 if (font && strcmp(font, font_current))
  vidcontrol(font);


 size = 0;
 for (i=0; i<num_keymaps; i++) {




  size += strlen(km_sorted[i]->desc) + 6;
 }


 size += strlen(tmp_name) + 3;

 cmd = (char *) malloc(strlen(dialog) + size + 1);
 strcpy(cmd, dialog);

 for (i=0; i<num_keymaps; i++) {
  strcat(cmd, " \"");
  strcat(cmd, km_sorted[i]->desc);
  strcat(cmd, "\"");
  strcat(cmd, " \"\"");
 }

 strcat(cmd, " 2>");
 strcat(cmd, tmp_name);


 system(cmd);

 fp = fopen(tmp_name, "r");
 if (fp) {
  char choice[64];
  if (fgets(choice, sizeof(choice), fp) != ((void*)0)) {

   for (i=0; i<num_keymaps; i++) {
    if (!strcmp(choice, km_sorted[i]->desc)) {
     if (!strcmp(program, "kbdmap"))
      do_kbdcontrol(km_sorted[i]);
     else
      do_vidfont(km_sorted[i]);
     break;
    }
   }
  } else {
   if (font != ((void*)0) && strcmp(font, font_current))

    vidcontrol(font_current);
  }
  fclose(fp);
 } else
  fprintf(stderr, "Failed to open temporary file");


 remove(tmp_name);
 free(cmd);
 free(dialog);
 close(fd);
}
