
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct credential {int dummy; } ;


 int memset (struct credential*,int ,int) ;

__attribute__((used)) static void credential_init(struct credential *c)
{
 memset(c, 0, sizeof(*c));
}
