
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int UBYTE ;


 int SIZE ;
 int * malloc (int) ;
 int memset (int *,int,int) ;
 int printf (char*,...) ;

void main(void)
{
    UBYTE *area, *ptr;
    UWORD i;

    area = malloc(SIZE);


    memset(area, 0x55U, SIZE);


    memset(area, 0xAAU, SIZE);


    ptr = area;
    for (i=0; i<SIZE; i++) {
 if (*(ptr++) != 0xAAU) {
     printf("Failed at offset %lx\n", i);
 }
 if (!((UBYTE)i)) {
     printf("At %lx\r", i);
 }
    }


    ptr = area + SIZE - 16;
    printf("\nAt end: \n");
    for (i=0; i<32; i++) {
 printf("%lx: %x\n", (UWORD)((UWORD)&ptr[i] - (UWORD)area - SIZE), ptr[i]);
    }
    printf("\n");
}
