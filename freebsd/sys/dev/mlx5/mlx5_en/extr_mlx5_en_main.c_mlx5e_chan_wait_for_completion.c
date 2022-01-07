
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m_snd_tag; } ;
struct mlx5e_channel {int completion; TYPE_1__ tag; } ;


 int m_snd_tag_rele (int *) ;
 int wait_for_completion (int *) ;

__attribute__((used)) static void
mlx5e_chan_wait_for_completion(struct mlx5e_channel *c)
{

 m_snd_tag_rele(&c->tag.m_snd_tag);
 wait_for_completion(&c->completion);
}
