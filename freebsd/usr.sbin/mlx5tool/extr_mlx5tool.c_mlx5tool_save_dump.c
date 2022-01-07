
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_tool_addr {int dummy; } ;
struct mlx5_fwdump_reg {int addr; int val; } ;
struct mlx5_fwdump_get {size_t reg_filled; size_t reg_cnt; struct mlx5_fwdump_reg* buf; struct mlx5_tool_addr devaddr; } ;
typedef int fdg ;
typedef int FILE ;


 scalar_t__ ENOENT ;
 int MLX5_FWDUMP_GET ;
 struct mlx5_fwdump_reg* calloc (size_t,int) ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char*,int,int) ;
 int ioctl (int,int ,struct mlx5_fwdump_get*) ;
 int memset (struct mlx5_fwdump_get*,int ,int) ;
 int * stdout ;
 int warn (char*,...) ;
 int warnx (char*) ;

__attribute__((used)) static int
mlx5tool_save_dump(int ctldev, const struct mlx5_tool_addr *addr,
    const char *dumpname)
{
 struct mlx5_fwdump_get fdg;
 struct mlx5_fwdump_reg *rege;
 FILE *dump;
 size_t cnt;
 int error, res;

 if (dumpname == ((void*)0))
  dump = stdout;
 else
  dump = fopen(dumpname, "w");
 if (dump == ((void*)0)) {
  warn("open %s", dumpname);
  return (1);
 }
 res = 1;
 memset(&fdg, 0, sizeof(fdg));
 fdg.devaddr = *addr;
 error = ioctl(ctldev, MLX5_FWDUMP_GET, &fdg);
 if (error != 0) {
  warn("MLX5_FWDUMP_GET dumpsize");
  goto out;
 }
 rege = calloc(fdg.reg_filled, sizeof(*rege));
 if (rege == ((void*)0)) {
  warn("alloc rege");
  goto out;
 }
 fdg.buf = rege;
 fdg.reg_cnt = fdg.reg_filled;
 error = ioctl(ctldev, MLX5_FWDUMP_GET, &fdg);
 if (error != 0) {
  if (errno == ENOENT)
   warnx("no dump recorded");
  else
   warn("MLX5_FWDUMP_GET dump fetch");
  goto out;
 }
 for (cnt = 0; cnt < fdg.reg_cnt; cnt++, rege++)
  fprintf(dump, "0x%08x\t0x%08x\n", rege->addr, rege->val);
 res = 0;
out:
 if (dump != stdout)
  fclose(dump);
 return (res);
}
