
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* HexStr (unsigned int,int *,int ) ;
 char const** cbcpname ;

__attribute__((used)) static const char *
cbcpstate(unsigned s)
{
  if (s < sizeof cbcpname / sizeof cbcpname[0])
    return cbcpname[s];
  return HexStr(s, ((void*)0), 0);
}
