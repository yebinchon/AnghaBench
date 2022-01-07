
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int name ;


 int CFE_ENV_SIZE ;
 int KENV_MNAMELEN ;
 int KENV_MVALLEN ;
 scalar_t__ cfe_enumenv (int,char*,int,char*,int) ;
 int cfe_env_buf ;
 int init_static_kenv (int ,int ) ;
 scalar_t__ kern_setenv (char*,char*) ;
 int printf (char*,char*,char*) ;

void
cfe_env_init(void)
{
 int idx;
 char name[KENV_MNAMELEN], val[KENV_MVALLEN];

 init_static_kenv(cfe_env_buf, CFE_ENV_SIZE);

 idx = 0;
 while (1) {
  if (cfe_enumenv(idx, name, sizeof(name), val, sizeof(val)) != 0)
   break;

  if (kern_setenv(name, val) != 0) {
   printf("No space to store CFE env: \"%s=%s\"\n",
    name, val);
  }
  ++idx;
 }
}
