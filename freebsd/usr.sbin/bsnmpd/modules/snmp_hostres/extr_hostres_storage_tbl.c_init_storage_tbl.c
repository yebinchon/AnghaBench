
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ERR ;
 int * memstat_mtl_alloc () ;
 int * mt_list ;
 int refresh_storage_tbl (int) ;
 int syslog (int ,char*) ;

void
init_storage_tbl(void)
{
 if ((mt_list = memstat_mtl_alloc()) == ((void*)0))
  syslog(LOG_ERR,
      "hrStorageTable: memstat_mtl_alloc() failed: %m");

 refresh_storage_tbl(1);
}
