
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ND_REDIRECT_ROUTER ;



__attribute__((used)) static int
nd6_is_router(int type, int code, int is_new, int old_addr, int new_addr,
    int ln_router)
{
 switch (type & 0xff) {
 case 131:



  if (is_new)
   ln_router = 0;
  break;
 case 130:





  if (code == ND_REDIRECT_ROUTER)
   ln_router = 1;
  else {
   if (is_new)
    ln_router = 0;
  }
  break;
 case 128:



  ln_router = 0;
  break;
 case 129:



  if ((!is_new && (old_addr || new_addr)) ||
      (is_new && new_addr)) {
   ln_router = 1;
  }
  break;
 }

 return (ln_router);
}
