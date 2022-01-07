
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dumperinfo {int dummy; } ;


 int minidumpsys_nopae (struct dumperinfo*) ;
 int minidumpsys_pae (struct dumperinfo*) ;
 scalar_t__ pae_mode ;

int
minidumpsys(struct dumperinfo *di)
{

 return (pae_mode ? minidumpsys_pae(di) : minidumpsys_nopae(di));
}
