
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label_specs {int head; } ;


 int STAILQ_INIT (int *) ;
 int err (int,char*) ;
 struct label_specs* malloc (int) ;

struct label_specs *
new_specs(void)
{
 struct label_specs *specs;

 specs = malloc(sizeof(*specs));
 if (specs == ((void*)0))
  err(1, "malloc");
 STAILQ_INIT(&specs->head);
 return (specs);
}
