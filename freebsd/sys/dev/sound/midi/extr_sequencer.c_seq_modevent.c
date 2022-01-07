
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;




 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;
 int nseq ;
 int seq_addunit () ;
 int seq_delunit (int ) ;
 int seqinfo_mtx ;

int
seq_modevent(module_t mod, int type, void *data)
{
 int retval, r;

 retval = 0;

 switch (type) {
 case 129:
  mtx_init(&seqinfo_mtx, "seqmod", ((void*)0), 0);
  retval = seq_addunit();
  break;

 case 128:
  while (nseq) {
   r = seq_delunit(nseq - 1);
   if (r) {
    retval = r;
    break;
   }
  }
  if (nseq == 0) {
   retval = 0;
   mtx_destroy(&seqinfo_mtx);
  }
  break;

 default:
  break;
 }

 return retval;
}
