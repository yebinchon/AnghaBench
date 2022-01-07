
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lio_recv_info {int dummy; } ;


 int M_DEVBUF ;
 int free (struct lio_recv_info*,int ) ;

__attribute__((used)) static inline void
lio_free_recv_info(struct lio_recv_info *recv_info)
{

 free(recv_info, M_DEVBUF);
}
