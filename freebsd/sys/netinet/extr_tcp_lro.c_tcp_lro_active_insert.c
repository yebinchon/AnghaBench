
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lro_head {int dummy; } ;
struct lro_entry {int dummy; } ;
struct lro_ctrl {struct lro_head lro_active; } ;


 int LIST_INSERT_HEAD (struct lro_head*,struct lro_entry*,int ) ;
 int hash_next ;
 int next ;

__attribute__((used)) static __inline void
tcp_lro_active_insert(struct lro_ctrl *lc, struct lro_head *bucket,
    struct lro_entry *le)
{

 LIST_INSERT_HEAD(&lc->lro_active, le, next);
 LIST_INSERT_HEAD(bucket, le, hash_next);
}
