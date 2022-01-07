
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {size_t rt; size_t rs; size_t op; scalar_t__ imm; } ;
struct TYPE_7__ {int op; int target; } ;
struct TYPE_6__ {size_t func; size_t fmt; int ft; int fs; int fd; } ;
struct TYPE_8__ {size_t func; size_t rt; size_t rd; size_t rs; int shamt; } ;
struct TYPE_10__ {int word; TYPE_4__ IType; TYPE_2__ JType; TYPE_1__ FRType; TYPE_3__ RType; } ;
typedef TYPE_5__ InstFmt ;


 size_t COPz_BC_TF_MASK ;


 size_t OP_ADDU ;
 int * bcond_name ;
 int * c0_opname ;
 int * c0_reg ;
 int * cop1_name ;
 int db_printf (char*,...) ;
 int * fmt_name ;
 int * op_name ;
 int * reg_name ;
 int * spec_name ;

__attribute__((used)) static int
md_printins(int ins, int mdbdot)
{
 InstFmt i;
 int delay = 0;

 i.word = ins;

 switch (i.JType.op) {
 case 137:
  if (i.word == 0) {
   db_printf("nop");
   break;
  }
  if (i.RType.func == OP_ADDU && i.RType.rt == 0) {
   db_printf("move\t%s,%s",
       reg_name[i.RType.rd], reg_name[i.RType.rs]);
   break;
  }
  db_printf("%s", spec_name[i.RType.func]);
  switch (i.RType.func) {
  case 139:
  case 134:
  case 136:
  case 173:
  case 167:
  case 170:
  case 172:
  case 166:
  case 169:
   db_printf("\t%s,%s,%d", reg_name[i.RType.rd],
       reg_name[i.RType.rt], i.RType.shamt);
   break;

  case 138:
  case 133:
  case 135:
  case 171:
  case 165:
  case 168:
   db_printf("\t%s,%s,%s", reg_name[i.RType.rd],
       reg_name[i.RType.rt], reg_name[i.RType.rs]);
   break;

  case 150:
  case 149:
   db_printf("\t%s", reg_name[i.RType.rd]);
   break;

  case 161:
  case 162:
   delay = 1;

  case 146:
  case 147:
   db_printf("\t%s", reg_name[i.RType.rs]);
   break;

  case 145:
  case 144:
  case 175:
  case 174:
  case 179:
  case 178:
  case 181:
  case 180:
   db_printf("\t%s,%s",
       reg_name[i.RType.rs], reg_name[i.RType.rt]);
   break;

  case 129:
  case 130:
   break;

  case 188:
   db_printf("\t%d", (i.RType.rs << 5) | i.RType.rt);
   break;

  default:
   db_printf("\t%s,%s,%s", reg_name[i.RType.rd],
       reg_name[i.RType.rs], reg_name[i.RType.rt]);
  }
  break;

 case 199:
  db_printf("%s\t%s,", bcond_name[i.IType.rt],
      reg_name[i.IType.rs]);
  goto pr_displ;

 case 192:
 case 191:
 case 194:
 case 193:
  db_printf("%s\t%s,", op_name[i.IType.op],
      reg_name[i.IType.rs]);
  goto pr_displ;

 case 196:
 case 195:
  if (i.IType.rs == 0 && i.IType.rt == 0) {
   db_printf("b\t");
   goto pr_displ;
  }

 case 190:
 case 189:
  db_printf("%s\t%s,%s,", op_name[i.IType.op],
      reg_name[i.IType.rs], reg_name[i.IType.rt]);
 pr_displ:
  delay = 1;
  db_printf("0x%08x", mdbdot + 4 + ((short)i.IType.imm << 2));
  break;

 case 186:
  switch (i.RType.rs) {
  case 198:
  case 197:
   db_printf("bc0%c\t",
       "ft"[i.RType.rt & COPz_BC_TF_MASK]);
   goto pr_displ;

  case 148:
   db_printf("mtc0\t%s,%s",
       reg_name[i.RType.rt], c0_reg[i.RType.rd]);
   break;

  case 176:
   db_printf("dmtc0\t%s,%s",
       reg_name[i.RType.rt], c0_reg[i.RType.rd]);
   break;

  case 151:
   db_printf("mfc0\t%s,%s",
       reg_name[i.RType.rt], c0_reg[i.RType.rd]);
   break;

  case 177:
   db_printf("dmfc0\t%s,%s",
       reg_name[i.RType.rt], c0_reg[i.RType.rd]);
   break;

  default:
   db_printf("%s", c0_opname[i.FRType.func]);
  }
  break;

 case 185:
  switch (i.RType.rs) {
  case 198:
  case 197:
   db_printf("bc1%c\t",
       "ft"[i.RType.rt & COPz_BC_TF_MASK]);
   goto pr_displ;

  case 148:
   db_printf("mtc1\t%s,f%d",
       reg_name[i.RType.rt], i.RType.rd);
   break;

  case 151:
   db_printf("mfc1\t%s,f%d",
       reg_name[i.RType.rt], i.RType.rd);
   break;

  case 184:
   db_printf("ctc1\t%s,f%d",
       reg_name[i.RType.rt], i.RType.rd);
   break;

  case 187:
   db_printf("cfc1\t%s,f%d",
       reg_name[i.RType.rt], i.RType.rd);
   break;

  default:
   db_printf("%s.%s\tf%d,f%d,f%d",
       cop1_name[i.FRType.func], fmt_name[i.FRType.fmt],
       i.FRType.fd, i.FRType.fs, i.FRType.ft);
  }
  break;

 case 164:
 case 163:
  db_printf("%s\t", op_name[i.JType.op]);
  db_printf("0x%8x",(mdbdot & 0xF0000000) | (i.JType.target << 2));
  delay = 1;
  break;

 case 153:
 case 131:
  db_printf("%s\tf%d,", op_name[i.IType.op], i.IType.rt);
  goto loadstore;

 case 160:
 case 157:
 case 154:
 case 158:
 case 159:
 case 156:
 case 152:
 case 142:
 case 140:
 case 132:
 case 141:
  db_printf("%s\t%s,", op_name[i.IType.op],
      reg_name[i.IType.rt]);
 loadstore:
  db_printf("%d(%s)", (short)i.IType.imm, reg_name[i.IType.rs]);
  break;

 case 143:
 case 128:
  if (i.IType.rs == 0) {
   db_printf("li\t%s,0x%x",
       reg_name[i.IType.rt], i.IType.imm);
   break;
  }

 case 200:
  db_printf("%s\t%s,%s,0x%x", op_name[i.IType.op],
      reg_name[i.IType.rt], reg_name[i.IType.rs], i.IType.imm);
  break;

 case 155:
  db_printf("%s\t%s,0x%x", op_name[i.IType.op],
      reg_name[i.IType.rt], i.IType.imm);
  break;

 case 202:
 case 183:
 case 201:
 case 182:
  if (i.IType.rs == 0) {
   db_printf("li\t%s,%d", reg_name[i.IType.rt],
       (short)i.IType.imm);
   break;
  }

 default:
  db_printf("%s\t%s,%s,%d", op_name[i.IType.op],
      reg_name[i.IType.rt], reg_name[i.IType.rs],
      (short)i.IType.imm);
 }
 db_printf("\n");
 return (delay);
}
