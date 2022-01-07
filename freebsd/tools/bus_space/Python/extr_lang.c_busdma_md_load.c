
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
typedef int PyObject ;


 int PyArg_ParseTuple (int *,char*,int*,void**,int *,int *) ;
 int PyErr_SetString (int ,int ) ;
 int PyExc_IOError ;
 int Py_RETURN_NONE ;
 int bd_md_load (int,void*,int ,int ) ;
 int strerror (int) ;

__attribute__((used)) static PyObject *
busdma_md_load(PyObject *self, PyObject *args)
{
 void *buf;
 u_long len;
 u_int flags;
 int error, mdid;

 if (!PyArg_ParseTuple(args, "iwkI", &mdid, &buf, &len, &flags))
  return (((void*)0));
 error = bd_md_load(mdid, buf, len, flags);
 if (error) {
  PyErr_SetString(PyExc_IOError, strerror(error));
  return (((void*)0));
 }
 Py_RETURN_NONE;
}
