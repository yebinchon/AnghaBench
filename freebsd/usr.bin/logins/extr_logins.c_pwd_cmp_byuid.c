
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_uid; } ;



__attribute__((used)) static int
pwd_cmp_byuid(const void *ap, const void *bp)
{
 const struct passwd *a = ap;
 const struct passwd *b = bp;

 return (a->pw_uid - b->pw_uid);
}
