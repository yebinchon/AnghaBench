
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mstate ;
typedef int mchunkptr ;
typedef scalar_t__ flag_t ;


 scalar_t__ CHUNK_OVERHEAD ;
 int POSTACTION (int ) ;
 scalar_t__ PREACTION (int ) ;
 size_t SIZE_T_SIZE ;
 int assert (int) ;
 int check_inuse_chunk (int ,int ) ;
 void* chunk2mem (int ) ;
 int chunk_plus_offset (int ,size_t) ;
 size_t chunksize (int ) ;
 int disable_mmap (int ) ;
 int enable_mmap (int ) ;
 int ensure_initialization () ;
 void* internal_malloc (int ,scalar_t__) ;
 int is_mmapped (int ) ;
 int mem2chunk (void*) ;
 int memset (size_t*,int ,size_t) ;
 size_t request2size (size_t) ;
 int set_size_and_pinuse_of_inuse_chunk (int ,int ,size_t) ;
 scalar_t__ use_mmap (int ) ;

__attribute__((used)) static void** ialloc(mstate m,
       size_t n_elements,
       size_t* sizes,
       int opts,
       void* chunks[]) {
  size_t element_size;
  size_t contents_size;
  size_t array_size;
  void* mem;
  mchunkptr p;
  size_t remainder_size;
  void** marray;
  mchunkptr array_chunk;
  flag_t was_enabled;
  size_t size;
  size_t i;

  ensure_initialization();

  if (chunks != 0) {
    if (n_elements == 0)
      return chunks;
    marray = chunks;
    array_size = 0;
  }
  else {

    if (n_elements == 0)
      return (void**)internal_malloc(m, 0);
    marray = 0;
    array_size = request2size(n_elements * (sizeof(void*)));
  }


  if (opts & 0x1) {
    element_size = request2size(*sizes);
    contents_size = n_elements * element_size;
  }
  else {
    element_size = 0;
    contents_size = 0;
    for (i = 0; i != n_elements; ++i)
      contents_size += request2size(sizes[i]);
  }

  size = contents_size + array_size;






  was_enabled = use_mmap(m);
  disable_mmap(m);
  mem = internal_malloc(m, size - CHUNK_OVERHEAD);
  if (was_enabled)
    enable_mmap(m);
  if (mem == 0)
    return 0;

  if (PREACTION(m)) return 0;
  p = mem2chunk(mem);
  remainder_size = chunksize(p);

  assert(!is_mmapped(p));

  if (opts & 0x2) {
    memset((size_t*)mem, 0, remainder_size - SIZE_T_SIZE - array_size);
  }


  if (marray == 0) {
    size_t array_chunk_size;
    array_chunk = chunk_plus_offset(p, contents_size);
    array_chunk_size = remainder_size - contents_size;
    marray = (void**) (chunk2mem(array_chunk));
    set_size_and_pinuse_of_inuse_chunk(m, array_chunk, array_chunk_size);
    remainder_size = contents_size;
  }


  for (i = 0; ; ++i) {
    marray[i] = chunk2mem(p);
    if (i != n_elements-1) {
      if (element_size != 0)
 size = element_size;
      else
 size = request2size(sizes[i]);
      remainder_size -= size;
      set_size_and_pinuse_of_inuse_chunk(m, p, size);
      p = chunk_plus_offset(p, size);
    }
    else {
      set_size_and_pinuse_of_inuse_chunk(m, p, remainder_size);
      break;
    }
  }
  POSTACTION(m);
  return marray;
}
