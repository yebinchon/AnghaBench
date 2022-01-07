
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct image_params {int * execlabel; } ;


 int mac_cred_label_free (int *) ;

void
mac_execve_exit(struct image_params *imgp)
{
 if (imgp->execlabel != ((void*)0)) {
  mac_cred_label_free(imgp->execlabel);
  imgp->execlabel = ((void*)0);
 }
}
