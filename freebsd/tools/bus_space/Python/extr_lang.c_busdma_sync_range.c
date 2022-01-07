
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int PyObject ;


 int PyArg_ParseTuple (int *,char*,int*,int*,int *,int *) ;
 int PyErr_SetString (int ,int ) ;
 int PyExc_IOError ;
 int Py_RETURN_NONE ;
 int bd_sync (int,int,int ,int ) ;
 int strerror (int) ;

__attribute__((used)) static PyObject *
busdma_sync_range(PyObject *self, PyObject *args)
{
 u_long ofs, len;
 int error, mdid, op;

 if (!PyArg_ParseTuple(args, "iikk", &mdid, &op, &ofs, &len))
  return (((void*)0));
 error = bd_sync(mdid, op, ofs, len);
 if (error) {
  PyErr_SetString(PyExc_IOError, strerror(error));
  return (((void*)0));
 }
 Py_RETURN_NONE;
}
