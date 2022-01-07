
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;


 int xz_crc32_init () ;
 int xz_crc64_init () ;

__attribute__((used)) static int
xz_module_event_handler(module_t mod, int what, void *arg)
{
 int error;

 switch (what) {
 case 129:






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
