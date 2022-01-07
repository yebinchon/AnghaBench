
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int boot_parse_arg (char*) ;

int
boot_parse_args(int argc, char *argv[])
{
        int i, howto;

 howto = 0;
        for (i = 1; i < argc; i++)
                howto |= boot_parse_arg(argv[i]);
 return (howto);
}
