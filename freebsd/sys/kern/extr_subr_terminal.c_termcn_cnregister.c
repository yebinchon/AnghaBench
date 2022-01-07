
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct terminal {struct consdev* consdev; int tm_flags; } ;
struct consdev {int cn_name; int cn_pri; struct terminal* cn_arg; int * cn_ops; } ;


 int CN_INTERNAL ;
 int M_TERMINAL ;
 int M_WAITOK ;
 int M_ZERO ;
 int TF_CONS ;
 int cnadd (struct consdev*) ;
 struct consdev* malloc (int,int ,int) ;
 int sprintf (int ,char*) ;
 int termcn_cnops ;
 int terminal_init (struct terminal*) ;

void
termcn_cnregister(struct terminal *tm)
{
 struct consdev *cp;

 cp = tm->consdev;
 if (cp == ((void*)0)) {
  cp = malloc(sizeof(struct consdev), M_TERMINAL,
      M_WAITOK|M_ZERO);
  cp->cn_ops = &termcn_cnops;
  cp->cn_arg = tm;
  cp->cn_pri = CN_INTERNAL;
  sprintf(cp->cn_name, "ttyv0");

  tm->tm_flags = TF_CONS;
  tm->consdev = cp;

  terminal_init(tm);
 }


 cnadd(cp);
}
