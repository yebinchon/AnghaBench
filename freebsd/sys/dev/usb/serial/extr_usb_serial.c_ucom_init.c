
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DPRINTF (char*) ;
 int MTX_DEF ;
 scalar_t__ UCOM_UNIT_MAX ;
 int mtx_init (int *,char*,int *,int ) ;
 int new_unrhdr (int ,scalar_t__,int *) ;
 int ucom_mtx ;
 int ucom_unrhdr ;

__attribute__((used)) static void
ucom_init(void *arg)
{
 DPRINTF("\n");
 ucom_unrhdr = new_unrhdr(0, UCOM_UNIT_MAX - 1, ((void*)0));
 mtx_init(&ucom_mtx, "UCOM MTX", ((void*)0), MTX_DEF);
}
