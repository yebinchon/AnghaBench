
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fopen (char*,char*) ;
 scalar_t__ output_asm ;
 int output_file ;

void out_open(void)
{
    output_file = fopen(output_asm ? "music.asm" : "music.c","w");
}
