
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pic {int dummy; } ;


 int EBUSY ;
 int TAILQ_INSERT_TAIL (int *,struct pic*,int ) ;
 scalar_t__ intr_pic_registered (struct pic*) ;
 int intrpic_lock ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pics ;

int
intr_register_pic(struct pic *pic)
{
 int error;

 mtx_lock(&intrpic_lock);
 if (intr_pic_registered(pic))
  error = EBUSY;
 else {
  TAILQ_INSERT_TAIL(&pics, pic, pics);
  error = 0;
 }
 mtx_unlock(&intrpic_lock);
 return (error);
}
