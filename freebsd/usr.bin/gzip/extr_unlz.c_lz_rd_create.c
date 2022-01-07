
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct lz_range_decoder {int code; int * fp; int range; } ;
typedef int FILE ;


 scalar_t__ ferror (int *) ;
 scalar_t__ getc (int *) ;

__attribute__((used)) static int
lz_rd_create(struct lz_range_decoder *rd, FILE *fp)
{
 rd->fp = fp;
 rd->code = 0;
 rd->range = ~0;
 for (int i = 0; i < 5; i++)
  rd->code = (rd->code << 8) | (uint8_t)getc(rd->fp);
 return ferror(rd->fp) ? -1 : 0;
}
