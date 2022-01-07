
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cur_test_id ;
 int err (int,char*) ;
 int free (scalar_t__) ;
 int printf (char*,int ,char const*) ;
 scalar_t__ strdup (char const*) ;
 int testnum ;

void
test_begin(const char *func)
{
    if (cur_test_id)
        free(cur_test_id);
    cur_test_id = strdup(func);
    if (!cur_test_id)
        err(1, "strdup failed");

    printf("\n\nTest %d: %s\n", testnum++, func);
}
