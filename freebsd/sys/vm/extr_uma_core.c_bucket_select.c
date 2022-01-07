
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uma_bucket_zone {int ubz_maxsize; int ubz_entries; } ;


 int MAX (int,int) ;
 struct uma_bucket_zone* bucket_zones ;

__attribute__((used)) static int
bucket_select(int size)
{
 struct uma_bucket_zone *ubz;

 ubz = &bucket_zones[0];
 if (size > ubz->ubz_maxsize)
  return MAX((ubz->ubz_maxsize * ubz->ubz_entries) / size, 1);

 for (; ubz->ubz_entries != 0; ubz++)
  if (ubz->ubz_maxsize < size)
   break;
 ubz--;
 return (ubz->ubz_entries);
}
