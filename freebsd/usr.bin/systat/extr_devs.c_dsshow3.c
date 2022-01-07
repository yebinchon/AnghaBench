
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statinfo {int dummy; } ;


 int dsshow2 (int,int,int,int,struct statinfo*,struct statinfo*) ;

__attribute__((used)) static void
dsshow3(int diskcol, int diskrow, int dn, int lc, struct statinfo *now, struct statinfo *then)
{
 dsshow2(diskcol, diskrow, dn, lc, now, then);
}
