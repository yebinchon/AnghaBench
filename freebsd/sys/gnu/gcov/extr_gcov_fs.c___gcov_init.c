
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gcov_info {int dummy; } ;


 int GCOV_ADD ;
 int LOG_INFO ;
 int gcov_event (int ,struct gcov_info*) ;
 scalar_t__ gcov_events_enabled ;
 int gcov_info_link (struct gcov_info*) ;
 unsigned int gcov_info_version (struct gcov_info*) ;
 int gcov_mtx ;
 int log (int ,char*,unsigned int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
__gcov_init(struct gcov_info *info)
{
 static unsigned int gcov_version;

 mtx_lock(&gcov_mtx);
 if (gcov_version == 0) {
  gcov_version = gcov_info_version(info);




  log(LOG_INFO, "version magic: 0x%x\n", gcov_version);
 }




 gcov_info_link(info);
 if (gcov_events_enabled)
  gcov_event(GCOV_ADD, info);
 mtx_unlock(&gcov_mtx);
}
