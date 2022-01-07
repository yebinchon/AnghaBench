
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*) ;

__attribute__((used)) static void
usage(const char *argv[])
{
 printf("usage: %s [o | c | [ [a|d]  wtap_id1  wtap_id2]]\n",
     argv[0]);
}
