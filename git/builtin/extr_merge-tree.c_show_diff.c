
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ flags; } ;
typedef TYPE_1__ xpparam_t ;
typedef int xecfg ;
struct TYPE_12__ {int ctxlen; } ;
typedef TYPE_2__ xdemitconf_t ;
struct TYPE_13__ {int * priv; int out_line; int * out_hunk; } ;
typedef TYPE_3__ xdemitcb_t ;
struct merge_list {int dummy; } ;
struct TYPE_14__ {unsigned long size; int ptr; } ;
typedef TYPE_4__ mmfile_t ;


 int die (char*) ;
 int free (int ) ;
 int memset (TYPE_2__*,int ,int) ;
 int origin (struct merge_list*,unsigned long*) ;
 int result (struct merge_list*,unsigned long*) ;
 int show_outf ;
 scalar_t__ xdi_diff (TYPE_4__*,TYPE_4__*,TYPE_1__*,TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static void show_diff(struct merge_list *entry)
{
 unsigned long size;
 mmfile_t src, dst;
 xpparam_t xpp;
 xdemitconf_t xecfg;
 xdemitcb_t ecb;

 xpp.flags = 0;
 memset(&xecfg, 0, sizeof(xecfg));
 xecfg.ctxlen = 3;
 ecb.out_hunk = ((void*)0);
 ecb.out_line = show_outf;
 ecb.priv = ((void*)0);

 src.ptr = origin(entry, &size);
 if (!src.ptr)
  size = 0;
 src.size = size;
 dst.ptr = result(entry, &size);
 if (!dst.ptr)
  size = 0;
 dst.size = size;
 if (xdi_diff(&src, &dst, &xpp, &xecfg, &ecb))
  die("unable to generate diff");
 free(src.ptr);
 free(dst.ptr);
}
