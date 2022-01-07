
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct pci_conf {int pc_sel; } ;


 scalar_t__ AGP_CAPID ;
 scalar_t__ AGP_MODE_GET_AGP (int ) ;
 scalar_t__ AGP_MODE_GET_MODE_3 (int ) ;
 int AGP_MODE_GET_RATE (int ) ;
 scalar_t__ AGP_MODE_GET_SBA (int ) ;





 scalar_t__ AGP_STATUS ;
 int printf (char*) ;
 int read_config (int,int *,scalar_t__,int) ;

__attribute__((used)) static void
cap_agp(int fd, struct pci_conf *p, uint8_t ptr)
{
 uint32_t status, command;

 status = read_config(fd, &p->pc_sel, ptr + AGP_STATUS, 4);
 command = read_config(fd, &p->pc_sel, ptr + AGP_CAPID, 4);
 printf("AGP ");
 if (AGP_MODE_GET_MODE_3(status)) {
  printf("v3 ");
  if (AGP_MODE_GET_RATE(status) & 128)
   printf("8x ");
  if (AGP_MODE_GET_RATE(status) & 129)
   printf("4x ");
 } else {
  if (AGP_MODE_GET_RATE(status) & 130)
   printf("4x ");
  if (AGP_MODE_GET_RATE(status) & 131)
   printf("2x ");
  if (AGP_MODE_GET_RATE(status) & 132)
   printf("1x ");
 }
 if (AGP_MODE_GET_SBA(status))
  printf("SBA ");
 if (AGP_MODE_GET_AGP(command)) {
  printf("enabled at ");
  if (AGP_MODE_GET_MODE_3(command)) {
   printf("v3 ");
   switch (AGP_MODE_GET_RATE(command)) {
   case 128:
    printf("8x ");
    break;
   case 129:
    printf("4x ");
    break;
   }
  } else
   switch (AGP_MODE_GET_RATE(command)) {
   case 130:
    printf("4x ");
    break;
   case 131:
    printf("2x ");
    break;
   case 132:
    printf("1x ");
    break;
   }
  if (AGP_MODE_GET_SBA(command))
   printf("SBA ");
 } else
  printf("disabled");
}
