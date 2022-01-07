
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_geom {int consumer; } ;
struct bio {int dummy; } ;


 int G_NOP_LOGREQ (struct bio*,char*) ;
 int LIST_FIRST (int *) ;
 int g_io_request (struct bio*,int ) ;

__attribute__((used)) static void
g_nop_pass(struct bio *cbp, struct g_geom *gp)
{

 G_NOP_LOGREQ(cbp, "Sending request.");
 g_io_request(cbp, LIST_FIRST(&gp->consumer));
}
