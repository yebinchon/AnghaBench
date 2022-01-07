
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_tagset {unsigned int mask; int avail; int * taghash; int * namehash; int seed; } ;


 int BIT_FILL (int ,int *) ;
 int M_PFHASH ;
 int M_WAITOK ;
 int TAGID_MAX ;
 int TAILQ_INIT (int *) ;
 int arc4random () ;
 void* mallocarray (unsigned int,int,int ,int ) ;
 int powerof2 (unsigned int) ;

__attribute__((used)) static void
pf_init_tagset(struct pf_tagset *ts, unsigned int *tunable_size,
    unsigned int default_size)
{
 unsigned int i;
 unsigned int hashsize;

 if (*tunable_size == 0 || !powerof2(*tunable_size))
  *tunable_size = default_size;

 hashsize = *tunable_size;
 ts->namehash = mallocarray(hashsize, sizeof(*ts->namehash), M_PFHASH,
     M_WAITOK);
 ts->taghash = mallocarray(hashsize, sizeof(*ts->taghash), M_PFHASH,
     M_WAITOK);
 ts->mask = hashsize - 1;
 ts->seed = arc4random();
 for (i = 0; i < hashsize; i++) {
  TAILQ_INIT(&ts->namehash[i]);
  TAILQ_INIT(&ts->taghash[i]);
 }
 BIT_FILL(TAGID_MAX, &ts->avail);
}
