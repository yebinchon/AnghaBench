
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct remote {int dummy; } ;


 struct remote* remote_get (int *) ;

__attribute__((used)) static int is_workflow_triangular(struct remote *remote)
{
 struct remote *fetch_remote = remote_get(((void*)0));
 return (fetch_remote && fetch_remote != remote);
}
