
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int recpos ;
 int roundup2 (int ,int) ;

__attribute__((used)) static void
intalign(void)
{

 recpos = roundup2(recpos, sizeof(int));
}
