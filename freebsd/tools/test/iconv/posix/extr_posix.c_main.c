
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close_1 ;
 int conv_2big ;
 int conv_ebadf ;
 int conv_eilseq ;
 int conv_einval ;
 int conv_ret ;
 int open_1 ;
 int open_2 ;
 int test (int ,char*) ;

int
main(void)
{

 test(open_1, "open_1");
 test(open_2, "open_2");
 test(close_1, "close_1");
 test(conv_ret, "conv_ret");
 test(conv_ebadf, "conv_ebadf");
 test(conv_2big, "conv_2big");
 test(conv_einval, "conv_einval");
 test(conv_eilseq, "conv_eilseq");
}
