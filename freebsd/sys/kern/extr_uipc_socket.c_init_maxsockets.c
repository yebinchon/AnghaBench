
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TUNABLE_INT_FETCH (char*,int *) ;
 int imax (int ,int ) ;
 int maxfiles ;
 int maxsockets ;

__attribute__((used)) static void
init_maxsockets(void *ignored)
{

 TUNABLE_INT_FETCH("kern.ipc.maxsockets", &maxsockets);
 maxsockets = imax(maxsockets, maxfiles);
}
