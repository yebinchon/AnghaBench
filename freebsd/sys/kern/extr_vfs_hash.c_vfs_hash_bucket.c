
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct vfs_hash_head {int dummy; } ;
struct mount {size_t mnt_hashseed; } ;


 size_t vfs_hash_mask ;
 struct vfs_hash_head* vfs_hash_tbl ;

__attribute__((used)) static struct vfs_hash_head *
vfs_hash_bucket(const struct mount *mp, u_int hash)
{

 return (&vfs_hash_tbl[(hash + mp->mnt_hashseed) & vfs_hash_mask]);
}
