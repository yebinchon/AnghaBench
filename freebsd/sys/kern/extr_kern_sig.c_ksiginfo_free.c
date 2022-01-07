
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ksiginfo_t ;


 int ksiginfo_zone ;
 int uma_zfree (int ,int *) ;

void
ksiginfo_free(ksiginfo_t *ksi)
{
 uma_zfree(ksiginfo_zone, ksi);
}
