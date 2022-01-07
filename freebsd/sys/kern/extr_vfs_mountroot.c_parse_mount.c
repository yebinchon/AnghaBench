
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mntarg {int dummy; } ;


 int EDOOFUS ;
 int ENOENT ;
 int ERRMSGL ;
 int MNT_ROOTFS ;
 int M_TEMP ;
 int M_WAITOK ;
 int M_ZERO ;
 scalar_t__ bootverbose ;
 int free (char*,int ) ;
 int hz ;
 int kernel_mount (struct mntarg*,int ) ;
 char* malloc (int,int ,int) ;
 struct mntarg* mount_arg (struct mntarg*,char*,char*,int) ;
 int parse_advance (char**) ;
 struct mntarg* parse_mountroot_options (struct mntarg*,char*) ;
 int parse_poke (char**,char) ;
 int parse_skipto (char**,char) ;
 int parse_token (char**,char**) ;
 int pause (char*,int) ;
 int printf (char*,...) ;
 int root_mount_mddev ;
 int root_mount_timeout ;
 int strlcpy (char*,char*,int) ;
 char* strstr (char*,char*) ;
 int * vfs_byname (char*) ;
 int vfs_mountroot_wait_if_neccessary (char*,char*) ;

__attribute__((used)) static int
parse_mount(char **conf)
{
 char *errmsg;
 struct mntarg *ma;
 char *dev, *fs, *opts, *tok;
 int delay, error, timeout;

 error = parse_token(conf, &tok);
 if (error)
  return (error);
 fs = tok;
 error = parse_skipto(&tok, ':');
 if (error) {
  free(fs, M_TEMP);
  return (error);
 }
 parse_poke(&tok, '\0');
 parse_advance(&tok);
 dev = tok;

 if (root_mount_mddev != -1) {

  tok = strstr(dev, "md#");
  if (tok != ((void*)0))
   tok[2] = '0' + root_mount_mddev;
 }


 error = parse_token(conf, &tok);
 opts = (error == 0) ? tok : ((void*)0);

 printf("Trying to mount root from %s:%s [%s]...\n", fs, dev,
     (opts != ((void*)0)) ? opts : "");

 errmsg = malloc(ERRMSGL, M_TEMP, M_WAITOK | M_ZERO);

 if (vfs_byname(fs) == ((void*)0)) {
  strlcpy(errmsg, "unknown file system", ERRMSGL);
  error = ENOENT;
  goto out;
 }

 error = vfs_mountroot_wait_if_neccessary(fs, dev);
 if (error != 0)
  goto out;

 delay = hz / 10;
 timeout = root_mount_timeout * hz;

 for (;;) {
  ma = ((void*)0);
  ma = mount_arg(ma, "fstype", fs, -1);
  ma = mount_arg(ma, "fspath", "/", -1);
  ma = mount_arg(ma, "from", dev, -1);
  ma = mount_arg(ma, "errmsg", errmsg, ERRMSGL);
  ma = mount_arg(ma, "ro", ((void*)0), 0);
  ma = parse_mountroot_options(ma, opts);

  error = kernel_mount(ma, MNT_ROOTFS);
  if (error == 0 || timeout <= 0)
   break;

  if (root_mount_timeout * hz == timeout ||
      (bootverbose && timeout % hz == 0)) {
   printf("Mounting from %s:%s failed with error %d; "
       "retrying for %d more second%s\n", fs, dev, error,
       timeout / hz, (timeout / hz > 1) ? "s" : "");
  }
  pause("rmretry", delay);
  timeout -= delay;
 }
 out:
 if (error) {
  printf("Mounting from %s:%s failed with error %d",
      fs, dev, error);
  if (errmsg[0] != '\0')
   printf(": %s", errmsg);
  printf(".\n");
 }
 free(fs, M_TEMP);
 free(errmsg, M_TEMP);
 if (opts != ((void*)0))
  free(opts, M_TEMP);

 return ((error < 0) ? EDOOFUS : error);
}
