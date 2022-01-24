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
typedef  int /*<<< orphan*/  u8 ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEM ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 void* FUNC1 (void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void * FUNC2(const void *private_data,
				   u8 private_data_len)
{
	void *data;

	if (!private_data || !private_data_len)
		return NULL;

	data = FUNC1(private_data, private_data_len, GFP_KERNEL);
	if (!data)
		return FUNC0(-ENOMEM);

	return data;
}