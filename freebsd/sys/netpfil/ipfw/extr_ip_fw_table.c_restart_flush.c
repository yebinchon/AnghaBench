
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tableop_state {void* tc; int modified; } ;
struct op_state {int dummy; } ;



__attribute__((used)) static void
restart_flush(void *object, struct op_state *_state)
{
 struct tableop_state *ts;

 ts = (struct tableop_state *)_state;

 if (ts->tc != object)
  return;


 ts->modified = 1;
}
