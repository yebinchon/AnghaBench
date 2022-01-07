
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XenbusState ;


 int XST_NIL ;
 int XenbusStateClosed ;
 int xs_gather (int ,char const*,char*,char*,int *,int *) ;

XenbusState
xenbus_read_driver_state(const char *path)
{
        XenbusState result;
        int error;

        error = xs_gather(XST_NIL, path, "state", "%d", &result, ((void*)0));
        if (error)
                result = XenbusStateClosed;

        return (result);
}
