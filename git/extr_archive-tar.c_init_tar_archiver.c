
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ data; } ;


 int git_config (int ,int *) ;
 int git_tar_config ;
 int nr_tar_filters ;
 int register_archiver (TYPE_1__*) ;
 TYPE_1__ tar_archiver ;
 int tar_filter_config (char*,char*,int *) ;
 TYPE_1__** tar_filters ;

void init_tar_archiver(void)
{
 int i;
 register_archiver(&tar_archiver);

 tar_filter_config("tar.tgz.command", "gzip -cn", ((void*)0));
 tar_filter_config("tar.tgz.remote", "true", ((void*)0));
 tar_filter_config("tar.tar.gz.command", "gzip -cn", ((void*)0));
 tar_filter_config("tar.tar.gz.remote", "true", ((void*)0));
 git_config(git_tar_config, ((void*)0));
 for (i = 0; i < nr_tar_filters; i++) {

  if (tar_filters[i]->data)
   register_archiver(tar_filters[i]);
 }
}
