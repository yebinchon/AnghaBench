
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct opcode_obj_rewrite {scalar_t__ opcode; } ;
typedef int h ;


 scalar_t__ bsearch (struct opcode_obj_rewrite*,struct opcode_obj_rewrite*,int,int,int ) ;
 int compare_opcodes ;
 struct opcode_obj_rewrite* ctl3_rewriters ;
 int ctl3_rsize ;
 int memset (struct opcode_obj_rewrite*,int ,int) ;

__attribute__((used)) static int
find_op_rw_range(uint16_t op, struct opcode_obj_rewrite **plo,
    struct opcode_obj_rewrite **phi)
{
 struct opcode_obj_rewrite *ctl3_max, *lo, *hi, h, *rw;

 memset(&h, 0, sizeof(h));
 h.opcode = op;

 rw = (struct opcode_obj_rewrite *)bsearch(&h, ctl3_rewriters,
     ctl3_rsize, sizeof(h), compare_opcodes);
 if (rw == ((void*)0))
  return (1);


 lo = rw;
 for ( ; lo > ctl3_rewriters && (lo - 1)->opcode == op; lo--)
  ;


 hi = rw;
 ctl3_max = ctl3_rewriters + ctl3_rsize;
 for ( ; (hi + 1) < ctl3_max && (hi + 1)->opcode == op; hi++)
  ;

 *plo = lo;
 *phi = hi;

 return (0);
}
