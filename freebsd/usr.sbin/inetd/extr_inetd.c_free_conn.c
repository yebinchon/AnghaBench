
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct conninfo {scalar_t__ co_numchild; struct conninfo* co_proc; } ;


 int LIST_REMOVE (struct conninfo*,int ) ;
 int co_link ;
 int free (struct conninfo*) ;

__attribute__((used)) static void
free_conn(struct conninfo *conn)
{
 if (conn == ((void*)0))
  return;
 if (conn->co_numchild <= 0) {
  LIST_REMOVE(conn, co_link);
  free(conn->co_proc);
  free(conn);
 }
}
