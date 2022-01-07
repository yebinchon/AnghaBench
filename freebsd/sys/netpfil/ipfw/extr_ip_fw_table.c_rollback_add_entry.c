
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tableop_state {void* tc; void* ch; int modified; } ;
struct op_state {int dummy; } ;
typedef void ip_fw_chain ;


 int IPFW_UH_WLOCK_ASSERT (void*) ;
 int rollback_table_values (struct tableop_state*) ;

__attribute__((used)) static void
rollback_add_entry(void *object, struct op_state *_state)
{
 struct ip_fw_chain *ch;
 struct tableop_state *ts;

 ts = (struct tableop_state *)_state;

 if (ts->tc != object && ts->ch != object)
  return;

 ch = ts->ch;

 IPFW_UH_WLOCK_ASSERT(ch);


 rollback_table_values(ts);


 ts->modified = 1;
}
