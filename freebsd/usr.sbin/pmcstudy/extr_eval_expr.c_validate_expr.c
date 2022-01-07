
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct expression {int type; struct expression* next; } ;
 int exit (int) ;
 int printf (char*,...) ;

__attribute__((used)) static int
validate_expr(struct expression *exp, int val1_is_set, int op_is_set, int val2_is_set,
       int *op_cnt)
{
 int val1, op, val2;
 int open_cnt;
 val1 = op = val2 = 0;
 if (val1_is_set) {
  val1 = 1;
 }
 if (op_is_set) {
  op = 1;
 }
 if (val2_is_set) {
  val2 = 1;
 }
 open_cnt = *op_cnt;
 if (exp == ((void*)0)) {

  if (val1 && op && val2 && (open_cnt == 0)) {
   return(0);
  } else {
   return(1);
  }
 }
 switch(exp->type) {
 case 132:
 case 134:
 case 133:
 case 135:
  if (val1 && op && val2) {



   val1 = 1;
   op = 1;
   val2 = 0;
  } else if ((op == 0) && (val1)) {
   op = 1;
  } else {
   printf("Op but no val1 set\n");
   return(-1);
  }
  break;
 case 130:
  if (exp->next == ((void*)0)) {
   printf("NULL after open paren\n");
   exit(-1);
  }
  if ((exp->next->type == 132) ||
      (exp->next->type == 134) ||
      (exp->next->type == 135) ||
      (exp->next->type == 133)) {
   printf("'( OP' -- not allowed\n");
   return(-1);
  }
  if (val1 && (op == 0)) {
   printf("'Val (' -- not allowed\n");
   return(-1);
  }
  if (val1 && op && val2) {
   printf("'Val OP Val (' -- not allowed\n");
   return(-1);
  }
  open_cnt++;
  *op_cnt = open_cnt;
  if (val1) {
   if (validate_expr(exp->next, 0, 0, 0, op_cnt) == 0) {
    val2 = 1;
   } else {
    return(-1);
   }
  } else {
   return(validate_expr(exp->next, 0, 0, 0, op_cnt));
  }
  break;
 case 131:
  open_cnt--;
  *op_cnt = open_cnt;
  if (val1 && op && val2) {
   return(0);
  } else {
   printf("Found close paren and not complete\n");
   return(-1);
  }
  break;
 case 129:
 case 128:
  if (val1 == 0) {
   val1 = 1;
  } else if (val1 && op) {
   val2 = 1;
  } else {
   printf("val1 set, val2 about to be set op empty\n");
   return(-1);
  }
  break;
 default:
  printf("unknown type %d\n", exp->type);
  exit(-5);
  break;
 }
 return(validate_expr(exp->next, val1, op, val2, op_cnt));
}
