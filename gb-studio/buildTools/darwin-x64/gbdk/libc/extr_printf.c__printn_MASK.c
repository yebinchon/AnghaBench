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
 void volatile FUNC0 (char,void*) ; 
 void volatile FUNC1 (char const,void*) ; 

__attribute__((used)) static void FUNC2(unsigned u, unsigned base, char issigned, 
                    volatile void (*emitter)(char, void *), void *pData)
{
    const char *_hex = "0123456789ABCDEF";
    if (issigned && ((int)u < 0)) {
	(*emitter)('-', pData);
	u = (unsigned)-((int)u);
    }
    if (u >= base)
	FUNC2(u/base, base, 0, emitter, pData);
    (*emitter)(_hex[u%base], pData);
}