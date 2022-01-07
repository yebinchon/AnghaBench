
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
err_string(int code)
{
 const char *pmesg;

 switch (code) {
 case 0:
  pmesg = "update operation succeeded";
  break;
 case 131:
  pmesg = "no such key in file";
  break;
 case 129:
  pmesg = "cannot read the database";
  break;
 case 128:
  pmesg = "cannot write to the database";
  break;
 case 132:
  pmesg = "cannot update database";
  break;
 case 133:
  pmesg = "permission denied";
  break;
 case 130:
  pmesg = "malloc failed";
  break;
 default:
  pmesg = "unknown error";
  break;
 }
 return (pmesg);
}
