
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bridge_ifs ;
 int bridge_ifs_free (int *) ;

void
bridge_ifs_fini(void)
{
 bridge_ifs_free(&bridge_ifs);
}
