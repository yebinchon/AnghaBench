
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int PyArg_ParseTuple (int *,char*,int*) ;
 int PyErr_SetString (int ,int ) ;
 int PyExc_IOError ;
 int Py_RETURN_NONE ;
 int bd_mem_free (int) ;
 int strerror (int) ;

__attribute__((used)) static PyObject *
busdma_mem_free(PyObject *self, PyObject *args)
{
 int error, mdid;

 if (!PyArg_ParseTuple(args, "i", &mdid))
  return (((void*)0));
 error = bd_mem_free(mdid);
 if (error) {
  PyErr_SetString(PyExc_IOError, strerror(error));
  return (((void*)0));
 }
 Py_RETURN_NONE;
}
