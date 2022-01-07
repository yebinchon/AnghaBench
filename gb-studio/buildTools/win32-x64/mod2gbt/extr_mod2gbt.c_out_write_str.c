
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char const*) ;
 scalar_t__ output_asm ;
 int output_file ;

void out_write_str(const char * c_str, const char * asm_str)
{
    fprintf(output_file,output_asm ? asm_str : c_str);
}
