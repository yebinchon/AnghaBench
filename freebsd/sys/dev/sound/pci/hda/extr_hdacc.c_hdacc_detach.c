
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdacc_softc {int fgs; } ;
typedef int device_t ;


 int M_HDACC ;
 int device_delete_children (int ) ;
 struct hdacc_softc* device_get_softc (int ) ;
 int free (int ,int ) ;

__attribute__((used)) static int
hdacc_detach(device_t dev)
{
 struct hdacc_softc *codec = device_get_softc(dev);
 int error;

 error = device_delete_children(dev);
 free(codec->fgs, M_HDACC);
 return (error);
}
