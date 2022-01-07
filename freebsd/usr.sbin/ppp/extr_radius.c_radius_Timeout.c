
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct radius {int dummy; } ;


 int radius_Continue (struct radius*,int ) ;

__attribute__((used)) static void
radius_Timeout(void *v)
{
  radius_Continue((struct radius *)v, 0);
}
