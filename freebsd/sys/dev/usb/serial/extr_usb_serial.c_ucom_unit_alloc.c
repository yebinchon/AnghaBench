
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPRINTF (char*,...) ;
 int alloc_unr (int *) ;
 int * ucom_unrhdr ;

__attribute__((used)) static int
ucom_unit_alloc(void)
{
 int unit;


 if (ucom_unrhdr == ((void*)0)) {
  DPRINTF("ucom_unrhdr is NULL\n");
  return (-1);
 }
 unit = alloc_unr(ucom_unrhdr);
 DPRINTF("unit %d is allocated\n", unit);
 return (unit);
}
