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
typedef  int /*<<< orphan*/  uint32_t ;
struct bhnd_nvram_store {int dummy; } ;
struct bhnd_nvram_io {int dummy; } ;
typedef  int /*<<< orphan*/  bhnd_nvram_plist ;
typedef  int /*<<< orphan*/  bhnd_nvram_data_class ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct bhnd_nvram_io*) ; 
 int FUNC2 (struct bhnd_nvram_io*,size_t) ; 
 int FUNC3 (struct bhnd_nvram_io*,int /*<<< orphan*/ ,void**,size_t,int /*<<< orphan*/ *) ; 
 struct bhnd_nvram_io* FUNC4 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (struct bhnd_nvram_store*,char const*,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 

int
FUNC7(struct bhnd_nvram_store *sc, const char *path,
   struct bhnd_nvram_io **data,  uint32_t flags)
{
	bhnd_nvram_plist	*props;
	bhnd_nvram_plist	*options;
	bhnd_nvram_data_class	*cls;
	struct bhnd_nvram_io	*io;
	void			*outp;
	size_t			 olen;
	int			 error;

	props = NULL;
	options = NULL;
	io = NULL;

	/* Perform requested export */
	error = FUNC6(sc, path, &cls, &props, &options,
	    flags);
	if (error)
		return (error);

	/* Determine serialized size */
	error = FUNC0(cls, props, options, NULL, &olen);
	if (error)
		goto failed;

	/* Allocate output buffer */
	if ((io = FUNC4(olen, olen)) == NULL) {
		error = ENOMEM;
		goto failed;
	}

	/* Fetch write pointer */
	if ((error = FUNC3(io, 0, &outp, olen, NULL)))
		goto failed;

	/* Perform serialization */
	error = FUNC0(cls, props, options, outp, &olen);
	if (error)
		goto failed;

	if ((error = FUNC2(io, olen)))
		goto failed;

	/* Success */
	FUNC5(props);
	FUNC5(options);

	*data = io;
	return (0);

failed:
	if (props != NULL)
		FUNC5(props);

	if (options != NULL)
		FUNC5(options);

	if (io != NULL)
		FUNC1(io);

	return (error);
}