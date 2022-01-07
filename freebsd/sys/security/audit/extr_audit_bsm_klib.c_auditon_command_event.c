
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int au_event_t ;


 int AUE_AUDITON ;
 int AUE_AUDITON_GETCAR ;
 int AUE_AUDITON_GETCLASS ;
 int AUE_AUDITON_GETCOND ;
 int AUE_AUDITON_GETCWD ;
 int AUE_AUDITON_GETKMASK ;
 int AUE_AUDITON_GETSTAT ;
 int AUE_AUDITON_GPOLICY ;
 int AUE_AUDITON_GQCTRL ;
 int AUE_AUDITON_SETCLASS ;
 int AUE_AUDITON_SETCOND ;
 int AUE_AUDITON_SETKMASK ;
 int AUE_AUDITON_SETSMASK ;
 int AUE_AUDITON_SETSTAT ;
 int AUE_AUDITON_SETUMASK ;
 int AUE_AUDITON_SPOLICY ;
 int AUE_AUDITON_SQCTRL ;
au_event_t
auditon_command_event(int cmd)
{

 switch(cmd) {
 case 141:
  return (AUE_AUDITON_GPOLICY);

 case 132:
  return (AUE_AUDITON_SPOLICY);

 case 144:
  return (AUE_AUDITON_GETKMASK);

 case 134:
  return (AUE_AUDITON_SETKMASK);

 case 140:
  return (AUE_AUDITON_GQCTRL);

 case 131:
  return (AUE_AUDITON_SQCTRL);

 case 147:
  return (AUE_AUDITON_GETCWD);

 case 150:
  return (AUE_AUDITON_GETCAR);

 case 139:
  return (AUE_AUDITON_GETSTAT);

 case 129:
  return (AUE_AUDITON_SETSTAT);

 case 128:
  return (AUE_AUDITON_SETUMASK);

 case 130:
  return (AUE_AUDITON_SETSMASK);

 case 148:
  return (AUE_AUDITON_GETCOND);

 case 137:
  return (AUE_AUDITON_SETCOND);

 case 149:
  return (AUE_AUDITON_GETCLASS);

 case 138:
  return (AUE_AUDITON_SETCLASS);

 case 143:
 case 133:
 case 136:
 case 146:
 case 142:
 case 145:
 case 135:
 default:
  return (AUE_AUDITON);
 }
}
