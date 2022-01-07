
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char const*) ;

__attribute__((used)) static void
usage(const char *prog)
{
 printf("%s -i IFNAME\n"
        "[-j TEST_NUM1[-[TEST_NUM2]] | -[TEST_NUM_2]]\n"
        "[-l (list test cases)]\n",
        prog);
}
