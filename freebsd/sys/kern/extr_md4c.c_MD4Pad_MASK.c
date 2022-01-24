#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int* count; } ;
typedef  TYPE_1__ MD4_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned char*,int) ; 
 unsigned char* PADDING ; 

void
FUNC2(MD4_CTX *context)
{
  unsigned char bits[8];
  unsigned int index, padLen;

  /* Save number of bits */
  FUNC0 (bits, context->count, 8);

  /* Pad out to 56 mod 64.
   */
  index = (unsigned int)((context->count[0] >> 3) & 0x3f);
  padLen = (index < 56) ? (56 - index) : (120 - index);
  FUNC1 (context, PADDING, padLen);

  /* Append length (before padding) */
  FUNC1 (context, bits, 8);
}