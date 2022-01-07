
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef scalar_t__ off_t ;
typedef enum STYLE { ____Placeholder_STYLE } STYLE ;
typedef int FILE ;







 scalar_t__ S_ISREG (int ) ;
 int bytes (int *,char const*,scalar_t__) ;
 int lines (int *,char const*,scalar_t__) ;
 int r_buf (int *,char const*) ;
 int r_reg (int *,char const*,int,scalar_t__,struct stat*) ;

void
reverse(FILE *fp, const char *fn, enum STYLE style, off_t off, struct stat *sbp)
{
 if (style != 129 && off == 0)
  return;

 if (S_ISREG(sbp->st_mode))
  r_reg(fp, fn, style, off, sbp);
 else
  switch(style) {
  case 132:
  case 130:
   bytes(fp, fn, off);
   break;
  case 131:
  case 128:
   lines(fp, fn, off);
   break;
  case 129:
   r_buf(fp, fn);
   break;
  default:
   break;
  }
}
