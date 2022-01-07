
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;




 int SctpAliasLog (char*,char,char*,int ,int) ;
 int ntohl (int ) ;

__attribute__((used)) static void
logsctperror(char* errormsg, uint32_t vtag, int error, int direction)
{
 char dir;
 switch (direction) {
 case 128:
  dir = 'L';
  break;
 case 129:
  dir = 'G';
  break;
 default:
  dir = '*';
  break;
 }
 SctpAliasLog("->%c %s (vt=%u) %d\n", dir, errormsg, ntohl(vtag), error);
}
