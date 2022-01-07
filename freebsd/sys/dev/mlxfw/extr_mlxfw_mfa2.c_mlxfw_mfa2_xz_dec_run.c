
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xz_dec {int dummy; } ;
struct xz_buf {int dummy; } ;
typedef enum xz_ret { ____Placeholder_xz_ret } xz_ret ;


 int EINVAL ;
 int ENOMEM ;







 int pr_err (char*,...) ;
 int xz_dec_run (struct xz_dec*,struct xz_buf*) ;

__attribute__((used)) static int mlxfw_mfa2_xz_dec_run(struct xz_dec *xz_dec, struct xz_buf *xz_buf,
     bool *finished)
{
 enum xz_ret xz_ret;

 xz_ret = xz_dec_run(xz_dec, xz_buf);

 switch (xz_ret) {
 case 128:
  *finished = 1;
  return 0;
 case 130:
  *finished = 0;
  return 0;
 case 131:
  pr_err("xz no memory\n");
  return -ENOMEM;
 case 134:
  pr_err("xz file corrupted\n");
  return -EINVAL;
 case 133:
  pr_err("xz format not found\n");
  return -EINVAL;
 case 129:
  pr_err("unsupported xz option\n");
  return -EINVAL;
 case 132:
  pr_err("xz dictionary too small\n");
  return -EINVAL;
 default:
  pr_err("xz error %d\n", xz_ret);
  return -EINVAL;
 }
}
