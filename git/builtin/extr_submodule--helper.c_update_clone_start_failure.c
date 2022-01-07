
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule_update_clone {int quickstop; } ;
struct strbuf {int dummy; } ;



__attribute__((used)) static int update_clone_start_failure(struct strbuf *err,
          void *suc_cb,
          void *idx_task_cb)
{
 struct submodule_update_clone *suc = suc_cb;
 suc->quickstop = 1;
 return 1;
}
