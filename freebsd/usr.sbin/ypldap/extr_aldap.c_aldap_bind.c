
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ber_element {int dummy; } ;
struct aldap {int msgid; int err; int ber; } ;


 int ALDAP_ERR_OPERATION_FAILED ;
 int BER_CLASS_APP ;
 int BER_CLASS_CONTEXT ;
 scalar_t__ LDAP_AUTH_SIMPLE ;
 int LDAP_DEBUG (char*,struct ber_element*) ;
 scalar_t__ LDAP_REQ_BIND ;
 int VERSION ;
 struct ber_element* ber_add_sequence (int *) ;
 int ber_free_elements (struct ber_element*) ;
 struct ber_element* ber_printf_elements (struct ber_element*,char*,int,int ,unsigned long,int ,char*,char*,int ,unsigned long) ;
 int ber_write_elements (int *,struct ber_element*) ;

int
aldap_bind(struct aldap *ldap, char *binddn, char *bindcred)
{
 struct ber_element *root = ((void*)0), *elm;
 int error;

 if (binddn == ((void*)0))
  binddn = "";
 if (bindcred == ((void*)0))
  bindcred = "";

 if ((root = ber_add_sequence(((void*)0))) == ((void*)0))
  goto fail;

 elm = ber_printf_elements(root, "d{tdsst", ++ldap->msgid, BER_CLASS_APP,
     (unsigned long)LDAP_REQ_BIND, VERSION, binddn, bindcred,
     BER_CLASS_CONTEXT, (unsigned long)LDAP_AUTH_SIMPLE);
 if (elm == ((void*)0))
  goto fail;

 LDAP_DEBUG("aldap_bind", root);

 error = ber_write_elements(&ldap->ber, root);
 ber_free_elements(root);
 root = ((void*)0);
 if (error == -1)
  goto fail;

 return (ldap->msgid);
fail:
 if (root != ((void*)0))
  ber_free_elements(root);

 ldap->err = ALDAP_ERR_OPERATION_FAILED;
 return (-1);
}
