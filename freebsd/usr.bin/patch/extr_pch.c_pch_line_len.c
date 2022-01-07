
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t LINENUM ;


 unsigned short* p_len ;

unsigned short
pch_line_len(LINENUM line)
{
 return p_len[line];
}
