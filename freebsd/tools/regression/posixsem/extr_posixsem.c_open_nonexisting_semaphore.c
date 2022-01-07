
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int ksem_open_should_fail (char*,int ,int,int,int ) ;

__attribute__((used)) static void
open_nonexisting_semaphore(void)
{

 ksem_open_should_fail("/notreallythere", 0, 0777, 1, ENOENT);
}
