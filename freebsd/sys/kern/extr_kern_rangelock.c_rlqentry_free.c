
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rl_q_entry {int dummy; } ;


 int rl_entry_zone ;
 int uma_zfree (int ,struct rl_q_entry*) ;

void
rlqentry_free(struct rl_q_entry *rleq)
{

 uma_zfree(rl_entry_zone, rleq);
}
