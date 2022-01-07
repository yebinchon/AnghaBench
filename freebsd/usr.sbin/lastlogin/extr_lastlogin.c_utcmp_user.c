
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utmpx {int ut_user; } ;


 int order ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int
utcmp_user(const void *u1, const void *u2)
{

 return (order * strcmp(((const struct utmpx *)u1)->ut_user,
     ((const struct utmpx *)u2)->ut_user));
}
