
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct alias_link {int dummy; } ;



 int ALIAS_TCP_STATE_DISCONNECTED ;

 int GetStateOut (struct alias_link*) ;
 int SetStateOut (struct alias_link*,int) ;
 int TH_FIN ;
 int TH_RST ;
 int TH_SYN ;

__attribute__((used)) static void
TcpMonitorOut(u_char th_flags, struct alias_link *lnk)
{

 switch (GetStateOut(lnk)) {
 case 128:
  if (th_flags & TH_RST)
   SetStateOut(lnk, ALIAS_TCP_STATE_DISCONNECTED);
  else if (th_flags & TH_SYN)
   SetStateOut(lnk, 129);
  break;
 case 129:
  if (th_flags & (TH_FIN | TH_RST))
   SetStateOut(lnk, ALIAS_TCP_STATE_DISCONNECTED);
  break;
 }
}
