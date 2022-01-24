#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_7__ {int val_storage; int refs; int data_storage; int /*<<< orphan*/  fmt; } ;
typedef  TYPE_1__ bhnd_nvram_val ;
typedef  int /*<<< orphan*/  bhnd_nvram_type ;

/* Variables and functions */
 int BHND_NVRAM_VAL_COPY_DATA ; 
#define  BHND_NVRAM_VAL_DATA_EXT_ALLOC 135 
#define  BHND_NVRAM_VAL_DATA_EXT_STATIC 134 
#define  BHND_NVRAM_VAL_DATA_EXT_WEAK 133 
#define  BHND_NVRAM_VAL_DATA_INLINE 132 
#define  BHND_NVRAM_VAL_DATA_NONE 131 
 int BHND_NVRAM_VAL_DYNAMIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int BHND_NVRAM_VAL_STATIC_DATA ; 
#define  BHND_NVRAM_VAL_STORAGE_AUTO 130 
#define  BHND_NVRAM_VAL_STORAGE_DYNAMIC 129 
#define  BHND_NVRAM_VAL_STORAGE_STATIC 128 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 void* FUNC4 (TYPE_1__*,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__**,int /*<<< orphan*/ ,void const*,size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 

bhnd_nvram_val *
FUNC7(bhnd_nvram_val *value)
{
	bhnd_nvram_val		*result;
	const void		*bytes;
	bhnd_nvram_type		 type;
	size_t			 len;
	uint32_t		 flags;
	int			 error;

	switch (value->val_storage) {
	case BHND_NVRAM_VAL_STORAGE_STATIC:
		/* If static, can return as-is */
		return (value);

	case BHND_NVRAM_VAL_STORAGE_DYNAMIC:
		if (!FUNC0(value)) {
			FUNC6(&value->refs);
			return (value);
		}

		/* Perform copy below */
		break;

	case BHND_NVRAM_VAL_STORAGE_AUTO:
		FUNC1(value->refs == 1, ("non-allocated value has "
		    "active refcount (%u)", value->refs));

		/* Perform copy below */
		break;
	}


	/* Compute the new value's flags based on the source value */
	switch (value->data_storage) {
	case BHND_NVRAM_VAL_DATA_NONE:
	case BHND_NVRAM_VAL_DATA_INLINE:
	case BHND_NVRAM_VAL_DATA_EXT_WEAK:
	case BHND_NVRAM_VAL_DATA_EXT_ALLOC:
		/* Copy the source data and permit additional allocation if the
		 * value cannot be represented inline */
		flags = BHND_NVRAM_VAL_COPY_DATA|BHND_NVRAM_VAL_DYNAMIC;
		break;
	case BHND_NVRAM_VAL_DATA_EXT_STATIC:
		flags = BHND_NVRAM_VAL_STATIC_DATA;
		break;
	default:
		FUNC3("invalid storage type: %d", value->data_storage);
	}

	/* Allocate new value copy */
	bytes = FUNC4(value, &len, &type);
	error = FUNC5(&result, value->fmt, bytes, len, type,
	    flags);
	if (error) {
		FUNC2("copy failed: %d", error);
		return (NULL);
	}

	return (result);
}