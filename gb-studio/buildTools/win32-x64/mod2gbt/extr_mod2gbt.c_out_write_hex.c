
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int fprintf (int ,char*,int) ;
 int output_file ;

void out_write_hex(u8 number)
{
    fprintf(output_file,"%02x",number);
}
