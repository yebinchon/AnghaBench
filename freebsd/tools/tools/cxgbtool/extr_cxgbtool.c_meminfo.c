
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ch_ifconf_regs {int version; int * data; int len; } ;


 int CHELSIO_IFCONF_GETREGS ;
 int REGDUMP_SIZE ;
 scalar_t__ doit (char const*,int ,struct ch_ifconf_regs*) ;
 int err (int,char*) ;
 int errx (int,char*,int) ;
 int * malloc (int ) ;
 int t3_meminfo (int *) ;

__attribute__((used)) static int
meminfo(int argc, char *argv[], int start_arg, const char *iff_name)
{
 int vers;
 struct ch_ifconf_regs regs;

 (void) argc;
 (void) argv;
 (void) start_arg;

 regs.len = REGDUMP_SIZE;
 if ((regs.data = malloc(regs.len)) == ((void*)0))
  err(1, "can't malloc");

 if (doit(iff_name, CHELSIO_IFCONF_GETREGS, &regs))
  err(1, "can't read registers");

 vers = regs.version & 0x3ff;
 if (vers == 3)
  return t3_meminfo((uint32_t *)regs.data);

 errx(1, "unknown card type %d", vers);
 return 0;
}
