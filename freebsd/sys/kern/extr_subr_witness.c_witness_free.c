
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct witness {int dummy; } ;


 int STAILQ_INSERT_HEAD (int *,struct witness*,int ) ;
 int w_free ;
 int w_free_cnt ;
 int w_list ;

__attribute__((used)) static void
witness_free(struct witness *w)
{

 STAILQ_INSERT_HEAD(&w_free, w, w_list);
 w_free_cnt++;
}
