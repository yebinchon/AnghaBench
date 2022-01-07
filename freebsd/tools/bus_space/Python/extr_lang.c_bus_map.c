
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int PyArg_ParseTuple (int *,char*,char**,char**) ;
 int PyErr_SetString (int ,int ) ;
 int PyExc_IOError ;
 int * Py_BuildValue (char*,int) ;
 int bs_map (char*,char*) ;
 int errno ;
 int strerror (int ) ;

__attribute__((used)) static PyObject *
bus_map(PyObject *self, PyObject *args)
{
 char *dev, *resource;
 int rid;

 if (!PyArg_ParseTuple(args, "ss", &dev, &resource))
  return (((void*)0));
 rid = bs_map(dev, resource);
 if (rid == -1) {
  PyErr_SetString(PyExc_IOError, strerror(errno));
  return (((void*)0));
 }
 return (Py_BuildValue("i", rid));
}
