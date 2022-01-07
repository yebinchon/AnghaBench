
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nat64lsn_pgchunk {int dummy; } ;
struct nat64lsn_cfg {int plen4; scalar_t__ pgchunk_delete_delay; struct nat64lsn_alias* aliases; } ;
struct nat64lsn_alias {int tcp_chunkmask; int * tcp_pgmask; int * tcp; int timestamp; } ;


 scalar_t__ GET_AGE (int ) ;
 int ck_pr_btr_32 (int*,int) ;
 int ck_pr_fence_load () ;
 scalar_t__ ck_pr_load_32 (int *) ;
 struct nat64lsn_pgchunk* ck_pr_load_ptr (int *) ;

__attribute__((used)) static struct nat64lsn_pgchunk*
nat64lsn_expire_pgchunk(struct nat64lsn_cfg *cfg)
{
 return (((void*)0));
}
