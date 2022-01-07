
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EBUSY ;
 int EOPNOTSUPP ;
 int LIST_EMPTY (int *) ;


 int MTX_DEF ;
 int mtx_init (int *,char*,int *,int ) ;
 int ngsocketlist_mtx ;
 int ngsocklist ;

__attribute__((used)) static int
ngs_mod_event(module_t mod, int event, void *data)
{
 int error = 0;

 switch (event) {
 case 129:
  mtx_init(&ngsocketlist_mtx, "ng_socketlist", ((void*)0), MTX_DEF);
  break;
 case 128:

  if (!LIST_EMPTY(&ngsocklist)) {
   error = EBUSY;
   break;
  }



  error = EBUSY;
  break;
 default:
  error = EOPNOTSUPP;
  break;
 }
 return (error);
}
