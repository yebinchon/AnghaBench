
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int cr_label; } ;
struct mac_biba {int dummy; } ;
 struct mac_biba* SLOT (int ) ;
 int biba_enabled ;
 int biba_subject_privileged (struct mac_biba*) ;

__attribute__((used)) static int
biba_priv_check(struct ucred *cred, int priv)
{
 struct mac_biba *subj;
 int error;

 if (!biba_enabled)
  return (0);




 switch (priv) {
 case 185:
 case 182:





 case 205:
 case 204:
 case 203:




 case 194:
 case 201:
 case 200:
 case 202:
 case 199:
 case 195:
 case 198:
 case 196:
 case 197:




 case 169:
 case 168:
  break;





 case 193:
 case 192:
 case 191:




 case 186:





 case 184:





 case 178:
 case 177:
 case 176:




 case 188:
 case 187:
 case 190:
 case 189:
 case 183:






 case 175:
 case 170:
 case 174:
 case 171:
 case 173:
 case 172:




 case 167:




 case 166:
 case 165:





 case 164:





 case 163:
 case 162:
 case 161:
 case 159:
 case 160:





 case 139:
 case 133:
 case 158:
 case 153:
 case 145:
 case 157:
 case 156:
 case 155:
 case 138:
 case 154:
 case 152:
 case 151:
 case 150:
 case 149:
 case 148:
 case 147:
 case 146:
 case 144:
 case 142:
 case 141:
 case 140:
 case 143:
 case 137:
 case 136:
 case 135:
 case 134:





 case 132:
 case 131:
 case 130:
 case 129:
 case 128:





 case 180:
 case 181:
 case 179:
  break;





 default:
  subj = SLOT(cred->cr_label);
  error = biba_subject_privileged(subj);
  if (error)
   return (error);
 }
 return (0);
}
