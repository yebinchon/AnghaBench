
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char const*) ;
 int output_file ;

void out_write_str(const char *str)
{
    fprintf(output_file, str);
}
