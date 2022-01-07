
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;


 int MTX_DEF ;
 int callout_free ;
 int callout_free_arg ;
 int * callout_free_func ;
 int callout_free_mutex ;
 int callout_init_mtx (int *,int *,int ) ;
 int callout_reset (int *,int,int *,int *) ;
 int hz ;
 int mtx_init (int *,char*,int *,int ) ;
 int printf (char*,int *) ;

__attribute__((used)) static int
callout_free_load(module_t mod, int cmd, void *arg)
{
 int error;

 switch (cmd) {
 case 129:
  mtx_init(&callout_free_mutex, "callout_free", ((void*)0), MTX_DEF);




  callout_init_mtx(&callout_free, &callout_free_mutex, 0);
  printf("callout_free_func = %p\n", callout_free_func);
  printf("callout_free_arg = %p\n", &callout_free_arg);
  callout_reset(&callout_free, hz/10, callout_free_func,
      &callout_free_arg);
  error = 0;
  break;

 case 128:
  error = 0;
  break;

 default:
  error = EOPNOTSUPP;
  break;
 }

 return (error);
}
