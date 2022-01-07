
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char**) ;
 char** i_ptr ;
 int i_size ;
 int * i_womp ;
 int munmap (int *,int ) ;
 char** reallocarray (char**,size_t,int) ;

__attribute__((used)) static bool
reallocate_lines(size_t *lines_allocated)
{
 char **p;
 size_t new_size;

 new_size = *lines_allocated * 3 / 2;
 p = reallocarray(i_ptr, new_size + 2, sizeof(char *));
 if (p == ((void*)0)) {
  munmap(i_womp, i_size);
  i_womp = ((void*)0);
  free(i_ptr);
  i_ptr = ((void*)0);
  *lines_allocated = 0;
  return 0;
 }
 *lines_allocated = new_size;
 i_ptr = p;
 return 1;
}
