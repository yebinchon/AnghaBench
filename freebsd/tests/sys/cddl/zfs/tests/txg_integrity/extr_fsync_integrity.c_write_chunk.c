
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef size_t uint32_t ;
typedef int pattern_t ;


 int free (int *) ;
 int get_chunk_range (int *,int,size_t*,size_t*) ;
 int * malloc (size_t) ;
 int marker_fill (int *,size_t,size_t,int) ;
 int outfd ;
 int pwrite (int ,void*,size_t,size_t) ;

__attribute__((used)) static void
write_chunk(pattern_t* p_pat, int chunk_idx, int thread_num)
{
  uint32_t chunk_start, chunk_end;
  get_chunk_range(p_pat, chunk_idx, &chunk_start, &chunk_end);
  size_t size = chunk_end - chunk_start;
  uint64_t* buf = malloc(size);
  marker_fill(buf, chunk_start, size, thread_num);
  pwrite(outfd, (void*)buf, size, chunk_start);
  free(buf);
}
