
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ber_element {int dummy; } ;
struct aldap {int msgid; int err; int ber; } ;


 int ALDAP_ERR_OPERATION_FAILED ;
 int BER_CLASS_APP ;
 int LDAP_DEBUG (char*,struct ber_element*) ;
 int LDAP_REQ_UNBIND_30 ;
 struct ber_element* ber_add_sequence (int *) ;
 int ber_free_elements (struct ber_element*) ;
 struct ber_element* ber_printf_elements (struct ber_element*,char*,int,int ,int ) ;
 int ber_write_elements (int *,struct ber_element*) ;

int
aldap_unbind(struct aldap *ldap)
{
 struct ber_element *root = ((void*)0), *elm;
 int error;

 if ((root = ber_add_sequence(((void*)0))) == ((void*)0))
  goto fail;
 elm = ber_printf_elements(root, "d{t", ++ldap->msgid, BER_CLASS_APP,
     LDAP_REQ_UNBIND_30);
 if (elm == ((void*)0))
  goto fail;

 LDAP_DEBUG("aldap_unbind", root);

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
