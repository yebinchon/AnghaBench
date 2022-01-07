
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_OSD ;
 int OSD_DEBUG (char*) ;
 int free (void**,int ) ;

void
osd_free_reserved(void **rsv)
{

 OSD_DEBUG("Discarding reserved slot array.");
 free(rsv, M_OSD);
}
