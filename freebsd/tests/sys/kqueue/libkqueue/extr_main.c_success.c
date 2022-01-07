
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* cur_test_id ;
 int free (char*) ;
 int printf (char*,char*,char*) ;

void
success(void)
{
    printf("%-70s %s\n", cur_test_id, "passed");
    free(cur_test_id);
    cur_test_id = ((void*)0);
}
