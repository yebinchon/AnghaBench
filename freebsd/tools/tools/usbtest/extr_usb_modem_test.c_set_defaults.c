
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct modem {int data_stress_test; int control_ep_test; int duration; } ;


 int memset (struct modem*,int ,int) ;

__attribute__((used)) static void
set_defaults(struct modem *p)
{
 memset(p, 0, sizeof(*p));

 p->data_stress_test = 1;
 p->control_ep_test = 1;
 p->duration = 60;
}
