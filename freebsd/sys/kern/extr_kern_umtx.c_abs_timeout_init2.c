
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct abs_timeout {int dummy; } ;
struct _umtx_time {int _flags; int _timeout; int _clockid; } ;


 int UMTX_ABSTIME ;
 int abs_timeout_init (struct abs_timeout*,int ,int,int *) ;

__attribute__((used)) static void
abs_timeout_init2(struct abs_timeout *timo, const struct _umtx_time *umtxtime)
{

 abs_timeout_init(timo, umtxtime->_clockid,
     (umtxtime->_flags & UMTX_ABSTIME) != 0, &umtxtime->_timeout);
}
