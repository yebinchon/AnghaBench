
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int flags; int member_0; } ;
typedef TYPE_1__ xpparam_t ;
typedef int xdl_emit_hunk_consume_func_t ;
struct TYPE_8__ {int hunk_func; int member_0; } ;
typedef TYPE_2__ xdemitconf_t ;
struct TYPE_9__ {void* priv; int * member_0; } ;
typedef TYPE_3__ xdemitcb_t ;
typedef int mmfile_t ;


 int xdi_diff (int *,int *,TYPE_1__*,TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static int diff_hunks(mmfile_t *file_a, mmfile_t *file_b,
        xdl_emit_hunk_consume_func_t hunk_func, void *cb_data, int xdl_opts)
{
 xpparam_t xpp = {0};
 xdemitconf_t xecfg = {0};
 xdemitcb_t ecb = {((void*)0)};

 xpp.flags = xdl_opts;
 xecfg.hunk_func = hunk_func;
 ecb.priv = cb_data;
 return xdi_diff(file_a, file_b, &xpp, &xecfg, &ecb);
}
