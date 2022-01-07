
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_ifs {int dummy; } ;
struct bridge_if {int dummy; } ;


 struct bridge_if* TAILQ_FIRST (struct bridge_ifs*) ;
 int TAILQ_REMOVE (struct bridge_ifs*,struct bridge_if*,int ) ;
 int b_if ;
 int free (struct bridge_if*) ;

__attribute__((used)) static void
bridge_ifs_free(struct bridge_ifs *headp)
{
 struct bridge_if *b;

 while ((b = TAILQ_FIRST(headp)) != ((void*)0)) {
  TAILQ_REMOVE(headp, b, b_if);
  free(b);
 }
}
