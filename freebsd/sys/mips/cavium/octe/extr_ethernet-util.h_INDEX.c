
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int INDEX(int ipd_port)
{
 if (ipd_port < 32)
  return ipd_port & 15;
 else
  return ipd_port & 3;
}
