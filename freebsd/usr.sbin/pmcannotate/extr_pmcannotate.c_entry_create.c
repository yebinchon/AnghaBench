
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {uintptr_t en_pc; uintptr_t en_ostart; uintptr_t en_oend; int en_nsamples; int * en_name; } ;


 struct entry* calloc (int,int) ;
 int free (struct entry*) ;
 int * strdup (char const*) ;

__attribute__((used)) static struct entry *
entry_create(const char *name, uintptr_t pc, uintptr_t start, uintptr_t end)
{
 struct entry *obj;

 obj = calloc(1, sizeof(struct entry));
 if (obj == ((void*)0))
  return (((void*)0));
 obj->en_name = strdup(name);
 if (obj->en_name == ((void*)0)) {
  free(obj);
  return (((void*)0));
 }
 obj->en_pc = pc;
 obj->en_ostart = start;
 obj->en_oend = end;
 obj->en_nsamples = 1;
 return (obj);
}
