
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lz_decoder {scalar_t__ pos; scalar_t__ spos; scalar_t__ obuf; int wrapped; scalar_t__ dict_size; int ppos; int fout; int crc; } ;
typedef scalar_t__ off_t ;


 size_t fwrite (scalar_t__,int,size_t,int ) ;
 int lz_crc_update (int *,scalar_t__,size_t) ;

__attribute__((used)) static int
lz_flush(struct lz_decoder *lz)
{
 off_t offs = lz->pos - lz->spos;
 if (offs <= 0)
  return -1;

 size_t size = (size_t)offs;
 lz_crc_update(&lz->crc, lz->obuf + lz->spos, size);
 if (fwrite(lz->obuf + lz->spos, 1, size, lz->fout) != size)
  return -1;

 lz->wrapped = lz->pos >= lz->dict_size;
 if (lz->wrapped) {
  lz->ppos += lz->pos;
  lz->pos = 0;
 }
 lz->spos = lz->pos;
 return 0;
}
