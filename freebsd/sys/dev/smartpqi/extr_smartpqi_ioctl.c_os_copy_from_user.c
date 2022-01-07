
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqisrc_softstate {int dummy; } ;


 int copyin (void*,void*,int) ;

int os_copy_from_user(struct pqisrc_softstate *softs, void *dest_buf,
  void *src_buf, int size, int mode)
{
 return(copyin(src_buf, dest_buf, size));
}
