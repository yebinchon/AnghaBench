
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rl_q_entry {scalar_t__ rl_q_start; scalar_t__ rl_q_end; } ;



__attribute__((used)) static int
ranges_overlap(const struct rl_q_entry *e1,
    const struct rl_q_entry *e2)
{

 if (e1->rl_q_start < e2->rl_q_end && e1->rl_q_end > e2->rl_q_start)
  return (1);
 return (0);
}
