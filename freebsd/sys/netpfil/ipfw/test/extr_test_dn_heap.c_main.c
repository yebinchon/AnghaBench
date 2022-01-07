
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct dn_heap {scalar_t__ elements; TYPE_1__* p; } ;
typedef int h ;
struct TYPE_2__ {scalar_t__ key; int object; } ;


 int atoi (char*) ;
 int bzero (struct dn_heap*,int) ;
 int heap_extract (struct dn_heap*,int *) ;
 int heap_init (struct dn_heap*,int,int) ;
 int heap_insert (struct dn_heap*,int,void*) ;
 int panic (char*) ;
 int printf (char*,int,scalar_t__,int ) ;
 int random () ;
 int test_hash () ;

int
main(int argc, char *argv[])
{
 struct dn_heap h;
 int i, n, n2, n3;

 test_hash();
 return 0;


 n = (argc > 1) ? atoi(argv[1]) : 0;
 if (n <= 0 || n > 1000000)
  n = 100;
 n2 = (argc > 2) ? atoi(argv[2]) : 0;
 if (n2 <= 0)
  n = 1000000;
 n3 = (argc > 3) ? atoi(argv[3]) : 0;
 bzero(&h, sizeof(h));
 heap_init(&h, n, -1);
 while (n2-- > 0) {
  uint64_t prevk = 0;
  for (i=0; i < n; i++)
   heap_insert(&h, n3 ? n-i: random(), (void *)(100+i));

  for (i=0; h.elements > 0; i++) {
   uint64_t k = h.p[0].key;
   if (k < prevk)
    panic("wrong sequence\n");
   prevk = k;
   if (0)
   printf("%d key %llu, val %p\n",
    i, h.p[0].key, h.p[0].object);
   heap_extract(&h, ((void*)0));
  }
 }
 return 0;
}
