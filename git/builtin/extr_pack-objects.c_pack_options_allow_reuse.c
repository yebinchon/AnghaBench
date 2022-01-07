
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ allow_ofs_delta ;
 int have_non_local_packs ;
 int ignore_packed_keep_in_core ;
 int ignore_packed_keep_on_disk ;
 int incremental ;
 int local ;
 scalar_t__ pack_to_stdout ;

__attribute__((used)) static int pack_options_allow_reuse(void)
{
 return pack_to_stdout &&
        allow_ofs_delta &&
        !ignore_packed_keep_on_disk &&
        !ignore_packed_keep_in_core &&
        (!local || !have_non_local_packs) &&
        !incremental;
}
