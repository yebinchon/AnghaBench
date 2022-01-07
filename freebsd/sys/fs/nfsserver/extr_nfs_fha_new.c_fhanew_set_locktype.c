
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fha_info {int locktype; } ;
typedef int rpcproc_t ;


 int LK_EXCLUSIVE ;
 int LK_SHARED ;
void
fhanew_set_locktype(rpcproc_t procnum, struct fha_info *info)
{
 switch (procnum) {
 case 139:
 case 145:
 case 143:
 case 150:
 case 134:
 case 137:
 case 136:
 case 135:
 case 128:
  info->locktype = LK_SHARED;
  break;
 case 130:
 case 148:
 case 142:
 case 129:
 case 141:
 case 133:
 case 131:
 case 132:
 case 144:
 case 146:
 case 147:
 case 138:
 case 149:
 case 140:
  info->locktype = LK_EXCLUSIVE;
  break;
 }
}
