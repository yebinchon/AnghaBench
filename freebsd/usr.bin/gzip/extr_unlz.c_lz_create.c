
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lz_decoder {int dict_size; int wrapped; int * fin; int rdec; int * obuf; int crc; scalar_t__ spos; scalar_t__ ppos; scalar_t__ pos; int * fout; } ;


 int dup (int) ;
 void* fdopen (int ,char*) ;
 int lz_destroy (struct lz_decoder*) ;
 int lz_rd_create (int *,int *) ;
 int * malloc (int) ;
 int memset (struct lz_decoder*,int ,int) ;

__attribute__((used)) static int
lz_create(struct lz_decoder *lz, int fin, int fdout, int dict_size)
{
 memset(lz, 0, sizeof(*lz));

 lz->fin = fdopen(dup(fin), "r");
 if (lz->fin == ((void*)0))
  goto out;

 lz->fout = fdopen(dup(fdout), "w");
 if (lz->fout == ((void*)0))
  goto out;

 lz->pos = lz->ppos = lz->spos = 0;
 lz->crc = ~0;
 lz->dict_size = dict_size;
 lz->wrapped = 0;

 lz->obuf = malloc(dict_size);
 if (lz->obuf == ((void*)0))
  goto out;

 if (lz_rd_create(&lz->rdec, lz->fin) == -1)
  goto out;
 return 0;
out:
 lz_destroy(lz);
 return -1;
}
