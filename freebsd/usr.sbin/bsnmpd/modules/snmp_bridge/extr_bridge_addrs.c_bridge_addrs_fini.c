
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bridge_tpe_free (int *) ;
 int tp_entries ;

void
bridge_addrs_fini(void)
{
 bridge_tpe_free(&tp_entries);
}
