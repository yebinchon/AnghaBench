
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbuf {int dummy; } ;
struct mount {int dummy; } ;






 char CC_NONWHITESPACE ;
 int EDOOFUS ;
 int PE_EOL ;
 int RB_NOSYNC ;
 struct mount* TAILQ_NEXT (struct mount*,int ) ;
 int kern_reboot (int ) ;
 int mnt_list ;
 int panic (char*) ;
 int parse_advance (char**) ;
 int parse_directive (char**) ;
 int parse_mount (char**) ;
 char parse_peek (char**) ;
 int parse_skipto (char**,char) ;
 int printf (char*) ;
 int root_mount_mddev ;
 int root_mount_onfail ;
 char* sbuf_data (struct sbuf*) ;

__attribute__((used)) static int
vfs_mountroot_parse(struct sbuf *sb, struct mount *mpdevfs)
{
 struct mount *mp;
 char *conf;
 int error;

 root_mount_mddev = -1;

retry:
 conf = sbuf_data(sb);
 mp = TAILQ_NEXT(mpdevfs, mnt_list);
 error = (mp == ((void*)0)) ? 0 : EDOOFUS;
 root_mount_onfail = 131;
 while (mp == ((void*)0)) {
  error = parse_skipto(&conf, CC_NONWHITESPACE);
  if (error == PE_EOL) {
   parse_advance(&conf);
   continue;
  }
  if (error < 0)
   break;
  switch (parse_peek(&conf)) {
  case '#':
   error = parse_skipto(&conf, '\n');
   break;
  case '.':
   error = parse_directive(&conf);
   break;
  default:
   error = parse_mount(&conf);
   if (error == -1) {
    printf("mountroot: invalid file system "
        "specification.\n");
    error = 0;
   }
   break;
  }
  if (error < 0)
   break;

  if (parse_peek(&conf) != '\n') {
   printf("mountroot: advancing to next directive...\n");
   (void)parse_skipto(&conf, '\n');
  }
  mp = TAILQ_NEXT(mpdevfs, mnt_list);
 }
 if (mp != ((void*)0))
  return (0);




 switch (root_mount_onfail) {
 case 131:
  break;
 case 130:
  panic("mountroot: unable to (re-)mount root.");

 case 128:
  goto retry;
 case 129:
  kern_reboot(RB_NOSYNC);

 }

 return (error);
}
