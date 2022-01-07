
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fclose (int *) ;
 int * pwd_fp ;

void
vendpwent(void)
{
 if (pwd_fp != ((void*)0)) {
  fclose(pwd_fp);
  pwd_fp = ((void*)0);
 }
}
