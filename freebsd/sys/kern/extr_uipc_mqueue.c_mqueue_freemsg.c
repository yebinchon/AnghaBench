
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mqueue_msg {int dummy; } ;


 int M_MQUEUEDATA ;
 int free (struct mqueue_msg*,int ) ;

__attribute__((used)) static __inline void
mqueue_freemsg(struct mqueue_msg *msg)
{
 free(msg, M_MQUEUEDATA);
}
