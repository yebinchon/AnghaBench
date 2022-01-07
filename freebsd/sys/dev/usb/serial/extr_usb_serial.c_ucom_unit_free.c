
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPRINTF (char*,...) ;
 int UCOM_UNIT_MAX ;
 int free_unr (int *,int) ;
 int * ucom_unrhdr ;

__attribute__((used)) static void
ucom_unit_free(int unit)
{

 if (unit < 0 || unit >= UCOM_UNIT_MAX || ucom_unrhdr == ((void*)0)) {
  DPRINTF("cannot free unit number\n");
  return;
 }
 DPRINTF("unit %d is freed\n", unit);
 free_unr(ucom_unrhdr, unit);
}
