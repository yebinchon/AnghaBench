
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_name; } ;
typedef int in_addr_t ;
typedef int DIR ;


 int LOG_ERR ;
 int chdir (int ) ;
 int exit (int) ;
 int logmsg (int ,char*,...) ;
 scalar_t__ ntohl (int) ;
 int * opendir (char*) ;
 int pidfile_fh ;
 int pidfile_remove (int ) ;
 struct dirent* readdir (int *) ;
 int rewinddir (int *) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ strncmp (int ,char*,int) ;
 int tftp_dir ;

__attribute__((used)) static int
rarp_bootable(in_addr_t addr)
{
 struct dirent *dent;
 DIR *d;
 char ipname[9];
 static DIR *dd = ((void*)0);

 (void)sprintf(ipname, "%08X", (in_addr_t)ntohl(addr));




 if ((d = dd) != ((void*)0))
  rewinddir(d);
 else {
  if (chdir(tftp_dir) == -1) {
   logmsg(LOG_ERR, "chdir: %s: %m", tftp_dir);
   goto rarp_bootable_err;
  }
  d = opendir(".");
  if (d == ((void*)0)) {
   logmsg(LOG_ERR, "opendir: %m");
   goto rarp_bootable_err;
  }
  dd = d;
 }
 while ((dent = readdir(d)) != ((void*)0))
  if (strncmp(dent->d_name, ipname, 8) == 0)
   return 1;
 return 0;

rarp_bootable_err:
 pidfile_remove(pidfile_fh);
 exit(1);
}
