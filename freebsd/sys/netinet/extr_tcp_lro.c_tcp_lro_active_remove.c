
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lro_entry {int dummy; } ;


 int LIST_REMOVE (struct lro_entry*,int ) ;
 int hash_next ;
 int next ;

__attribute__((used)) static __inline void
tcp_lro_active_remove(struct lro_entry *le)
{

 LIST_REMOVE(le, next);
 LIST_REMOVE(le, hash_next);
}
