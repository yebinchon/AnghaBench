
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int append_head_ref ;
 int append_remote_ref ;
 int for_each_ref (int ,int *) ;
 int ref_name_cnt ;
 int sort_ref_range (int,int) ;

__attribute__((used)) static void snarf_refs(int head, int remotes)
{
 if (head) {
  int orig_cnt = ref_name_cnt;

  for_each_ref(append_head_ref, ((void*)0));
  sort_ref_range(orig_cnt, ref_name_cnt);
 }
 if (remotes) {
  int orig_cnt = ref_name_cnt;

  for_each_ref(append_remote_ref, ((void*)0));
  sort_ref_range(orig_cnt, ref_name_cnt);
 }
}
