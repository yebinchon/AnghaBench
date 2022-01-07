
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; } ;


 int oid_array_append (int *,int *) ;
 int recent_objects ;

__attribute__((used)) static void record_recent_commit(struct commit *commit, void *data)
{
 oid_array_append(&recent_objects, &commit->object.oid);
}
