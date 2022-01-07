
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcb {int inp_flags2; } ;


 int INP_PCBGROUPWILD ;
 int in_pcbwild_add (struct inpcb*) ;
 int in_pcbwild_needed (struct inpcb*) ;
 int in_pcbwild_remove (struct inpcb*) ;

__attribute__((used)) static void
in_pcbwild_update_internal(struct inpcb *inp)
{
 int wildcard_needed;

 wildcard_needed = in_pcbwild_needed(inp);
 if (wildcard_needed && !(inp->inp_flags2 & INP_PCBGROUPWILD))
  in_pcbwild_add(inp);
 else if (!wildcard_needed && (inp->inp_flags2 & INP_PCBGROUPWILD))
  in_pcbwild_remove(inp);
}
