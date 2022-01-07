
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct rangeset {int rs_alloc_flags; void* rs_data_ctx; int rs_free_data; int rs_dup_data; int rs_trie; } ;
typedef int rs_free_data_t ;
typedef int rs_dup_data_t ;


 int pctrie_init (int *) ;

void
rangeset_init(struct rangeset *rs, rs_dup_data_t dup_data,
    rs_free_data_t free_data, void *data_ctx, u_int alloc_flags)
{

 pctrie_init(&rs->rs_trie);
 rs->rs_dup_data = dup_data;
 rs->rs_free_data = free_data;
 rs->rs_data_ctx = data_ctx;
 rs->rs_alloc_flags = alloc_flags;
}
