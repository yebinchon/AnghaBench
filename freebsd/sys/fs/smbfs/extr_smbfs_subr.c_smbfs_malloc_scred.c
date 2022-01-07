
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_cred {int dummy; } ;


 int M_SMBFSCRED ;
 int M_WAITOK ;
 void* malloc (int,int ,int ) ;

void *
smbfs_malloc_scred(void)
{
 return (malloc(sizeof(struct smb_cred), M_SMBFSCRED, M_WAITOK));
}
