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

/* Variables and functions */
 long FUNC0 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static long
FUNC1(const char *value)
{
        char    *vtp;
        long    iv;
 
        if (value == NULL)
                return (0);
        iv = FUNC0(value, &vtp, 0);
        if (vtp == value || (vtp[0] != '\0' && vtp[1] != '\0')) {
                return (0);
        }
        switch (vtp[0]) {
        case 't': case 'T':
                iv *= 1024;
        case 'g': case 'G':
                iv *= 1024;
        case 'm': case 'M':
                iv *= 1024;
        case 'k': case 'K':
                iv *= 1024;
        case '\0':
                break;
        default:
                return (0);
        }
        return (iv);
}