
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ch_ifconf_regs {int version; int * data; int len; } ;


 int CHELSIO_IFCONF_GETREGS ;
 int REGDUMP_SIZE ;
 scalar_t__ doit (char const*,int ,struct ch_ifconf_regs*) ;
 int dump_regs_t2 (int,char**,int,int *) ;
 int dump_regs_t3 (int,char**,int,int *,int) ;
 int dump_regs_t3b (int,char**,int,int *,int) ;
 int dump_regs_t3c (int,char**,int,int *,int) ;
 int err (int,char*) ;
 int errx (int,char*,int,int) ;
 int * malloc (int ) ;

__attribute__((used)) static int
dump_regs(int argc, char *argv[], int start_arg, const char *iff_name)
{
 int vers, revision, is_pcie;
 struct ch_ifconf_regs regs;

 regs.len = REGDUMP_SIZE;


 if ((regs.data = malloc(regs.len)) == ((void*)0))
  err(1, "can't malloc");

 if (doit(iff_name, CHELSIO_IFCONF_GETREGS, &regs))
  err(1, "can't read registers");

 vers = regs.version & 0x3ff;
 revision = (regs.version >> 10) & 0x3f;
 is_pcie = (regs.version & 0x80000000) != 0;

 if (vers <= 2)
  return dump_regs_t2(argc, argv, start_arg, (uint32_t *)regs.data);
 errx(1, "unknown card type %d.%d", vers, revision);
 return 0;
}
