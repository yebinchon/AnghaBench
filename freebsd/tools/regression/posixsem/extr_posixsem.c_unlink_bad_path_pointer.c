
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFAULT ;
 int ksem_unlink_should_fail (char*,int ) ;

__attribute__((used)) static void
unlink_bad_path_pointer(void)
{

 ksem_unlink_should_fail((char *)1024, EFAULT);
}
