
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tp_entry {int dummy; } ;


 struct tp_entry* TAILQ_NEXT (struct tp_entry*,int ) ;
 int tp_e ;

__attribute__((used)) static struct tp_entry *
bridge_addrs_next(struct tp_entry *te)
{
 return (TAILQ_NEXT(te, tp_e));
}
