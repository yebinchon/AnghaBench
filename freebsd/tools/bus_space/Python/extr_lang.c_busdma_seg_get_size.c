
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int PyObject ;


 int PyArg_ParseTuple (int *,char*,int*) ;
 int PyErr_SetString (int ,int ) ;
 int PyExc_IOError ;
 int * Py_BuildValue (char*,int ) ;
 int bd_seg_get_size (int,int *) ;
 int strerror (int) ;

__attribute__((used)) static PyObject *
busdma_seg_get_size(PyObject *self, PyObject *args)
{
 u_long size;
 int error, sid;

 if (!PyArg_ParseTuple(args, "i", &sid))
  return (((void*)0));
 error = bd_seg_get_size(sid, &size);
 if (error) {
  PyErr_SetString(PyExc_IOError, strerror(error));
  return (((void*)0));
 }
 return (Py_BuildValue("k", size));
}
