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
struct gif_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gif_list*) ; 
 int GIF_HASH_SIZE ; 
 int /*<<< orphan*/  M_GIF ; 
 int /*<<< orphan*/  M_WAITOK ; 
 struct gif_list* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct gif_list *
FUNC2(void)
{
	struct gif_list *hash;
	int i;

	hash = FUNC1(sizeof(struct gif_list) * GIF_HASH_SIZE,
	    M_GIF, M_WAITOK);
	for (i = 0; i < GIF_HASH_SIZE; i++)
		FUNC0(&hash[i]);

	return (hash);
}