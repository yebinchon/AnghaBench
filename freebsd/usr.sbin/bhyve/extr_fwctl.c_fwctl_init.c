
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IDENT_WAIT ;
 size_t OP_GET ;
 size_t OP_GET_LEN ;
 int be_state ;
 int fgetlen_info ;
 int fgetval_info ;
 int ** ops ;

void
fwctl_init(void)
{

 ops[OP_GET_LEN] = &fgetlen_info;
 ops[OP_GET] = &fgetval_info;

 be_state = IDENT_WAIT;
}
