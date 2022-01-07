
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device_map_entry {struct device_map_entry* location_key; struct device_map_entry* name_key; int * entry_p; } ;


 int FREE_DEV_STRUCT (int *) ;
 struct device_map_entry* STAILQ_FIRST (int *) ;
 int STAILQ_REMOVE_HEAD (int *,int ) ;
 int TAILQ_EMPTY (int *) ;
 int TAILQ_REMOVE (int *,int *,int ) ;
 int assert (int ) ;
 int close (int) ;
 int * devd_fd ;
 int devd_sock ;
 int device_map ;
 int device_tbl ;
 int devinfo_free () ;
 int fd_deselect (int *) ;
 int free (struct device_map_entry*) ;
 int link ;

void
fini_device_tbl(void)
{
 struct device_map_entry *n1;

 if (devd_fd != ((void*)0))
  fd_deselect(devd_fd);

 if (devd_sock != -1)
  (void)close(devd_sock);

 devinfo_free();

      while ((n1 = STAILQ_FIRST(&device_map)) != ((void*)0)) {
  STAILQ_REMOVE_HEAD(&device_map, link);
  if (n1->entry_p != ((void*)0)) {
   TAILQ_REMOVE(&device_tbl, n1->entry_p, link);
   FREE_DEV_STRUCT(n1->entry_p);
  }
  free(n1->name_key);
  free(n1->location_key);
  free(n1);
      }
 assert(TAILQ_EMPTY(&device_tbl));
}
