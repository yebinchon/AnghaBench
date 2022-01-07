
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token_t ;
typedef int au_event_t ;
typedef int au_emod_t ;


 int * au_to_header32 (int,int ,int ) ;

token_t *
au_to_header(int rec_size, au_event_t e_type, au_emod_t e_mod)
{

 return (au_to_header32(rec_size, e_type, e_mod));
}
