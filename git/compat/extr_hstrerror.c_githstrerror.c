
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buffer ;






 int snprintf (char*,int,char*,int) ;

const char *githstrerror(int err)
{
 static char buffer[48];
 switch (err)
 {
 case 131:
  return "Authoritative answer: host not found";
 case 130:
  return "Valid name, no data record of requested type";
 case 129:
  return "Non recoverable errors, FORMERR, REFUSED, NOTIMP";
 case 128:
  return "Non-authoritative \"host not found\", or SERVERFAIL";
 }
 snprintf(buffer, sizeof(buffer), "Name resolution error %d", err);
 return buffer;
}
