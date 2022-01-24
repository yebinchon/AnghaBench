#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  union bhnd_nvram_sprom_storage {int dummy; } bhnd_nvram_sprom_storage ;
struct bhnd_nvram_vardefn {int dummy; } ;
struct bhnd_nvram_io {int dummy; } ;
typedef  int /*<<< orphan*/  bhnd_sprom_opcode_state ;
struct TYPE_4__ {size_t vid; } ;
typedef  TYPE_1__ bhnd_sprom_opcode_idx_entry ;
typedef  int /*<<< orphan*/  bhnd_sprom_layout ;
typedef  int /*<<< orphan*/  bhnd_nvram_val ;
typedef  int /*<<< orphan*/  bhnd_nvram_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int ENOENT ; 
 int ENXIO ; 
 struct bhnd_nvram_vardefn* FUNC1 (char const*) ; 
 size_t FUNC2 (struct bhnd_nvram_vardefn const*) ; 
 int FUNC3 (struct bhnd_nvram_io*,int /*<<< orphan*/  const**) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,struct bhnd_nvram_io*,union bhnd_nvram_sprom_storage*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,void*,size_t*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC10(struct bhnd_nvram_io *io, const char *name,
    void *buf, size_t *len, bhnd_nvram_type type)
{
	const bhnd_sprom_layout		*layout;
	bhnd_sprom_opcode_state		 state;
	const struct bhnd_nvram_vardefn	*var;
	size_t				 vid;
	int				 error;

	/* Look up the variable definition and ID */
	if ((var = FUNC1(name)) == NULL)
		return (ENOENT);
	
	vid = FUNC2(var);

	/* Identify the SPROM image layout */
	if ((error = FUNC3(io, &layout)))
		return (error);

	/* Initialize SPROM layout interpreter */
	if ((error = FUNC7(&state, layout))) {
		FUNC0("error initializing opcode state: %d\n", error);
		return (ENXIO);
	}

	/* Find SPROM layout entry for the requested variable */
	while ((error = FUNC9(&state)) == 0) {
		bhnd_sprom_opcode_idx_entry	entry;
		union bhnd_nvram_sprom_storage	storage;
		bhnd_nvram_val			val;
	
		/* Fetch the variable's entry state */
		if ((error = FUNC8(&state, &entry)))
			return (error);

		/* Match against expected VID */
		if (entry.vid != vid)
			continue;

		/* Decode variable to a new value instance */
		error = FUNC4(&state, &entry, io, &storage,
		    &val);
		if (error)
			return (error);

		/* Perform value coercion */
		error = FUNC5(&val, buf, len, type);

		/* Clean up */
		FUNC6(&val);
		return (error);
	}

	/* Hit EOF without matching the requested variable? */
	if (error == ENOENT)
		return (ENOENT);

	/* Some other parse error occured */
	return (error);
}