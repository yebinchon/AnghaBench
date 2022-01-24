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
typedef  int /*<<< orphan*/  mstate ;
typedef  int /*<<< orphan*/  mchunkptr ;
typedef  scalar_t__ flag_t ;

/* Variables and functions */
 scalar_t__ CHUNK_OVERHEAD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 size_t SIZE_T_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 void* FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 int /*<<< orphan*/  FUNC13 (size_t*,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC14 (size_t) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void** FUNC17(mstate m,
		     size_t n_elements,
		     size_t* sizes,
		     int opts,
		     void* chunks[]) {
  /*
    This provides common support for independent_X routines, handling
    all of the combinations that can result.

    The opts arg has:
    bit 0 set if all elements are same size (using sizes[0])
    bit 1 set if elements should be zeroed
  */

  size_t    element_size;   /* chunksize of each element, if all same */
  size_t    contents_size;  /* total size of elements */
  size_t    array_size;     /* request size of pointer array */
  void*     mem;            /* malloced aggregate space */
  mchunkptr p;              /* corresponding chunk */
  size_t    remainder_size; /* remaining bytes while splitting */
  void**    marray;         /* either "chunks" or malloced ptr array */
  mchunkptr array_chunk;    /* chunk for malloced ptr array */
  flag_t    was_enabled;    /* to disable mmap */
  size_t    size;
  size_t    i;

  FUNC9();
  /* compute array length, if needed */
  if (chunks != 0) {
    if (n_elements == 0)
      return chunks; /* nothing to do */
    marray = chunks;
    array_size = 0;
  }
  else {
    /* if empty req, must still return chunk representing empty array */
    if (n_elements == 0)
      return (void**)FUNC10(m, 0);
    marray = 0;
    array_size = FUNC14(n_elements * (sizeof(void*)));
  }

  /* compute total element size */
  if (opts & 0x1) { /* all-same-size */
    element_size = FUNC14(*sizes);
    contents_size = n_elements * element_size;
  }
  else { /* add up all the sizes */
    element_size = 0;
    contents_size = 0;
    for (i = 0; i != n_elements; ++i)
      contents_size += FUNC14(sizes[i]);
  }

  size = contents_size + array_size;

  /*
     Allocate the aggregate chunk.  First disable direct-mmapping so
     malloc won't use it, since we would not be able to later
     free/realloc space internal to a segregated mmap region.
  */
  was_enabled = FUNC16(m);
  FUNC7(m);
  mem = FUNC10(m, size - CHUNK_OVERHEAD);
  if (was_enabled)
    FUNC8(m);
  if (mem == 0)
    return 0;

  if (FUNC1(m)) return 0;
  p = FUNC12(mem);
  remainder_size = FUNC6(p);

  FUNC2(!FUNC11(p));

  if (opts & 0x2) {       /* optionally clear the elements */
    FUNC13((size_t*)mem, 0, remainder_size - SIZE_T_SIZE - array_size);
  }

  /* If not provided, allocate the pointer array as final part of chunk */
  if (marray == 0) {
    size_t  array_chunk_size;
    array_chunk = FUNC5(p, contents_size);
    array_chunk_size = remainder_size - contents_size;
    marray = (void**) (FUNC4(array_chunk));
    FUNC15(m, array_chunk, array_chunk_size);
    remainder_size = contents_size;
  }

  /* split out elements */
  for (i = 0; ; ++i) {
    marray[i] = FUNC4(p);
    if (i != n_elements-1) {
      if (element_size != 0)
	size = element_size;
      else
	size = FUNC14(sizes[i]);
      remainder_size -= size;
      FUNC15(m, p, size);
      p = FUNC5(p, size);
    }
    else { /* the final element absorbs any overallocation slop */
      FUNC15(m, p, remainder_size);
      break;
    }
  }

#if DEBUG
  if (marray != chunks) {
    /* final element must have exactly exhausted chunk */
    if (element_size != 0) {
      assert(remainder_size == element_size);
    }
    else {
      assert(remainder_size == request2size(sizes[i]));
    }
    check_inuse_chunk(m, mem2chunk(marray));
  }
  for (i = 0; i != n_elements; ++i)
    check_inuse_chunk(m, mem2chunk(marray[i]));

#endif /* DEBUG */

  FUNC0(m);
  return marray;
}