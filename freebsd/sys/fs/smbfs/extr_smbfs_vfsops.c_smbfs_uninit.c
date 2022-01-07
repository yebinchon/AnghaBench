
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsconf {int dummy; } ;


 int SMBVDEBUG (char*) ;
 int smbfs_pbuf_zone ;
 int uma_zdestroy (int ) ;

int
smbfs_uninit(struct vfsconf *vfsp)
{

 uma_zdestroy(smbfs_pbuf_zone);
 SMBVDEBUG("done.\n");
 return 0;
}
