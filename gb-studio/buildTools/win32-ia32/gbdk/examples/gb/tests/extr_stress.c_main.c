
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int UWORD ;
typedef int UBYTE ;
struct TYPE_3__ {void* h; void* l; } ;
struct TYPE_4__ {int w; TYPE_1__ b; } ;


 void* DIV_REG ;
 int free (int*) ;
 int initrand (int ) ;
 int* malloc (int) ;
 scalar_t__ malloc_first ;
 int memset (int**,int ,int) ;
 int printf (char*,...) ;
 int puts (char*) ;
 int rand () ;
 TYPE_2__ seed ;
 int waitpad (int) ;
 int waitpadup () ;

void main(void)
{
    UBYTE *base[32];
    UBYTE offset;
    UWORD worked = 0;
    UBYTE done = 0;
    UBYTE tests = 0;
    UWORD size;
    UWORD total = 0;
    printf("Testing...\n");


    memset(base, 0, 32*sizeof(UBYTE *));

    for (tests = 0; tests < 20; tests++) {

 done = 0;
 worked = 0;
 malloc_first = 0;

 while (!done) {
     offset = rand()&0x1f;
     if (base[offset] != ((void*)0)) {
  free(base[offset]);

     }

     base[offset] = malloc((UWORD)rand() + (UWORD)(rand()&0x3f));
     if (base[offset] == ((void*)0)) {
  done = 1;
     }
     worked++;
     if (!(worked&0xff)) {
  printf("%lu\r", worked);

     }
 }
 total += worked;
 printf("%lu worked.\n", worked);
    }
    printf("Total: %lu\n", total);
}
