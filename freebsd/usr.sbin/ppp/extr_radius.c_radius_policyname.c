
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* NumStr (int,int *,int ) ;

__attribute__((used)) static const char *
radius_policyname(int policy)
{
  switch(policy) {
  case 129:
    return "Allowed";
  case 128:
    return "Required";
  }
  return NumStr(policy, ((void*)0), 0);
}
