
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xs_transaction {int dummy; } ;


 int XS_TRANSACTION_END ;
 int strcpy (char*,char*) ;
 int xs_single (struct xs_transaction,int ,char*,int *,int *) ;

int
xs_transaction_end(struct xs_transaction t, int abort)
{
 char abortstr[2];

 if (abort)
  strcpy(abortstr, "F");
 else
  strcpy(abortstr, "T");

 return (xs_single(t, XS_TRANSACTION_END, abortstr, ((void*)0), ((void*)0)));
}
