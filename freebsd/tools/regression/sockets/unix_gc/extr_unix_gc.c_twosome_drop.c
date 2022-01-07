
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int twosome_drop_work (char*,int,int,int) ;

__attribute__((used)) static void
twosome_drop(void)
{






 twosome_drop_work("twosome_drop1", 0, 0, 0);
 twosome_drop_work("twosome_drop2", 0, 0, 1);
 twosome_drop_work("twosome_drop3", 0, 1, 0);
 twosome_drop_work("twosome_drop4", 0, 1, 1);
 twosome_drop_work("twosome_drop5", 1, 0, 0);
 twosome_drop_work("twosome_drop6", 1, 0, 1);
 twosome_drop_work("twosome_drop7", 1, 1, 0);
 twosome_drop_work("twosome_drop8", 1, 1, 1);
}
