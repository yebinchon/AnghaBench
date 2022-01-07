
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;
 int LIST_INIT (int *) ;


 int MTX_DEF ;
 int bstp_list ;
 int bstp_list_mtx ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static int
bstp_modevent(module_t mod, int type, void *data)
{
 switch (type) {
 case 129:
  mtx_init(&bstp_list_mtx, "bridgestp list", ((void*)0), MTX_DEF);
  LIST_INIT(&bstp_list);
  break;
 case 128:
  mtx_destroy(&bstp_list_mtx);
  break;
 default:
  return (EOPNOTSUPP);
 }
 return (0);
}
