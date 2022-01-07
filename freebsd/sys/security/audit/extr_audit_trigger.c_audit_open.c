
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;


 int EBUSY ;
 int audit_isopen ;
 int audit_trigger_mtx ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
audit_open(struct cdev *dev, int oflags, int devtype, struct thread *td)
{
 int error;


 mtx_lock(&audit_trigger_mtx);
 if (!audit_isopen) {
  error = 0;
  audit_isopen = 1;
 } else
  error = EBUSY;
 mtx_unlock(&audit_trigger_mtx);

 return (error);
}
