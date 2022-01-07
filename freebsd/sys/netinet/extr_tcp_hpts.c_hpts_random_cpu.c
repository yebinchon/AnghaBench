
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct inpcb {int inp_input_cpu; int inp_hpts_cpu; scalar_t__ inp_hpts_cpu_set; scalar_t__ inp_input_cpu_set; } ;


 int arc4random () ;
 int mp_ncpus ;

__attribute__((used)) static uint16_t
hpts_random_cpu(struct inpcb *inp){



 uint16_t cpuid;
 uint32_t ran;





 if (inp->inp_input_cpu_set) {
  return (inp->inp_input_cpu);
 } else if (inp->inp_hpts_cpu_set) {
  return (inp->inp_hpts_cpu);
 }

 ran = arc4random();
 cpuid = (ran & 0xffff) % mp_ncpus;
 return (cpuid);
}
