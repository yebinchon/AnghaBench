
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct direct {int d_namlen; char* d_name; int d_type; int d_ino; int d_reclen; } ;
typedef scalar_t__ doff_t ;
struct TYPE_3__ {int size; int cur; scalar_t__ buf; } ;
typedef TYPE_1__ dirbuf_t ;


 int DTTOIF (int ) ;
 int assert (int) ;
 char* inode_type (int ) ;
 int printf (char*,...) ;
 int ufs_rw16 (int ,int) ;
 int ufs_rw32 (int ,int) ;

__attribute__((used)) static void
ffs_dump_dirbuf(dirbuf_t *dbuf, const char *dir, int needswap)
{
 doff_t i;
 struct direct *de;
 uint16_t reclen;

 assert (dbuf != ((void*)0));
 assert (dir != ((void*)0));
 printf("ffs_dump_dirbuf: dir %s size %d cur %d\n",
     dir, dbuf->size, dbuf->cur);

 for (i = 0; i < dbuf->size; ) {
  de = (struct direct *)(dbuf->buf + i);
  reclen = ufs_rw16(de->d_reclen, needswap);
  printf(
     " inode %4d %7s offset %4d reclen %3d namlen %3d name %s\n",
      ufs_rw32(de->d_ino, needswap),
      inode_type(DTTOIF(de->d_type)), i, reclen,
      de->d_namlen, de->d_name);
  i += reclen;
  assert(reclen > 0);
 }
}
