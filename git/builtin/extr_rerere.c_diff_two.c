
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int ctxlen; scalar_t__ flags; } ;
typedef TYPE_1__ xpparam_t ;
typedef int xpp ;
typedef int xecfg ;
typedef TYPE_1__ xdemitconf_t ;
struct TYPE_13__ {int out_line; int * out_hunk; } ;
typedef TYPE_3__ xdemitcb_t ;
struct TYPE_14__ {int ptr; } ;
typedef TYPE_4__ mmfile_t ;


 int fflush (int ) ;
 int free (int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int outf ;
 int printf (char*,char const*,char const*) ;
 scalar_t__ read_mmfile (TYPE_4__*,char const*) ;
 int stdout ;
 int xdi_diff (TYPE_4__*,TYPE_4__*,TYPE_1__*,TYPE_1__*,TYPE_3__*) ;

__attribute__((used)) static int diff_two(const char *file1, const char *label1,
  const char *file2, const char *label2)
{
 xpparam_t xpp;
 xdemitconf_t xecfg;
 xdemitcb_t ecb;
 mmfile_t minus, plus;
 int ret;

 if (read_mmfile(&minus, file1) || read_mmfile(&plus, file2))
  return -1;

 printf("--- a/%s\n+++ b/%s\n", label1, label2);
 fflush(stdout);
 memset(&xpp, 0, sizeof(xpp));
 xpp.flags = 0;
 memset(&xecfg, 0, sizeof(xecfg));
 xecfg.ctxlen = 3;
 ecb.out_hunk = ((void*)0);
 ecb.out_line = outf;
 ret = xdi_diff(&minus, &plus, &xpp, &xecfg, &ecb);

 free(minus.ptr);
 free(plus.ptr);
 return ret;
}
