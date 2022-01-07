
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ucred {TYPE_1__* cr_prison; } ;
struct TYPE_2__ {int pr_flags; int pr_allow; int pr_enforce_statfs; } ;


 int EPERM ;
 int PR_ALLOW_CHFLAGS ;
 int PR_ALLOW_MLOCK ;
 int PR_ALLOW_MOUNT ;
 int PR_ALLOW_RAW_SOCKETS ;
 int PR_ALLOW_READ_MSGBUF ;
 int PR_ALLOW_RESERVED_PORTS ;
 int PR_VNET ;
 int jailed (struct ucred*) ;

int
prison_priv_check(struct ucred *cred, int priv)
{

 if (!jailed(cred))
  return (0);
 switch (priv) {




 case 224:
 case 236:
 case 243:
 case 242:
 case 244:
 case 241:
 case 237:
 case 240:
 case 238:
 case 239:





 case 156:
 case 155:





 case 235:
 case 234:
 case 233:





 case 162:
 case 161:
 case 159:




 case 230:
 case 229:
 case 232:
 case 231:
 case 223:




 case 228:
 case 226:
 case 227:






 case 157:
 case 158:
 case 154:
 case 153:





 case 152:






 case 144:
 case 135:







 case 138:
 case 130:
 case 151:
 case 146:
 case 142:
 case 150:
 case 149:
 case 148:
 case 147:
 case 137:
 case 145:
 case 143:
 case 136:
 case 134:
 case 133:






 case 225:
  return (0);





 case 132:
  if (cred->cr_prison->pr_allow & PR_ALLOW_CHFLAGS)
   return (0);
  else
   return (EPERM);





 case 141:
 case 131:
 case 140:
 case 139:
  if (cred->cr_prison->pr_allow & PR_ALLOW_MOUNT &&
      cred->cr_prison->pr_enforce_statfs < 2)
   return (0);
  else
   return (EPERM);





 case 129:
 case 128:
  if (cred->cr_prison->pr_allow & PR_ALLOW_MLOCK)
   return (0);
  else
   return (EPERM);




 case 199:
  if (cred->cr_prison->pr_allow & PR_ALLOW_RESERVED_PORTS)
   return (0);
  else
   return (EPERM);




 case 198:
  return (0);




 case 196:
  return (0);




 case 200:
  if (cred->cr_prison->pr_allow & PR_ALLOW_RAW_SOCKETS)
   return (0);
  else
   return (EPERM);






 case 206:
  return (0);




 case 160:
  return (0);





 case 222:
  if (cred->cr_prison->pr_allow & PR_ALLOW_READ_MSGBUF)
   return (0);
  return (EPERM);

 default:





  return (EPERM);
 }
}
