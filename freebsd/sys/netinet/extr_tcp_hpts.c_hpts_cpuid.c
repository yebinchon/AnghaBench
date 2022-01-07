
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;
struct inpcb {int inp_input_cpu; int inp_hpts_cpu; size_t inp_flowid; scalar_t__ inp_flowtype; size_t inp_numa_domain; scalar_t__ inp_hpts_cpu_set; scalar_t__ inp_input_cpu_set; } ;
struct hpts_domain_info {int* cpu; size_t count; } ;


 scalar_t__ M_HASHTYPE_NONE ;
 size_t M_NODOM ;
 int NETISR_CPUID_NONE ;
 struct hpts_domain_info* hpts_domains ;
 int hpts_random_cpu (struct inpcb*) ;
 int mp_ncpus ;
 int rss_hash2cpuid (size_t,scalar_t__) ;
 int tcp_bind_threads ;

__attribute__((used)) static uint16_t
hpts_cpuid(struct inpcb *inp){
 u_int cpuid;
 if (inp->inp_input_cpu_set) {
  return (inp->inp_input_cpu);
 } else if (inp->inp_hpts_cpu_set) {
  return (inp->inp_hpts_cpu);
 }
 if (inp->inp_flowtype == M_HASHTYPE_NONE)
  return (hpts_random_cpu(inp));
  cpuid = inp->inp_flowid % mp_ncpus;

 return (cpuid);

}
