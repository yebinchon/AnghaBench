
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* pmmalloc_hunk ;
typedef int mmalloc_hunk ;
typedef int UINT16 ;
struct TYPE_3__ {scalar_t__ magic; int size; scalar_t__ status; struct TYPE_3__* next; } ;


 scalar_t__ MALLOC_FREE ;
 scalar_t__ MALLOC_MAGIC ;
 int debug (char*,char*) ;
 int free (void*) ;
 void* malloc (int) ;
 TYPE_1__* malloc_first ;
 int malloc_gc () ;
 int memcpy (void*,void*,int) ;

void *realloc( void *current, int size )
{

 UINT16 nextSize;
 pmmalloc_hunk thisHunk, newHunk, ptr;
 void *newRegion;

 thisHunk = malloc_first;

 ptr = (void *)((UINT16)current - sizeof(mmalloc_hunk));

 if (size==0) {
  free(current);
  return ((void*)0);
 }
 if (current==((void*)0)) {
  return malloc(size);
 }

 while (thisHunk && (thisHunk->magic==MALLOC_MAGIC)) {
  if (thisHunk == ptr) {
   debug("realloc", "Found hunk");
   if (thisHunk->size == size )
    return current;

   if (thisHunk->size > size ) {
    if (thisHunk->size > size + sizeof( mmalloc_hunk )) {

     newHunk = (pmmalloc_hunk)(size + sizeof( mmalloc_hunk )+(UINT16)thisHunk);
     newHunk->status = MALLOC_FREE;
     newHunk->size = thisHunk->size - size -sizeof( mmalloc_hunk );
     newHunk->magic = MALLOC_MAGIC;
     newHunk->next = thisHunk->next;

     thisHunk->next = newHunk;
     thisHunk->size = size;
     return current;
    }
    else {

     return current;
    }
   }
   if (thisHunk->next != ((void*)0)) {
    if (thisHunk->next->status == MALLOC_FREE) {

     malloc_gc();
     nextSize = thisHunk->next->size;

     if ((nextSize + thisHunk->size + sizeof( mmalloc_hunk )) >= size ) {


      newHunk = (pmmalloc_hunk)(size + sizeof( mmalloc_hunk )+(UINT16)thisHunk);
      newHunk->next = thisHunk->next->next;
      newHunk->status = MALLOC_FREE;
      newHunk->size = thisHunk->size + nextSize - size -sizeof( mmalloc_hunk );
      newHunk->magic = MALLOC_MAGIC;

      thisHunk->next = newHunk;
      thisHunk->size = size;
      return current;
     }
    }

    newRegion = malloc (size);
    if (newRegion) {
     memcpy( newRegion, current, thisHunk->size );
     free( current );
     return newRegion;
    }
    return ((void*)0);
   }
  }
  thisHunk = thisHunk->next;
 };

 debug("realloc", "No hunk found");
 return ((void*)0);
}
