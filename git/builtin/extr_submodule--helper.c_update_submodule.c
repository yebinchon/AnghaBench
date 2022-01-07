
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct update_clone_data {int just_cloned; TYPE_1__* sub; int oid; } ;
struct TYPE_2__ {char* path; } ;


 int fprintf (int ,char*,char*,int,char*) ;
 char* oid_to_hex (int *) ;
 int stdout ;

__attribute__((used)) static void update_submodule(struct update_clone_data *ucd)
{
 fprintf(stdout, "dummy %s %d\t%s\n",
  oid_to_hex(&ucd->oid),
  ucd->just_cloned,
  ucd->sub->path);
}
