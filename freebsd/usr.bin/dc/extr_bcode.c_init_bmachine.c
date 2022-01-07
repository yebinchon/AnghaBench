
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct source {int dummy; } ;
struct TYPE_4__ {int extended_regs; int reg_array_size; int readstack_sz; int obase; int ibase; int * readstack; int * reg; int stack; } ;
struct TYPE_3__ {size_t ch; int f; } ;


 unsigned int JUMP_TABLE_DATA_SIZE ;
 int READSTACK_SIZE ;
 int REG_ARRAY_SIZE_BIG ;
 int REG_ARRAY_SIZE_SMALL ;
 unsigned int UCHAR_MAX ;
 TYPE_2__ bmachine ;
 void* calloc (int,int) ;
 int err (int,int *) ;
 int * jump_table ;
 TYPE_1__* jump_table_data ;
 int stack_init (int *) ;
 int unknown ;

void
init_bmachine(bool extended_registers)
{
 unsigned int i;

 bmachine.extended_regs = extended_registers;
 bmachine.reg_array_size = bmachine.extended_regs ?
     REG_ARRAY_SIZE_BIG : REG_ARRAY_SIZE_SMALL;

 bmachine.reg = calloc(bmachine.reg_array_size,
     sizeof(bmachine.reg[0]));
 if (bmachine.reg == ((void*)0))
  err(1, ((void*)0));

 for (i = 0; i < UCHAR_MAX; i++)
  jump_table[i] = unknown;
 for (i = 0; i < JUMP_TABLE_DATA_SIZE; i++)
  jump_table[jump_table_data[i].ch] = jump_table_data[i].f;

 stack_init(&bmachine.stack);

 for (i = 0; i < bmachine.reg_array_size; i++)
  stack_init(&bmachine.reg[i]);

 bmachine.readstack_sz = READSTACK_SIZE;
 bmachine.readstack = calloc(sizeof(struct source),
     bmachine.readstack_sz);
 if (bmachine.readstack == ((void*)0))
  err(1, ((void*)0));
 bmachine.obase = bmachine.ibase = 10;
}
