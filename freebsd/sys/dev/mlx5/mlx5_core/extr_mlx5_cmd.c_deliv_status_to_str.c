
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
__attribute__((used)) static const char *deliv_status_to_str(u8 status)
{
 switch (status) {
 case 133:
  return "no errors";
 case 129:
  return "signature error";
 case 128:
  return "token error";
 case 138:
  return "bad block number";
 case 131:
  return "output pointer not aligned to block size";
 case 134:
  return "input pointer not aligned to block size";
 case 136:
  return "firmware internal error";
 case 135:
  return "command input length error";
 case 132:
  return "command ouput length error";
 case 130:
  return "reserved fields not cleared";
 case 137:
  return "bad command descriptor type";
 default:
  return "unknown status code";
 }
}
