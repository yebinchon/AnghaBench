
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xs_transaction {int id; } ;


 int M_XENSTORE ;
 int XST_NIL ;
 int XS_TRANSACTION_START ;
 int free (char*,int ) ;
 int strtoul (char*,int *,int ) ;
 int xs_single (int ,int ,char*,int *,void**) ;

int
xs_transaction_start(struct xs_transaction *t)
{
 char *id_str;
 int error;

 error = xs_single(XST_NIL, XS_TRANSACTION_START, "", ((void*)0),
     (void **)&id_str);
 if (error == 0) {
  t->id = strtoul(id_str, ((void*)0), 0);
  free(id_str, M_XENSTORE);
 }
 return (error);
}
