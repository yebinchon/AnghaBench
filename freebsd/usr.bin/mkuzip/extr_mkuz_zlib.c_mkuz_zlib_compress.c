
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ uLongf ;
struct mkuz_zlib {int comp_level; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct mkuz_blk {TYPE_1__ info; int data; scalar_t__ alen; } ;


 scalar_t__ Z_OK ;
 scalar_t__ compress2 (int ,scalar_t__*,int ,scalar_t__,int ) ;
 int errx (int,char*) ;

void
mkuz_zlib_compress(void *p, const struct mkuz_blk *iblk, struct mkuz_blk *oblk)
{
 uLongf destlen_z;
 struct mkuz_zlib *zp;

 zp = (struct mkuz_zlib *)p;

 destlen_z = oblk->alen;
 if (compress2(oblk->data, &destlen_z, iblk->data, iblk->info.len,
     zp->comp_level) != Z_OK) {
  errx(1, "can't compress data: compress2() failed");

 }

 oblk->info.len = (uint32_t)destlen_z;
}
