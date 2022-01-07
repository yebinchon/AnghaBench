
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_short ;


 char const* HexStr (scalar_t__,char*,int) ;

__attribute__((used)) static const char *
dns_Qclass2Txt(u_short qclass)
{
  static char failure[6];
  struct {
    u_short id;
    const char *txt;
  } qtxt[] = {

    { 1, "IN" }, { 2, "CS" }, { 3, "CH" }, { 4, "HS" }, { 255, "*" }
  };
  unsigned f;

  for (f = 0; f < sizeof qtxt / sizeof *qtxt; f++)
    if (qtxt[f].id == qclass)
      return qtxt[f].txt;

  return HexStr(qclass, failure, sizeof failure);
}
