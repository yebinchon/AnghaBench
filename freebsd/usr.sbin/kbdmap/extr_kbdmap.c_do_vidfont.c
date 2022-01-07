
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct keymap {char* keym; } ;


 int asprintf (char**,char*,int ,char*) ;
 int dir ;
 int free (char*) ;
 char* get_extension (char*) ;
 int printf (char*,char*,char*) ;
 char* strdup (char*) ;
 char* strrchr (char*,char) ;
 int vidcontrol (char*) ;

__attribute__((used)) static void
do_vidfont(struct keymap *km)
{
 char *vid_cmd, *tmp, *p, *q;

 asprintf(&vid_cmd, "%s/%s", dir, km->keym);
 vidcontrol(vid_cmd);
 free(vid_cmd);

 tmp = strdup(km->keym);
 p = strrchr(tmp, '-');
 if (p && p[1]!='\0') {
  p++;
  q = get_extension(p);
  if (q) {
   *q = '\0';
   printf("font%s=%s\n", p, km->keym);
  }
 }
 free(tmp);
}
