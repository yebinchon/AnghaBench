#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_6__ {void const* ptr; } ;
struct TYPE_7__ {size_t data_len; int /*<<< orphan*/  data_type; TYPE_1__ data; int /*<<< orphan*/  data_storage; } ;
typedef  TYPE_2__ bhnd_nvram_val ;
typedef  int /*<<< orphan*/  bhnd_nvram_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int BHND_NVRAM_VAL_BORROW_DATA ; 
 int /*<<< orphan*/  BHND_NVRAM_VAL_DATA_EXT_STATIC ; 
 int /*<<< orphan*/  BHND_NVRAM_VAL_DATA_EXT_WEAK ; 
 int BHND_NVRAM_VAL_STATIC_DATA ; 
 int ENOMEM ; 
 void* FUNC1 (TYPE_2__*,size_t,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (void const*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*,void const*,size_t) ; 

__attribute__((used)) static int
FUNC4(bhnd_nvram_val *value, const void *inp, size_t ilen,
    bhnd_nvram_type itype, uint32_t flags)
{
	void	*bytes;
	int	 error;

	FUNC0(value);

	/* Validate alignment */
	if ((error = FUNC2(inp, ilen, itype)))
		return (error);

	/* Reference the external data */
	if ((flags & BHND_NVRAM_VAL_BORROW_DATA) ||
	    (flags & BHND_NVRAM_VAL_STATIC_DATA))
	{
		if (flags & BHND_NVRAM_VAL_STATIC_DATA)
			value->data_storage = BHND_NVRAM_VAL_DATA_EXT_STATIC;
		else
			value->data_storage = BHND_NVRAM_VAL_DATA_EXT_WEAK;

		value->data.ptr = inp;
		value->data_type = itype;
		value->data_len = ilen;
		return (0);
	}

	/* Fetch reference to (or allocate) an appropriately sized buffer */
	bytes = FUNC1(value, ilen, itype, flags);
	if (bytes == NULL)
		return (ENOMEM);

	/* Copy data */
	FUNC3(bytes, inp, ilen);

	return (0);
}