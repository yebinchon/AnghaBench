
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int device_get_softc (int ) ;
 int mly_free (int ) ;
 int mly_shutdown (int ) ;

__attribute__((used)) static int
mly_detach(device_t dev)
{
    int error;

    if ((error = mly_shutdown(dev)) != 0)
 return(error);

    mly_free(device_get_softc(dev));
    return(0);
}
