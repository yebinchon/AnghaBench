
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int rs; scalar_t__ func; } ;
struct TYPE_7__ {scalar_t__ rt; } ;
struct TYPE_5__ {scalar_t__ op; } ;
struct TYPE_8__ {int word; TYPE_2__ RType; TYPE_3__ IType; TYPE_1__ JType; } ;
typedef TYPE_4__ InstFmt ;


 int IT_BRANCH ;
 int IT_CALL ;
 int IT_LOAD ;
 int IT_STORE ;
int
db_inst_type(int ins)
{
 InstFmt inst;
 int ityp = 0;

 inst.word = ins;
 switch ((int)inst.JType.op) {
 case 131:
  switch ((int)inst.RType.func) {
  case 143:
   ityp = IT_BRANCH;
   break;
  case 144:
  case 128:
   ityp = IT_CALL;
   break;
  }
  break;

 case 166:
  switch ((int)inst.IType.rt) {
  case 153:
  case 150:
  case 161:
  case 158:
   ityp = IT_BRANCH;
   break;

  case 152:
  case 151:
  case 160:
  case 159:
   ityp = IT_CALL;
   break;
  }
  break;

 case 145:
  ityp = IT_CALL;
  break;

 case 146:
 case 163:
 case 162:
 case 149:
 case 148:
 case 155:
 case 154:
 case 157:
 case 156:
  ityp = IT_BRANCH;
  break;

 case 147:
  switch (inst.RType.rs) {
  case 165:
  case 164:
   ityp = IT_BRANCH;
   break;
  }
  break;

 case 142:
 case 139:
 case 137:
 case 140:
 case 141:
 case 138:
 case 135:
 case 136:
  ityp = IT_LOAD;
  break;

 case 134:
 case 132:
 case 130:
 case 133:
 case 129:
  ityp = IT_STORE;
  break;
 }
 return (ityp);
}
