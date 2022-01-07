
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mod_regs {char* member_0; int member_1; } ;


 int dump_regs_table (int,char const**,int const*,struct mod_regs*,int ) ;
 int nitems (struct mod_regs*) ;






__attribute__((used)) static int
dump_regs_t5vf(int argc, const char *argv[], const uint32_t *regs)
{
 static struct mod_regs t5vf_mod[] = {
  { "sge", 128 },
  { "mps", 130 },
  { "pl", 129 },
  { "mbdata", 131 },
  { "cim", 132 },
 };

 return dump_regs_table(argc, argv, regs, t5vf_mod, nitems(t5vf_mod));
}
