
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int STDERR_FILENO ;
 int ksem_close_should_fail (int ,int ) ;

__attribute__((used)) static void
close_invalid_fd(void)
{

 ksem_close_should_fail(STDERR_FILENO, EINVAL);
}
