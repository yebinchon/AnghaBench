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
typedef  scalar_t__ uint8_t ;
struct bhnd_nvram_tlv_env {int dummy; } ;
struct bhnd_nvram_tlv {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 scalar_t__ NVRAM_TLV_TYPE_END ; 
 scalar_t__ NVRAM_TLV_TYPE_ENV ; 
 struct bhnd_nvram_tlv_env* FUNC1 (struct bhnd_nvram_tlv*,void*) ; 
 int FUNC2 (int /*<<< orphan*/ ,size_t*,size_t*,scalar_t__*) ; 
 void* FUNC3 (struct bhnd_nvram_tlv*,size_t) ; 

__attribute__((used)) static struct bhnd_nvram_tlv_env *
FUNC4(struct bhnd_nvram_tlv *tlv, size_t *next,
    void **cookiep)
{
	uint8_t	tag;
	int	error;

	/* Find the next TLV_ENV record, starting at @p next */
	do {
		void	*c;
		size_t	 offset;

		/* Fetch the next TLV record */
		error = FUNC2(tlv->data, next, &offset,
		    &tag);
		if (error) {
			FUNC0("unexpected error in next_record(): %d\n",
			    error);
			return (NULL);
		}

		/* Only interested in ENV records */
		if (tag != NVRAM_TLV_TYPE_ENV)
			continue;

		/* Map and return TLV_ENV record pointer */
		c = FUNC3(tlv, offset);

		/* Provide the cookiep value for the returned record */
		if (cookiep != NULL)
			*cookiep = c;

		return (FUNC1(tlv, c));
	} while (tag != NVRAM_TLV_TYPE_END);

	/* No remaining ENV records */
	return (NULL);
}