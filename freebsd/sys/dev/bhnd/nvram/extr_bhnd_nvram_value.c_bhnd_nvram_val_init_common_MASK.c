#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  bhnd_nvram_val_storage ;
struct TYPE_6__ {scalar_t__ native_type; } ;
typedef  TYPE_1__ bhnd_nvram_val_fmt ;
typedef  int /*<<< orphan*/  bhnd_nvram_val ;
typedef  scalar_t__ bhnd_nvram_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int ENOMEM ; 
 void* FUNC1 (int /*<<< orphan*/ *,size_t,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (scalar_t__) ; 
 int FUNC3 (TYPE_1__ const**,void const*,size_t,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ *,void const*,size_t,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (void const*,size_t,scalar_t__,void*,size_t*,scalar_t__) ; 

__attribute__((used)) static int
FUNC6(bhnd_nvram_val *value,
    bhnd_nvram_val_storage val_storage, const bhnd_nvram_val_fmt *fmt,
    const void *inp, size_t ilen, bhnd_nvram_type itype, uint32_t flags)
{
	void		*outp;
	bhnd_nvram_type	 otype;
	size_t		 olen;
	int		 error;

	/* If the value format is unspecified, we use the default format
	 * for the input data type */
	if (fmt == NULL)
		fmt = FUNC2(itype);

	/* Determine expected data type, and allow the format to delegate to
	 * a new format instance */
	if ((error = FUNC3(&fmt, inp, ilen, itype))) {
		/* Direct initialization from the provided input type is
		 * not supported; alue must be initialized with the format's
		 * native type */
		otype = fmt->native_type;
	} else {
		/* Value can be initialized with provided input type */
		otype = itype;
	}

	/* Initialize value instance */
	*value = FUNC0(fmt, val_storage);

	/* If input data already in native format, init directly. */
	if (otype == itype) {
		error = FUNC4(value, inp, ilen, itype, flags);
		if (error)
			return (error);

		return (0);
	}
	
	/* Determine size when encoded in native format */
	error = FUNC5(inp, ilen, itype, NULL, &olen, otype);
	if (error)
		return (error);
	
	/* Fetch reference to (or allocate) an appropriately sized buffer */
	outp = FUNC1(value, olen, otype, flags);
	if (outp == NULL)
		return (ENOMEM);
	
	/* Perform encode */
	error = FUNC5(inp, ilen, itype, outp, &olen, otype);
	if (error)
		return (error);
	
	return (0);
}