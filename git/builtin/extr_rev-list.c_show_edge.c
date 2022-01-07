
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; } ;


 char* oid_to_hex (int *) ;
 int printf (char*,char*) ;

__attribute__((used)) static void show_edge(struct commit *commit)
{
 printf("-%s\n", oid_to_hex(&commit->object.oid));
}
