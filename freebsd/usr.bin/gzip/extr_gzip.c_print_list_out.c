
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ off_t ;


 int print_ratio (scalar_t__,scalar_t__,int ) ;
 int printf (char*,...) ;
 int stdout ;

__attribute__((used)) static void
print_list_out(off_t out, off_t in, const char *outfile)
{
 printf("%12llu %12llu ", (unsigned long long)out, (unsigned long long)in);
 print_ratio(in, out, stdout);
 printf(" %s\n", outfile);
}
