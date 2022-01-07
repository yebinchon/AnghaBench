
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsconf {int dummy; } ;


 int SMBVDEBUG (char*) ;
 int nswbuf ;
 int pbuf_zsecond_create (char*,int) ;
 int smbfs_pbuf_zone ;

int
smbfs_init(struct vfsconf *vfsp)
{

 smbfs_pbuf_zone = pbuf_zsecond_create("smbpbuf", nswbuf / 2);
 SMBVDEBUG("done.\n");
 return 0;
}
