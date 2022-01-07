
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct process_commit_data {int current_commit; } ;
struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; } ;



__attribute__((used)) static void process_commit(struct commit *commit, void *data)
{
 struct process_commit_data *pcd = data;
 pcd->current_commit = commit->object.oid;
}
