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
struct bitmap {int word_alloc; int /*<<< orphan*/  words; } ;
typedef  int /*<<< orphan*/  eword_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 struct bitmap* FUNC1 (int) ; 

struct bitmap *FUNC2(void)
{
	struct bitmap *bitmap = FUNC1(sizeof(struct bitmap));
	bitmap->words = FUNC0(32, sizeof(eword_t));
	bitmap->word_alloc = 32;
	return bitmap;
}