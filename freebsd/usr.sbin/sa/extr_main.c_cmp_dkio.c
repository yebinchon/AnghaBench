
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct cmdinfo {scalar_t__ ci_io; int ci_comm; } ;
typedef int c2 ;
typedef int c1 ;
struct TYPE_4__ {int data; } ;
typedef TYPE_1__ DBT ;


 int cmp_comm (int ,int ) ;
 int memcpy (struct cmdinfo*,int ,int) ;

__attribute__((used)) static int
cmp_dkio(const DBT *d1, const DBT *d2)
{
 struct cmdinfo c1, c2;

 memcpy(&c1, d1->data, sizeof(c1));
 memcpy(&c2, d2->data, sizeof(c2));

 if (c1.ci_io < c2.ci_io)
  return -1;
 else if (c1.ci_io == c2.ci_io)
  return (cmp_comm(c1.ci_comm, c2.ci_comm));
 else
  return 1;
}
