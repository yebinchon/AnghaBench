
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sbuf {int dummy; } ;
struct g_provider {int dummy; } ;
struct g_geom {int dummy; } ;
struct g_consumer {int dummy; } ;
struct TYPE_2__ {int queues; int units; } ;


 TYPE_1__ me ;
 int sbuf_printf (struct sbuf*,char*,int ,int ) ;

__attribute__((used)) static void
g_rr_dumpconf(struct sbuf *sb, const char *indent, struct g_geom *gp,
    struct g_consumer *cp, struct g_provider *pp)
{
 if (indent == ((void*)0)) {
  sbuf_printf(sb, " units %d queues %d",
   me.units, me.queues);
        }
}
