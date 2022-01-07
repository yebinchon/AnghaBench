
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlp_intrsrc {int irt; } ;


 int nlm_pic_ack (int ,int ) ;
 int xlp_pic_base ;

__attribute__((used)) static void
xlp_post_ithread(void *source)
{
 struct xlp_intrsrc *src = source;

 nlm_pic_ack(xlp_pic_base, src->irt);
}
