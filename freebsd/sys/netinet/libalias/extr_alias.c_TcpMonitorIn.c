
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct alias_link {int dummy; } ;



 int ALIAS_TCP_STATE_DISCONNECTED ;

 int GetStateIn (struct alias_link*) ;
 int SetStateIn (struct alias_link*,int) ;
 int TH_FIN ;
 int TH_RST ;
 int TH_SYN ;

__attribute__((used)) static void
TcpMonitorIn(u_char th_flags, struct alias_link *lnk)
{

 switch (GetStateIn(lnk)) {
 case 128:
  if (th_flags & TH_RST)
   SetStateIn(lnk, ALIAS_TCP_STATE_DISCONNECTED);
  else if (th_flags & TH_SYN)
   SetStateIn(lnk, 129);
  break;
 case 129:
  if (th_flags & (TH_FIN | TH_RST))
   SetStateIn(lnk, ALIAS_TCP_STATE_DISCONNECTED);
  break;
 }
}
