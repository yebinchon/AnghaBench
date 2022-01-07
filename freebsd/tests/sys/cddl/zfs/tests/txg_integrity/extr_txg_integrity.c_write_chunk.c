
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int pattern_t ;


 int free (int *) ;
 int get_chunk_range (int *,int,int*,int*) ;
 int * malloc (size_t) ;
 int marker_fill (int *,int,size_t,int) ;
 int memcpy (void*,void*,size_t) ;
 int outfd ;
 scalar_t__ p_file ;
 int pwrite (int ,void*,size_t,int) ;

__attribute__((used)) static void
write_chunk(pattern_t* p_pat, int chunk_idx, int is_follower)
{
  uint32_t chunk_start, chunk_end;
  get_chunk_range(p_pat, chunk_idx, &chunk_start, &chunk_end);
  size_t size = chunk_end - chunk_start;
  uint64_t* buf = malloc(size);
  marker_fill(buf, chunk_start, size, is_follower);



  pwrite(outfd, (void*)buf, size, chunk_start);

  free(buf);
}
