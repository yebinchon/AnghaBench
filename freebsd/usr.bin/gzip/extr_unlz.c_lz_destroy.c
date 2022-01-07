
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lz_decoder {int obuf; scalar_t__ fout; scalar_t__ fin; } ;


 int fclose (scalar_t__) ;
 int free (int ) ;

__attribute__((used)) static void
lz_destroy(struct lz_decoder *lz)
{
 if (lz->fin)
  fclose(lz->fin);
 if (lz->fout)
  fclose(lz->fout);
 free(lz->obuf);
}
