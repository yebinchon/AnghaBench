
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct credential_operation {int (* op ) (struct credential*) ;scalar_t__ name; } ;
struct credential {int dummy; } ;


 struct credential CREDENTIAL_INIT ;
 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int credential_clear (struct credential*) ;
 struct credential_operation* credential_helper_ops ;
 int credential_read (struct credential*) ;
 int credential_write (struct credential*) ;
 int exit (int ) ;
 int g_set_application_name (char*) ;
 scalar_t__ strcmp (char*,scalar_t__) ;
 int stub1 (struct credential*) ;
 int usage (char*) ;

int main(int argc, char *argv[])
{
 int ret = EXIT_SUCCESS;

 struct credential_operation const *try_op = credential_helper_ops;
 struct credential cred = CREDENTIAL_INIT;

 if (!argv[1]) {
  usage(argv[0]);
  exit(EXIT_FAILURE);
 }

 g_set_application_name("Git Credential Helper");


 while (try_op->name && strcmp(argv[1], try_op->name))
  try_op++;


 if (!try_op->name || !try_op->op)
  goto out;

 ret = credential_read(&cred);
 if (ret)
  goto out;


 ret = (*try_op->op)(&cred);

 credential_write(&cred);

out:
 credential_clear(&cred);
 return ret;
}
