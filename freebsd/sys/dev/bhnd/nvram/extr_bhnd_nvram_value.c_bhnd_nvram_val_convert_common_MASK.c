#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  bhnd_nvram_val_storage ;
struct TYPE_14__ {int /*<<< orphan*/  native_type; } ;
typedef  TYPE_1__ bhnd_nvram_val_fmt ;
struct TYPE_15__ {int data_storage; } ;
typedef  TYPE_2__ bhnd_nvram_val ;
typedef  int /*<<< orphan*/  bhnd_nvram_type ;

/* Variables and functions */
 int BHND_NVRAM_VAL_BORROW_DATA ; 
#define  BHND_NVRAM_VAL_DATA_EXT_ALLOC 132 
#define  BHND_NVRAM_VAL_DATA_EXT_STATIC 131 
#define  BHND_NVRAM_VAL_DATA_EXT_WEAK 130 
#define  BHND_NVRAM_VAL_DATA_INLINE 129 
#define  BHND_NVRAM_VAL_DATA_NONE 128 
 TYPE_2__ FUNC0 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int BHND_NVRAM_VAL_STATIC_DATA ; 
 int ENOMEM ; 
 void* FUNC1 (TYPE_2__*,size_t,int /*<<< orphan*/ ,int) ; 
 void* FUNC2 (TYPE_2__*,size_t*,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__*,void*,size_t*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__ const**,void const*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_1__ const*,void const*,size_t,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(bhnd_nvram_val *value,
    bhnd_nvram_val_storage val_storage, const bhnd_nvram_val_fmt *fmt,
    bhnd_nvram_val *src, uint32_t flags)
{
	const void	*inp;
	void		*outp;
	bhnd_nvram_type	 itype, otype;
	size_t		 ilen, olen;
	int		 error;

	/* Determine whether direct initialization from the source value's
	 * existing data type is supported by the new format */
	inp = FUNC2(src, &ilen, &itype);
	if (FUNC4(&fmt, inp, ilen, itype) == 0) {
		/* Adjust value flags based on the source data storage */
		switch (src->data_storage) {
		case BHND_NVRAM_VAL_DATA_NONE:
		case BHND_NVRAM_VAL_DATA_INLINE:
		case BHND_NVRAM_VAL_DATA_EXT_WEAK:
		case BHND_NVRAM_VAL_DATA_EXT_ALLOC:
			break;

		case BHND_NVRAM_VAL_DATA_EXT_STATIC:
			/* If the source data has static storage duration,
			 * we should apply that transitively */
			if (flags & BHND_NVRAM_VAL_BORROW_DATA)
				flags |= BHND_NVRAM_VAL_STATIC_DATA;

			break;
		}

		/* Delegate to standard initialization */
		return (FUNC5(value, val_storage, fmt, inp,
		    ilen, itype, flags));
	} 

	/* Value must be initialized with the format's native type */
	otype = fmt->native_type;

	/* Initialize value instance */
	*value = FUNC0(fmt, val_storage);

	/* Determine size when encoded in native format */
	if ((error = FUNC3(src, NULL, &olen, otype)))
		return (error);
	
	/* Fetch reference to (or allocate) an appropriately sized buffer */
	outp = FUNC1(value, olen, otype, flags);
	if (outp == NULL)
		return (ENOMEM);
	
	/* Perform encode */
	if ((error = FUNC3(src, outp, &olen, otype)))
		return (error);

	return (0);
}