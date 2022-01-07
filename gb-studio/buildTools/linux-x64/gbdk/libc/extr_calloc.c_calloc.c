
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* malloc (int) ;
 int memset (void*,int ,int) ;

void *calloc( int nmem, int size )
{
 void *malloced;

 malloced = malloc( nmem*size );
 if (malloced!=((void*)0)) {
  memset( malloced, 0, nmem*size );
  return malloced;
 }
 return ((void*)0);
}
