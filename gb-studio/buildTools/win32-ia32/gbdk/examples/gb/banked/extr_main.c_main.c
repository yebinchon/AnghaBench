
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bank2 (int) ;
 int puts (char*) ;

int main(void)
{
    puts("Testing 1,2,3...");
    puts("Calling bank2()");
    bank2(3);
    puts("Back to main()");
    return 0;
}
