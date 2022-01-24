#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8 ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int float_flag_divbyzero ; 
 int float_flag_inexact ; 
 int float_flag_invalid ; 
 int float_flag_overflow ; 
 int float_flag_underflow ; 
 int /*<<< orphan*/  FUNC0 (char,int /*<<< orphan*/ *) ; 

void FUNC1( uint8 flags, FILE *stream )
{

    FUNC0( flags & float_flag_invalid   ? 'v' : '.', stream );
    FUNC0( flags & float_flag_divbyzero ? 'z' : '.', stream );
    FUNC0( flags & float_flag_overflow  ? 'o' : '.', stream );
    FUNC0( flags & float_flag_underflow ? 'u' : '.', stream );
    FUNC0( flags & float_flag_inexact   ? 'x' : '.', stream );

}