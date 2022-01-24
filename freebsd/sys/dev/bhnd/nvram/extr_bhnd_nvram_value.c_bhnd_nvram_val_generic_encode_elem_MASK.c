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
typedef  int /*<<< orphan*/  bhnd_nvram_val ;
typedef  int bhnd_nvram_type ;

/* Variables and functions */
#define  BHND_NVRAM_TYPE_BOOL 140 
#define  BHND_NVRAM_TYPE_CHAR 139 
#define  BHND_NVRAM_TYPE_DATA 138 
#define  BHND_NVRAM_TYPE_INT16 137 
#define  BHND_NVRAM_TYPE_INT32 136 
#define  BHND_NVRAM_TYPE_INT64 135 
#define  BHND_NVRAM_TYPE_INT8 134 
#define  BHND_NVRAM_TYPE_NULL 133 
#define  BHND_NVRAM_TYPE_STRING 132 
#define  BHND_NVRAM_TYPE_UINT16 131 
#define  BHND_NVRAM_TYPE_UINT32 130 
#define  BHND_NVRAM_TYPE_UINT64 129 
#define  BHND_NVRAM_TYPE_UINT8 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (void const*,size_t,int,void*,size_t*,int) ; 
 int FUNC3 (void const*,size_t,int,void*,size_t*,int) ; 
 int FUNC4 (void const*,size_t,int,void*,size_t*,int) ; 
 int FUNC5 (void const*,size_t,int,void*,size_t*,int) ; 
 int FUNC6 (void const*,size_t,int,void*,size_t*,int) ; 

int
FUNC7(bhnd_nvram_val *value, const void *inp,
    size_t ilen, void *outp, size_t *olen, bhnd_nvram_type otype)
{
	bhnd_nvram_type itype;

	itype = FUNC1(value);
	switch (itype) {
	case BHND_NVRAM_TYPE_NULL:
		return (FUNC5(inp, ilen, itype, outp, olen,
		    otype));

	case BHND_NVRAM_TYPE_DATA:
		return (FUNC3(inp, ilen, itype, outp,
		    olen, otype));

	case BHND_NVRAM_TYPE_STRING:
	case BHND_NVRAM_TYPE_CHAR:
		return (FUNC6(inp, ilen, itype, outp,
		    olen, otype));

	case BHND_NVRAM_TYPE_BOOL:
		return (FUNC2(inp, ilen, itype, outp, olen,
		    otype));

	case BHND_NVRAM_TYPE_UINT8:
	case BHND_NVRAM_TYPE_UINT16:
	case BHND_NVRAM_TYPE_UINT32:
	case BHND_NVRAM_TYPE_UINT64:
	case BHND_NVRAM_TYPE_INT8:
	case BHND_NVRAM_TYPE_INT16:
	case BHND_NVRAM_TYPE_INT32:
	case BHND_NVRAM_TYPE_INT64:
		return (FUNC4(inp, ilen, itype, outp, olen,
		    otype));	
	default:
		FUNC0("missing encode_elem() implementation");
	}
}