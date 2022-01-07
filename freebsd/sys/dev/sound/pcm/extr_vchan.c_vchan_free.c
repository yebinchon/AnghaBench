
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kobj_t ;


 int M_DEVBUF ;
 int free (void*,int ) ;

__attribute__((used)) static int
vchan_free(kobj_t obj, void *data)
{

 free(data, M_DEVBUF);

 return (0);
}
