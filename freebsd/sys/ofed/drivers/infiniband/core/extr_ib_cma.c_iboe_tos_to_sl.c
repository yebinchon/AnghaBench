
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;



__attribute__((used)) static int iboe_tos_to_sl(struct net_device *ndev, int tos)
{

 int sl = (tos >> 5) & 0x7;


 return sl;
}
