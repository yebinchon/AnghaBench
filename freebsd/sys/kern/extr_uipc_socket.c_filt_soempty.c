
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int so_snd; } ;
struct knote {int kn_data; TYPE_1__* kn_fp; } ;
struct TYPE_2__ {struct socket* f_data; } ;


 int SOCKBUF_LOCK_ASSERT (int *) ;
 scalar_t__ SOLISTENING (struct socket*) ;
 int sbused (int *) ;

__attribute__((used)) static int
filt_soempty(struct knote *kn, long hint)
{
 struct socket *so;

 so = kn->kn_fp->f_data;

 if (SOLISTENING(so))
  return (1);

 SOCKBUF_LOCK_ASSERT(&so->so_snd);
 kn->kn_data = sbused(&so->so_snd);

 if (kn->kn_data == 0)
  return (1);
 else
  return (0);
}
