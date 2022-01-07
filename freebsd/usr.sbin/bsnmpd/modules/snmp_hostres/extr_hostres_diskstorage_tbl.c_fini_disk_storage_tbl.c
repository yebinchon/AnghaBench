
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disk_entry {int dummy; } ;


 int LOG_ERR ;
 struct disk_entry* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct disk_entry*,int ) ;
 int close (int) ;
 struct disk_entry* disk_list ;
 int disk_tbl ;
 int free (struct disk_entry*) ;
 int link ;
 int md_fd ;
 int syslog (int ,char*) ;

void
fini_disk_storage_tbl(void)
{
 struct disk_entry *n1;

 while ((n1 = TAILQ_FIRST(&disk_tbl)) != ((void*)0)) {
  TAILQ_REMOVE(&disk_tbl, n1, link);
  free(n1);
 }

 free(disk_list);

 if (md_fd > 0) {
  if (close(md_fd) == -1)
   syslog(LOG_ERR,"close (/dev/mdctl) failed: %m");
  md_fd = -1;
 }
}
