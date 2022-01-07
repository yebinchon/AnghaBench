
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;


 int COUNTER_INC (int ) ;
 int posixshm_check_create ;

__attribute__((used)) static int
test_posixshm_check_create(struct ucred *cred, const char *path)
{

 COUNTER_INC(posixshm_check_create);
 return (0);
}
