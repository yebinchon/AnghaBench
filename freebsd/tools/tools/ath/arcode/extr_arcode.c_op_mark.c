
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct athregrec {size_t reg; int val; } ;


 size_t MAX_MARKERS ;
 char** markers ;
 int printf (char*,char const*,size_t,int) ;

__attribute__((used)) static void
op_mark(struct athregrec *a)
{
        const char *s = "UNKNOWN";
        if (a->reg <= MAX_MARKERS)
                s = markers[a->reg];

 printf("mark\t%s (%d): %d\n", s, a->reg, a->val);
}
