
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EINVAL ;




 int deinit_siftr () ;
 int init_siftr () ;

__attribute__((used)) static int
siftr_load_handler(module_t mod, int what, void *arg)
{
 int ret;

 switch (what) {
 case 131:
  ret = init_siftr();
  break;

 case 130:
 case 129:
  ret = deinit_siftr();
  break;

 case 128:
  ret = 0;
  break;

 default:
  ret = EINVAL;
  break;
 }

 return (ret);
}
