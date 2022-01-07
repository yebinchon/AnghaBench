
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cycletime () ;
 int nname ;
 int timepropagate (int ) ;
 int * topsortnlp ;

void
dotime(void)
{
    int index;

    cycletime();
    for ( index = 0 ; index < nname ; index += 1 ) {
 timepropagate( topsortnlp[ index ] );
    }
}
