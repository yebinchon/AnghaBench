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
typedef  union bhnd_nvram_sprom_storage {int dummy; } bhnd_nvram_sprom_storage ;
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct TYPE_4__ {size_t skip_out; int skip_in; size_t count; scalar_t__ skip_in_negative; } ;
struct TYPE_3__ {size_t nelem; int have_bind; int mask; int shift; int /*<<< orphan*/  base_type; TYPE_2__ bind; } ;
struct bhnd_sprom_opcode_state {scalar_t__ var_state; size_t offset; TYPE_1__ var; } ;
struct bhnd_sprom_opcode_idx_entry {int /*<<< orphan*/  vid; } ;
struct bhnd_nvram_vardefn {size_t nelem; int flags; int /*<<< orphan*/  type; int /*<<< orphan*/  fmt; int /*<<< orphan*/  name; } ;
struct bhnd_nvram_io {int dummy; } ;
typedef  int /*<<< orphan*/  intv ;
typedef  TYPE_1__ bhnd_sprom_opcode_var ;
typedef  TYPE_2__ bhnd_sprom_opcode_bind ;
typedef  int /*<<< orphan*/  bhnd_nvram_val ;
typedef  int /*<<< orphan*/  bhnd_nvram_type ;

/* Variables and functions */
 int /*<<< orphan*/  BHND_NVRAM_TYPE_INT32 ; 
 int /*<<< orphan*/  BHND_NVRAM_TYPE_UINT32 ; 
 int /*<<< orphan*/  BHND_NVRAM_VAL_BORROW_DATA ; 
 int BHND_NVRAM_VF_IGNALL1 ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,...) ; 
 int EFTYPE ; 
 int EINVAL ; 
 int ENOENT ; 
 size_t SIZE_MAX ; 
 scalar_t__ SPROM_OPCODE_VAR_STATE_OPEN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct bhnd_nvram_vardefn* FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct bhnd_nvram_vardefn const*,struct bhnd_nvram_io*,int /*<<< orphan*/ ,size_t,int,int,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,union bhnd_nvram_sprom_storage*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int*,int,int /*<<< orphan*/ ,void*,size_t*,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct bhnd_sprom_opcode_state*,int*) ; 
 int FUNC10 (struct bhnd_sprom_opcode_state*,struct bhnd_sprom_opcode_idx_entry*) ; 
 int FUNC11 (struct bhnd_sprom_opcode_state*) ; 
 int FUNC12 (struct bhnd_sprom_opcode_state*,struct bhnd_sprom_opcode_idx_entry*) ; 
 int /*<<< orphan*/  FUNC13 (union bhnd_nvram_sprom_storage*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int
FUNC14(struct bhnd_sprom_opcode_state *state,
    struct bhnd_sprom_opcode_idx_entry *entry, struct bhnd_nvram_io *io,
    union bhnd_nvram_sprom_storage *storage, bhnd_nvram_val *val)
{
	union bhnd_nvram_sprom_storage	*inp;
	const struct bhnd_nvram_vardefn	*var;
	bhnd_nvram_type			 var_btype;
	uint32_t			 intv;
	size_t				 ilen, ipos, iwidth;
	size_t				 nelem;
	bool				 all_bits_set;
	int				 error;

	/* Fetch canonical variable definition */
	var = FUNC3(entry->vid);
	FUNC0(var != NULL, ("invalid entry"));

	/*
	 * Fetch the array length from the SPROM variable definition.
	 *
	 * This generally be identical to the array length provided by the
	 * canonical NVRAM variable definition, but some SPROM layouts may
	 * define a smaller element count.
	 */
	if ((error = FUNC10(state, entry))) {
		FUNC1("variable evaluation failed: %d\n", error);
		return (error);
	}

	nelem = state->var.nelem;
	if (nelem > var->nelem) {
		FUNC1("SPROM array element count %zu cannot be "
		    "represented by '%s' element count of %hhu\n", nelem,
		    var->name, var->nelem);
		return (EFTYPE);
	}

	/* Fetch the var's base element type */
	var_btype = FUNC2(var->type);

	/* Calculate total byte length of the native encoding */
	if ((iwidth = FUNC8(NULL, 0, var_btype, 1)) == 0) {
		/* SPROM does not use (and we do not support) decoding of
		 * variable-width data types */
		FUNC1("invalid SPROM data type: %d", var->type);
		return (EFTYPE);
	}
	ilen = nelem * iwidth;

	/* Decode into our caller's local storage */
	inp = storage;
	if (ilen > sizeof(*storage)) {
		FUNC1("error decoding '%s', SPROM_ARRAY_MAXLEN "
		    "incorrect\n", var->name);
		return (EFTYPE);
	}

	/* Zero-initialize our decode buffer; any output elements skipped
	 * during decode should default to zero. */
	FUNC13(inp, 0, ilen);

	/*
	 * Decode the SPROM data, iteratively decoding up to nelem values.
	 */
	if ((error = FUNC12(state, entry))) {
		FUNC1("variable seek failed: %d\n", error);
		return (error);
	}

	ipos = 0;
	intv = 0x0;
	if (var->flags & BHND_NVRAM_VF_IGNALL1)
		all_bits_set = true;
	else
		all_bits_set = false;
	while ((error = FUNC11(state)) == 0) {
		bhnd_sprom_opcode_bind	*binding;
		bhnd_sprom_opcode_var	*binding_var;
		bhnd_nvram_type		 intv_type;
		size_t			 offset;
		size_t			 nbyte;
		uint32_t		 skip_in_bytes;
		void			*ptr;

		FUNC0(
		    state->var_state >= SPROM_OPCODE_VAR_STATE_OPEN,
		    ("invalid var state"));
		FUNC0(state->var.have_bind, ("invalid bind state"));

		binding_var = &state->var;
		binding = &state->var.bind;

		if (ipos >= nelem) {
			FUNC1("output skip %u positioned "
			    "%zu beyond nelem %zu\n",
			    binding->skip_out, ipos, nelem);
			return (EINVAL);
		}

		/* Calculate input skip bytes for this binding */
		skip_in_bytes = binding->skip_in;
		error = FUNC9(state, &skip_in_bytes);
		if (error)
			return (error);

		/* Bind */
		offset = state->offset;
		for (size_t i = 0; i < binding->count; i++) {
			/* Read the offset value, OR'ing with the current
			 * value of intv */
			error = FUNC5(var, io,
			    binding_var->base_type,
			    offset,
			    binding_var->mask,
			    binding_var->shift,
			    &intv);
			if (error)
				return (error);

			/* If IGNALL1, record whether value does not have
			 * all bits set. */
			if (var->flags & BHND_NVRAM_VF_IGNALL1 &&
			    all_bits_set)
			{
				uint32_t all1;

				all1 = binding_var->mask;
				if (binding_var->shift > 0)
					all1 >>= binding_var->shift;
				else if (binding_var->shift < 0)
					all1 <<= -binding_var->shift;

				if ((intv & all1) != all1)
					all_bits_set = false;
			}

			/* Adjust input position; this was already verified to
			 * not overflow/underflow during SPROM opcode
			 * evaluation */
			if (binding->skip_in_negative) {
				offset -= skip_in_bytes;
			} else {
				offset += skip_in_bytes;
			}

			/* Skip writing to inp if additional bindings are
			 * required to fully populate intv */
			if (binding->skip_out == 0)
				continue;

			/* We use bhnd_nvram_value_coerce() to perform
			 * overflow-checked coercion from the widened
			 * uint32/int32 intv value to the requested output
			 * type */
			if (FUNC4(var_btype))
				intv_type = BHND_NVRAM_TYPE_INT32;
			else
				intv_type = BHND_NVRAM_TYPE_UINT32;

			/* Calculate address of the current element output
			 * position */
			ptr = (uint8_t *)inp + (iwidth * ipos);

			/* Perform coercion of the array element */
			nbyte = iwidth;
			error = FUNC7(&intv, sizeof(intv),
			    intv_type, ptr, &nbyte, var_btype);
			if (error)
				return (error);

			/* Clear temporary state */
			intv = 0x0;

			/* Advance output position */
			if (SIZE_MAX - binding->skip_out < ipos) {
				FUNC1("output skip %u would overflow "
				    "%zu\n", binding->skip_out, ipos);
				return (EINVAL);
			}

			ipos += binding->skip_out;
		}
	}

	/* Did we iterate all bindings until hitting end of the variable
	 * definition? */
	FUNC0(error != 0, ("loop terminated early"));
	if (error != ENOENT) {
		return (error);
	}

	/* If marked IGNALL1 and all bits are set, treat variable as
	 * unavailable */
	if ((var->flags & BHND_NVRAM_VF_IGNALL1) && all_bits_set)
		return (ENOENT);

	/* Provide value wrapper */
	return (FUNC6(val, var->fmt, inp, ilen, var->type,
	    BHND_NVRAM_VAL_BORROW_DATA));
}