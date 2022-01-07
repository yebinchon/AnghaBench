
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysctl_oid {int dummy; } ;
struct bnxt_nvram_info {int available_size; int nvm_ctx; int reserved_size; int size; int sector_size; int device_id; int mfg_id; struct sysctl_oid* nvm_oid; } ;


 int CTLFLAG_RD ;
 int ENOMEM ;
 int OID_AUTO ;
 int SYSCTL_ADD_U16 (int *,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_ADD_U32 (int *,int ,int ,char*,int ,int *,int ,char*) ;
 int SYSCTL_CHILDREN (struct sysctl_oid*) ;

int
bnxt_create_nvram_sysctls(struct bnxt_nvram_info *ni)
{
 struct sysctl_oid *oid = ni->nvm_oid;

 if (!oid)
  return ENOMEM;

 SYSCTL_ADD_U16(&ni->nvm_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
     "mfg_id", CTLFLAG_RD, &ni->mfg_id, 0, "manufacturer id");
 SYSCTL_ADD_U16(&ni->nvm_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
     "device_id", CTLFLAG_RD, &ni->device_id, 0, "device id");
 SYSCTL_ADD_U32(&ni->nvm_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
     "sector_size", CTLFLAG_RD, &ni->sector_size, 0, "sector size");
 SYSCTL_ADD_U32(&ni->nvm_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
     "size", CTLFLAG_RD, &ni->size, 0, "nvram total size");
 SYSCTL_ADD_U32(&ni->nvm_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
     "reserved_size", CTLFLAG_RD, &ni->reserved_size, 0,
     "total reserved space");
 SYSCTL_ADD_U32(&ni->nvm_ctx, SYSCTL_CHILDREN(oid), OID_AUTO,
     "available_size", CTLFLAG_RD, &ni->available_size, 0,
     "total available space");

 return 0;
}
