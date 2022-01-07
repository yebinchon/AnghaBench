
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int STDERR_FILENO ;
 int ksem_post_should_fail (int ,int ) ;

__attribute__((used)) static void
post_invalid_semaphore(void)
{

 ksem_post_should_fail(STDERR_FILENO, EINVAL);
}
