
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;


 int crcopy (struct ucred*,struct ucred*) ;
 struct ucred* crget () ;

struct ucred *
crdup(struct ucred *cr)
{
 struct ucred *newcr;

 newcr = crget();
 crcopy(newcr, cr);
 return (newcr);
}
