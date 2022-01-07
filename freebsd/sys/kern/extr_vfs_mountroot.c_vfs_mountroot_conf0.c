
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;


 int M_TEMP ;
 int RB_ASKNAME ;
 int RB_CDROM ;
 int RB_DFLTROOT ;
 int ROOTDEVNAME ;
 int boothowto ;
 int free (char*,int ) ;
 int freeenv (char*) ;
 char* kern_getenv (char*) ;
 int parse_token (char**,char**) ;
 int root_mount_timeout ;
 int ** rootdevnames ;
 int sbuf_printf (struct sbuf*,char*,...) ;

__attribute__((used)) static void
vfs_mountroot_conf0(struct sbuf *sb)
{
 char *s, *tok, *mnt, *opt;
 int error;

 sbuf_printf(sb, ".onfail panic\n");
 sbuf_printf(sb, ".timeout %d\n", root_mount_timeout);
 if (boothowto & RB_ASKNAME)
  sbuf_printf(sb, ".ask\n");




 if (boothowto & RB_CDROM) {
  sbuf_printf(sb, "cd9660:/dev/cd0 ro\n");
  sbuf_printf(sb, ".timeout 0\n");
  sbuf_printf(sb, "cd9660:/dev/cd1 ro\n");
  sbuf_printf(sb, ".timeout %d\n", root_mount_timeout);
 }
 s = kern_getenv("vfs.root.mountfrom");
 if (s != ((void*)0)) {
  opt = kern_getenv("vfs.root.mountfrom.options");
  tok = s;
  error = parse_token(&tok, &mnt);
  while (!error) {
   sbuf_printf(sb, "%s %s\n", mnt,
       (opt != ((void*)0)) ? opt : "");
   free(mnt, M_TEMP);
   error = parse_token(&tok, &mnt);
  }
  if (opt != ((void*)0))
   freeenv(opt);
  freeenv(s);
 }
 if (rootdevnames[0] != ((void*)0))
  sbuf_printf(sb, "%s\n", rootdevnames[0]);
 if (rootdevnames[1] != ((void*)0))
  sbuf_printf(sb, "%s\n", rootdevnames[1]);




 if (!(boothowto & RB_ASKNAME))
  sbuf_printf(sb, ".ask\n");
}
