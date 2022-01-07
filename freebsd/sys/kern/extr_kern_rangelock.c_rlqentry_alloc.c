
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rl_q_entry {int dummy; } ;


 int M_WAITOK ;
 int rl_entry_zone ;
 struct rl_q_entry* uma_zalloc (int ,int ) ;

__attribute__((used)) static struct rl_q_entry *
rlqentry_alloc(void)
{

 return (uma_zalloc(rl_entry_zone, M_WAITOK));
}
