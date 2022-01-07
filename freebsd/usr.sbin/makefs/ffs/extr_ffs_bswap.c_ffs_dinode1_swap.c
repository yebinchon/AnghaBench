
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs1_dinode {void* di_gid; void* di_uid; void* di_gen; void* di_blocks; void* di_flags; int di_ib; int di_db; void* di_ctimensec; void* di_ctime; void* di_mtimensec; void* di_mtime; void* di_atimensec; void* di_atime; int di_size; void* di_nlink; void* di_mode; } ;


 void* bswap16 (void*) ;
 void* bswap32 (void*) ;
 int bswap64 (int ) ;
 int memcpy (int ,int ,int) ;

void
ffs_dinode1_swap(struct ufs1_dinode *o, struct ufs1_dinode *n)
{

 n->di_mode = bswap16(o->di_mode);
 n->di_nlink = bswap16(o->di_nlink);
 n->di_size = bswap64(o->di_size);
 n->di_atime = bswap32(o->di_atime);
 n->di_atimensec = bswap32(o->di_atimensec);
 n->di_mtime = bswap32(o->di_mtime);
 n->di_mtimensec = bswap32(o->di_mtimensec);
 n->di_ctime = bswap32(o->di_ctime);
 n->di_ctimensec = bswap32(o->di_ctimensec);
 memcpy(n->di_db, o->di_db, sizeof(n->di_db));
 memcpy(n->di_ib, o->di_ib, sizeof(n->di_ib));
 n->di_flags = bswap32(o->di_flags);
 n->di_blocks = bswap32(o->di_blocks);
 n->di_gen = bswap32(o->di_gen);
 n->di_uid = bswap32(o->di_uid);
 n->di_gid = bswap32(o->di_gid);
}
