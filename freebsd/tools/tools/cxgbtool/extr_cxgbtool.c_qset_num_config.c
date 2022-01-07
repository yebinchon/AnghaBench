
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ch_reg {int val; } ;


 int CHELSIO_GET_QSET_NUM ;
 scalar_t__ doit (char const*,int ,struct ch_reg*) ;
 int err (int,char*) ;
 int printf (char*,int) ;

__attribute__((used)) static int
qset_num_config(int argc, char *argv[], int start_arg, const char *iff_name)
{
 struct ch_reg reg;

 (void) argv;

 if (argc == start_arg) {
  if (doit(iff_name, CHELSIO_GET_QSET_NUM, &reg) < 0)
   err(1, "get qsets");
  printf("%u\n", reg.val);
  return 0;
 }

 return -1;
}
