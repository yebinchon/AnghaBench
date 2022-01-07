
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct credential {int password; int username; } ;


 int credential_write_item (int ,char*,int ) ;
 int stdout ;

__attribute__((used)) static void credential_write(const struct credential *c)
{

 credential_write_item(stdout, "username", c->username);
 credential_write_item(stdout, "password", c->password);
}
