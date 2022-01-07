
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fclose (int *) ;
 int * grp_fp ;

void
vendgrent(void)
{
 if (grp_fp != ((void*)0)) {
  fclose(grp_fp);
  grp_fp = ((void*)0);
 }
}
