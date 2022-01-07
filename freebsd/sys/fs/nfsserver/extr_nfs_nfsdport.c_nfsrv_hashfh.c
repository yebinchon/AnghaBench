
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct fid {int dummy; } ;
struct TYPE_3__ {int fh_fid; } ;
typedef TYPE_1__ fhandle_t ;


 int hash32_buf (int *,int,int ) ;

uint32_t
nfsrv_hashfh(fhandle_t *fhp)
{
 uint32_t hashval;

 hashval = hash32_buf(&fhp->fh_fid, sizeof(struct fid), 0);
 return (hashval);
}
