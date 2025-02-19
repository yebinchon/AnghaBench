
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
typedef size_t u_int ;
struct cpu_parts {scalar_t__ part_id; char* part_name; } ;
struct TYPE_5__ {char* cpu_impl_name; char* cpu_part_name; scalar_t__ cpu_part_num; scalar_t__ cpu_impl; } ;
struct TYPE_4__ {scalar_t__ impl_id; char* impl_name; } ;


 scalar_t__ CPU_IMPL (scalar_t__) ;
 scalar_t__ CPU_PART (scalar_t__) ;
 size_t PCPU_GET (int ) ;
 scalar_t__ bootverbose ;
 TYPE_3__* cpu_desc ;
 TYPE_1__* cpu_implementers ;
 struct cpu_parts* cpu_parts_std ;
 int cpuid ;
 size_t nitems (TYPE_1__*) ;
 int printf (char*,size_t,char*,char*) ;

void
identify_cpu(void)
{
 const struct cpu_parts *cpu_partsp;
 uint32_t part_id;
 uint32_t impl_id;
 uint64_t mimpid;
 uint64_t misa;
 u_int cpu;
 size_t i;

 cpu_partsp = ((void*)0);


 mimpid = 0;
 misa = 0;

 cpu = PCPU_GET(cpuid);

 impl_id = CPU_IMPL(mimpid);
 for (i = 0; i < nitems(cpu_implementers); i++) {
  if (impl_id == cpu_implementers[i].impl_id ||
      cpu_implementers[i].impl_id == 0) {
   cpu_desc[cpu].cpu_impl = impl_id;
   cpu_desc[cpu].cpu_impl_name = cpu_implementers[i].impl_name;
   cpu_partsp = cpu_parts_std;
   break;
  }
 }

 part_id = CPU_PART(misa);
 for (i = 0; &cpu_partsp[i] != ((void*)0); i++) {
  if (part_id == cpu_partsp[i].part_id ||
      cpu_partsp[i].part_id == -1) {
   cpu_desc[cpu].cpu_part_num = part_id;
   cpu_desc[cpu].cpu_part_name = cpu_partsp[i].part_name;
   break;
  }
 }


 if (cpu == 0 || bootverbose) {
  printf("CPU(%d): %s %s\n", cpu,
      cpu_desc[cpu].cpu_impl_name,
      cpu_desc[cpu].cpu_part_name);
 }
}
