#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* empty_blob; } ;
struct TYPE_3__ {int /*<<< orphan*/  hash; } ;

/* Variables and functions */
 int FUNC0 (unsigned char const*,int /*<<< orphan*/ ) ; 
 TYPE_2__* the_hash_algo ; 

__attribute__((used)) static inline int FUNC1(const unsigned char *sha1)
{
	return FUNC0(sha1, the_hash_algo->empty_blob->hash);
}