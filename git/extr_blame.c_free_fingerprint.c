
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fingerprint {int entries; int map; } ;


 int free (int ) ;
 int hashmap_free (int *) ;

__attribute__((used)) static void free_fingerprint(struct fingerprint *f)
{
 hashmap_free(&f->map);
 free(f->entries);
}
