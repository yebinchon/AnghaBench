
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bridge_port {int dummy; } ;


 struct bridge_port* TAILQ_NEXT (struct bridge_port*,int ) ;
 int b_p ;

__attribute__((used)) static struct bridge_port *
bridge_port_next(struct bridge_port *bp)
{
 return (TAILQ_NEXT(bp, b_p));
}
