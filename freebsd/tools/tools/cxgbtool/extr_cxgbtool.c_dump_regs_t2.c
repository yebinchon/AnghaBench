
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int cspi_regs ;
 scalar_t__ dump_block_regs (int ,int *) ;
 int errx (int,char*,char*) ;
 int espi_regs ;
 int mc3_regs ;
 int mc4_regs ;
 int mc5_regs ;
 int pl_regs ;
 int rat_regs ;
 int sge_regs ;
 int strcmp (char*,char*) ;
 int tp_regs ;
 int tpi_regs ;
 int ulp_regs ;

__attribute__((used)) static int
dump_regs_t2(int argc, char *argv[], int start_arg, uint32_t *regs)
{
 int match = 0;
 char *block_name = ((void*)0);

 if (argc == start_arg + 1)
  block_name = argv[start_arg];
 else if (argc != start_arg)
  return -1;

 if (!block_name || !strcmp(block_name, "sge"))
  match += dump_block_regs(sge_regs, regs);
 if (!block_name || !strcmp(block_name, "mc3"))
  match += dump_block_regs(mc3_regs, regs);
 if (!block_name || !strcmp(block_name, "mc4"))
  match += dump_block_regs(mc4_regs, regs);
 if (!block_name || !strcmp(block_name, "tpi"))
  match += dump_block_regs(tpi_regs, regs);
 if (!block_name || !strcmp(block_name, "tp"))
  match += dump_block_regs(tp_regs, regs);
 if (!block_name || !strcmp(block_name, "rat"))
  match += dump_block_regs(rat_regs, regs);
 if (!block_name || !strcmp(block_name, "cspi"))
  match += dump_block_regs(cspi_regs, regs);
 if (!block_name || !strcmp(block_name, "espi"))
  match += dump_block_regs(espi_regs, regs);
 if (!block_name || !strcmp(block_name, "ulp"))
  match += dump_block_regs(ulp_regs, regs);
 if (!block_name || !strcmp(block_name, "pl"))
  match += dump_block_regs(pl_regs, regs);
 if (!block_name || !strcmp(block_name, "mc5"))
  match += dump_block_regs(mc5_regs, regs);
 if (!match)
  errx(1, "unknown block \"%s\"", block_name);
 return 0;
}
