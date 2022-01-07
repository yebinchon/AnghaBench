
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label_specs {int head; } ;


 int STAILQ_EMPTY (int *) ;

int
specs_empty(struct label_specs *specs)
{

 return (STAILQ_EMPTY(&specs->head));
}
