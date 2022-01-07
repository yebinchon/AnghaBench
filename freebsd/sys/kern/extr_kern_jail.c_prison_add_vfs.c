
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsconf {int vfc_name; void* vfc_prison_flag; } ;


 int M_TEMP ;
 int asprintf (char**,int ,char*,int ) ;
 int free (char*,int ) ;
 void* prison_add_allow (char*,int ,int *,char*) ;

void
prison_add_vfs(struct vfsconf *vfsp)
{





 char *descr;

 (void)asprintf(&descr, M_TEMP, "Jail may mount the %s file system",
     vfsp->vfc_name);
 vfsp->vfc_prison_flag = prison_add_allow("mount", vfsp->vfc_name,
     ((void*)0), descr);
 free(descr, M_TEMP);

}
