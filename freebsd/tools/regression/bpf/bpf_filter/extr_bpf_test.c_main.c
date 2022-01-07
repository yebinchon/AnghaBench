
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 scalar_t__ BPF_NRUNS ;
 int FAILED ;
 int PASSED ;
 int SIGHUP ;
 int SIGUSR2 ;
 scalar_t__ bpf_compile_and_filter () ;
 scalar_t__ bpf_filter (int *,int ,int ,int ) ;
 int bpf_validate (int *,scalar_t__) ;
 int buflen ;
 scalar_t__ expect ;
 scalar_t__ expect_signal ;
 scalar_t__ invalid ;
 scalar_t__ nins ;
 int * pc ;
 int pkt ;
 int printf (char*,...) ;
 int sig_handler ;
 int signal (int,int ) ;
 int verbose ;
 int wirelen ;

int
main(void)
{

 u_int i;

 u_int ret;
 int sig;





 for (sig = SIGHUP; sig <= SIGUSR2; sig++)
  signal(sig, sig_handler);
 for (i = 0; i < BPF_NRUNS; i++)
  ret = bpf_filter(nins != 0 ? pc : ((void*)0), pkt, wirelen, buflen);

 if (expect_signal != 0) {
  if (verbose > 1)
   printf("Expected signal %d but got none:\t",
       expect_signal);
  if (verbose > 0)
   printf("FAILED\n");
  return (FAILED);
 }
 if (ret != expect) {
  if (verbose > 1)
   printf("Expected 0x%x but got 0x%x:\t", expect, ret);
  if (verbose > 0)
   printf("FAILED\n");
  return (FAILED);
 }
 if (verbose > 1)
  printf("Expected and got 0x%x:\t", ret);
 if (verbose > 0)
  printf("PASSED\n");

 return (PASSED);
}
