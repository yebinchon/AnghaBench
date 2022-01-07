
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servtab {int * se_conn; } ;
struct conninfo {int co_numchild; int * co_proc; } ;


 struct conninfo* LIST_FIRST (int *) ;
 int PERIPSIZE ;
 int free_conn (struct conninfo*) ;
 int free_proc (int ) ;

__attribute__((used)) static void
free_connlist(struct servtab *sep)
{
 struct conninfo *conn;
 int i, j;

 for (i = 0; i < PERIPSIZE; ++i) {
  while ((conn = LIST_FIRST(&sep->se_conn[i])) != ((void*)0)) {
   for (j = 0; j < conn->co_numchild; ++j)
    free_proc(conn->co_proc[j]);
   conn->co_numchild = 0;
   free_conn(conn);
  }
 }
}
