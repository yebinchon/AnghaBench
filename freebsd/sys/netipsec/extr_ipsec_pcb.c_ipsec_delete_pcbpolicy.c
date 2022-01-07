
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inpcb {TYPE_1__* inp_sp; } ;
struct TYPE_2__ {int * sp_out; int * sp_in; } ;


 int M_IPSEC_INPCB ;
 int free (TYPE_1__*,int ) ;
 int key_freesp (int **) ;

int
ipsec_delete_pcbpolicy(struct inpcb *inp)
{

 if (inp->inp_sp == ((void*)0))
  return (0);

 if (inp->inp_sp->sp_in != ((void*)0))
  key_freesp(&inp->inp_sp->sp_in);

 if (inp->inp_sp->sp_out != ((void*)0))
  key_freesp(&inp->inp_sp->sp_out);

 free(inp->inp_sp, M_IPSEC_INPCB);
 inp->inp_sp = ((void*)0);
 return (0);
}
