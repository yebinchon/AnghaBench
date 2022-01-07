
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 char const* strerror (int ) ;

const char *
pcaperr(int error)
{
 switch(error) {
 case 128:
  return "unresolved tc= expansion";
 case 130:
  return "no error";
 case 132:
  return "printer not found";
 case 131:
  return strerror(errno);
 case 129:
  return "loop detected in tc= expansion";
 default:
  return "unknown printcap error";
 }
}
