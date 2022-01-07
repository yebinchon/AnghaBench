
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct thread {int dummy; } ;
struct g_provider {TYPE_1__* geom; } ;
struct g_part_table {int dummy; } ;
struct TYPE_2__ {struct g_part_table* softc; } ;


 int G_PART_IOCTL (struct g_part_table*,struct g_provider*,int ,void*,int,struct thread*) ;

__attribute__((used)) static int
g_part_ioctl(struct g_provider *pp, u_long cmd, void *data, int fflag, struct thread *td)
{
 struct g_part_table *table;

 table = pp->geom->softc;
 return G_PART_IOCTL(table, pp, cmd, data, fflag, td);
}
