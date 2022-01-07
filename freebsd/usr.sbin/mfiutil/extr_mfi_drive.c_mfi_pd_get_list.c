
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct mfi_pd_list {int size; } ;


 int MFI_DCMD_PD_GET_LIST ;
 int free (struct mfi_pd_list*) ;
 scalar_t__ mfi_dcmd_command (int,int ,struct mfi_pd_list*,int,int *,int ,int *) ;
 struct mfi_pd_list* reallocf (struct mfi_pd_list*,int) ;

int
mfi_pd_get_list(int fd, struct mfi_pd_list **listp, uint8_t *statusp)
{
 struct mfi_pd_list *list;
 uint32_t list_size;





 list = ((void*)0);
 list_size = 1024;
fetch:
 list = reallocf(list, list_size);
 if (list == ((void*)0))
  return (-1);
 if (mfi_dcmd_command(fd, MFI_DCMD_PD_GET_LIST, list, list_size, ((void*)0),
     0, statusp) < 0) {
  free(list);
  return (-1);
 }

 if (list->size > list_size) {
  list_size = list->size;
  goto fetch;
 }

 *listp = list;
 return (0);
}
