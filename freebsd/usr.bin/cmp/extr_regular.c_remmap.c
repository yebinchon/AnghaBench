
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int off_t ;


 int MADV_SEQUENTIAL ;
 int * MAP_FAILED ;
 int MAP_SHARED ;
 int MMAP_CHUNK ;
 int PROT_READ ;
 int madvise (int *,int ,int ) ;
 int * mmap (int *,int ,int ,int ,int,int ) ;
 int munmap (int *,int ) ;

__attribute__((used)) static u_char *
remmap(u_char *mem, int fd, off_t offset)
{
 if (mem != ((void*)0))
  munmap(mem, MMAP_CHUNK);
 mem = mmap(((void*)0), MMAP_CHUNK, PROT_READ, MAP_SHARED, fd, offset);
 if (mem == MAP_FAILED)
  return (((void*)0));
 madvise(mem, MMAP_CHUNK, MADV_SEQUENTIAL);
 return (mem);
}
