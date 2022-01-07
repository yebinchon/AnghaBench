
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_unit {int fault_log_size; } ;



__attribute__((used)) static int
dmar_fault_next(struct dmar_unit *unit, int faultp)
{

 faultp += 2;
 if (faultp == unit->fault_log_size)
  faultp = 0;
 return (faultp);
}
