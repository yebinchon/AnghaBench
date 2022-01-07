
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int mac_vnode_label_free (struct label*) ;

void
mac_execve_interpreter_exit(struct label *interpvplabel)
{

 if (interpvplabel != ((void*)0))
  mac_vnode_label_free(interpvplabel);
}
