
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ zp_size; } ;
typedef TYPE_1__ znode_phys_t ;
typedef int spa_t ;
typedef scalar_t__ off_t ;
struct TYPE_6__ {scalar_t__ dn_bonus; } ;
typedef TYPE_2__ dnode_phys_t ;


 int dnode_read (int *,TYPE_2__*,scalar_t__,void*,size_t) ;

__attribute__((used)) static int
zfs_read(spa_t *spa, dnode_phys_t *dn, void *buf, size_t size, off_t off)
{
 const znode_phys_t *zp = (const znode_phys_t *) dn->dn_bonus;
 size_t n;
 int rc;

 n = size;
 if (off + n > zp->zp_size)
  n = zp->zp_size - off;

 rc = dnode_read(spa, dn, off, buf, n);
 if (rc != 0)
  return (-rc);

 return (n);
}
