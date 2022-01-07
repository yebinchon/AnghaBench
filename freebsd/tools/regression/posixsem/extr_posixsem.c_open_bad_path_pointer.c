
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EFAULT ;
 int O_RDONLY ;
 int ksem_open_should_fail (char*,int ,int,int,int ) ;

__attribute__((used)) static void
open_bad_path_pointer(void)
{

 ksem_open_should_fail((char *)1024, O_RDONLY, 0777, 1, EFAULT);
}
