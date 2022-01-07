
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int PyArg_ParseTuple (int *,char*,int*) ;
 int PyErr_SetString (int ,int ) ;
 int PyExc_IOError ;
 int Py_RETURN_NONE ;
 int bs_unmap (int) ;
 int errno ;
 int strerror (int ) ;

__attribute__((used)) static PyObject *
bus_unmap(PyObject *self, PyObject *args)
{
 int rid;

 if (!PyArg_ParseTuple(args, "i", &rid))
  return (((void*)0));
 if (!bs_unmap(rid)) {
  PyErr_SetString(PyExc_IOError, strerror(errno));
  return (((void*)0));
 }
 Py_RETURN_NONE;
}
