
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nm_bridge {int bdg_flags; scalar_t__ bdg_active_ports; int bdg_saved_ops; int bdg_ops; int ht; int bdg_basename; } ;


 int EBUSY ;
 int NM_BDG_ACTIVE ;
 int NM_BNS_PUT (struct nm_bridge*) ;
 int memset (int *,int ,int) ;
 int nm_os_free (int ) ;
 int nm_prdis (char*,int ) ;

int
netmap_bdg_free(struct nm_bridge *b)
{
 if ((b->bdg_flags & NM_BDG_ACTIVE) + b->bdg_active_ports != 0) {
  return EBUSY;
 }

 nm_prdis("marking bridge %s as free", b->bdg_basename);
 nm_os_free(b->ht);
 memset(&b->bdg_ops, 0, sizeof(b->bdg_ops));
 memset(&b->bdg_saved_ops, 0, sizeof(b->bdg_saved_ops));
 b->bdg_flags = 0;
 NM_BNS_PUT(b);
 return 0;
}
