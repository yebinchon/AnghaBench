
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct krb5_address {int ka_addr; } ;


 int delete_data (int *) ;

__attribute__((used)) static void
delete_address(struct krb5_address *ka)
{
 delete_data(&ka->ka_addr);
}
