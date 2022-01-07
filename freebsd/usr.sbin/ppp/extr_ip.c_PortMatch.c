
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;






__attribute__((used)) static __inline int
PortMatch(int op, u_short pport, u_short rport)
{
  switch (op) {
  case 130:
    return pport == rport;
  case 129:
    return pport > rport;
  case 128:
    return pport < rport;
  default:
    return 0;
  }
}
