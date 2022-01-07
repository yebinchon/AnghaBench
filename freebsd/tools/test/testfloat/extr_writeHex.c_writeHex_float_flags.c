
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int FILE ;


 int float_flag_divbyzero ;
 int float_flag_inexact ;
 int float_flag_invalid ;
 int float_flag_overflow ;
 int float_flag_underflow ;
 int fputc (char,int *) ;

void writeHex_float_flags( uint8 flags, FILE *stream )
{

    fputc( flags & float_flag_invalid ? 'v' : '.', stream );
    fputc( flags & float_flag_divbyzero ? 'z' : '.', stream );
    fputc( flags & float_flag_overflow ? 'o' : '.', stream );
    fputc( flags & float_flag_underflow ? 'u' : '.', stream );
    fputc( flags & float_flag_inexact ? 'x' : '.', stream );

}
