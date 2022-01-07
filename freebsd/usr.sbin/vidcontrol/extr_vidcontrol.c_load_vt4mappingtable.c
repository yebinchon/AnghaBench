
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* len; void* dst; int src; } ;
typedef TYPE_1__ vfnt_map_t ;
typedef int FILE ;


 void* be16toh (void*) ;
 int be32toh (int ) ;
 TYPE_1__* calloc (unsigned int,int) ;
 int fread (TYPE_1__*,int,int,int *) ;
 int free (TYPE_1__*) ;
 int warn (char*) ;

__attribute__((used)) static vfnt_map_t *
load_vt4mappingtable(unsigned int nmappings, FILE *f)
{
 vfnt_map_t *t;
 unsigned int i;

 if (nmappings == 0)
  return (((void*)0));

 if ((t = calloc(nmappings, sizeof(*t))) == ((void*)0)) {
  warn("calloc");
  return (((void*)0));
 }

 if (fread(t, sizeof *t * nmappings, 1, f) != 1) {
  warn("read mappings");
  free(t);
  return (((void*)0));
 }

 for (i = 0; i < nmappings; i++) {
  t[i].src = be32toh(t[i].src);
  t[i].dst = be16toh(t[i].dst);
  t[i].len = be16toh(t[i].len);
 }

 return (t);
}
