
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mddev ;


 int LOG_ERR ;
 int MDCTL_NAME ;
 int O_RDWR ;
 char* _PATH_DEV ;
 int md_fd ;
 int mdmaybeload () ;
 int open (char*,int ) ;
 int refresh_disk_storage_tbl (int) ;
 int snprintf (char*,int,char*,char*,int ) ;
 int syslog (int ,char*,char*) ;

int
init_disk_storage_tbl(void)
{
 char mddev[32] = "";


 mdmaybeload();

 md_fd = -1;
 snprintf(mddev, sizeof(mddev) - 1, "%s%s", _PATH_DEV, MDCTL_NAME);
 if ((md_fd = open(mddev, O_RDWR)) == -1) {
  syslog(LOG_ERR, "open %s failed - will not include md(4) "
      "info: %m", mddev);
 }

 refresh_disk_storage_tbl(1);

 return (0);
}
