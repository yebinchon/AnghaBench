
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ext_buf; } ;
struct mbuf {int m_flags; TYPE_1__ m_ext; int m_data; } ;
struct mb_args {int flags; short type; } ;


 int MCLBYTES ;
 int MPASS (int) ;
 int M_EXT ;
 int M_NOFREE ;
 int m_init (struct mbuf*,int,short,int) ;
 int trash_ctor (int ,int ,void*,int) ;

__attribute__((used)) static int
mb_ctor_pack(void *mem, int size, void *arg, int how)
{
 struct mbuf *m;
 struct mb_args *args;
 int error, flags;
 short type;

 m = (struct mbuf *)mem;
 args = (struct mb_args *)arg;
 flags = args->flags;
 type = args->type;
 MPASS((flags & M_NOFREE) == 0);





 error = m_init(m, how, type, flags);


 m->m_data = m->m_ext.ext_buf;
  m->m_flags = (flags | M_EXT);

 return (error);
}
