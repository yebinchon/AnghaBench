
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int KdPrint (char*) ;

__attribute__((used)) static int hpt_shutdown(device_t dev)
{
 KdPrint(("hpt_shutdown(dev=%p)", dev));
 return 0;
}
