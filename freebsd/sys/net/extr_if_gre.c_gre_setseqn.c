
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct grehdr {int gre_flags; int * gre_opts; } ;


 int GRE_FLAGS_CP ;
 int GRE_FLAGS_KP ;
 int GRE_FLAGS_SP ;
 int KASSERT (int,char*) ;
 int htonl (int ) ;
 int ntohs (int ) ;

__attribute__((used)) static void
gre_setseqn(struct grehdr *gh, uint32_t seq)
{
 uint32_t *opts;
 uint16_t flags;

 opts = gh->gre_opts;
 flags = ntohs(gh->gre_flags);
 KASSERT((flags & GRE_FLAGS_SP) != 0,
     ("gre_setseqn called, but GRE_FLAGS_SP isn't set "));
 if (flags & GRE_FLAGS_CP)
  opts++;
 if (flags & GRE_FLAGS_KP)
  opts++;
 *opts = htonl(seq);
}
