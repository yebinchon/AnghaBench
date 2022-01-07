
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* smb_any_share ;

__attribute__((used)) static char *
smb_share_typename(int stype)
{
 char *pp;

 switch (stype) {
     case 130:
  pp = "A:";
  break;
     case 128:
  pp = smb_any_share;
  break;
     case 129:
  pp = "IPC";
  break;
     case 131:
  pp = "COMM";
  break;
     case 132:
     default:
  pp = smb_any_share;
  break;
 }
 return pp;
}
