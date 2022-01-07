
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct procdesc {int dummy; } ;
struct file {int dummy; } ;


 int DTYPE_PROCDESC ;
 int FREAD ;
 int FWRITE ;
 int finit (struct file*,int,int ,struct procdesc*,int *) ;
 int procdesc_ops ;

void
procdesc_finit(struct procdesc *pdp, struct file *fp)
{

 finit(fp, FREAD | FWRITE, DTYPE_PROCDESC, pdp, &procdesc_ops);
}
