
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long uint32_t ;


 int A_TP_CMM_TCB_BASE ;
 int EINVAL ;
 unsigned int TCB_SIZE ;
 int read_mem (long long,unsigned int,int ) ;
 int read_reg (int ,int,long long*) ;
 int show_tcb ;
 char* str_to_number (char const*,long*,int *) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
read_tcb(int argc, const char *argv[])
{
 char *p;
 long l;
 long long val;
 unsigned int tid;
 uint32_t addr;
 int rc;

 if (argc != 1) {
  warnx("incorrect number of arguments.");
  return (EINVAL);
 }

 p = str_to_number(argv[0], &l, ((void*)0));
 if (*p) {
  warnx("invalid tid \"%s\"", argv[0]);
  return (EINVAL);
 }
 tid = l;

 rc = read_reg(A_TP_CMM_TCB_BASE, 4, &val);
 if (rc != 0)
  return (rc);

 addr = val + tid * TCB_SIZE;

 return (read_mem(addr, TCB_SIZE, show_tcb));
}
