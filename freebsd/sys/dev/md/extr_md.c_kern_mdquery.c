
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct md_req {int dummy; } ;


 int kern_mdquery_locked (struct md_req*) ;
 int md_sx ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

__attribute__((used)) static int
kern_mdquery(struct md_req *mdr)
{
 int error;

 sx_xlock(&md_sx);
 error = kern_mdquery_locked(mdr);
 sx_xunlock(&md_sx);
 return (error);
}
