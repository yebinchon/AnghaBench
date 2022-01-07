
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int PyObject ;


 int PyArg_ParseTuple (int *,char*,int*,int *) ;
 int PyErr_SetString (int ,int ) ;
 int PyExc_IOError ;
 int * Py_BuildValue (char*,int) ;
 int bd_md_create (int,int ) ;
 int errno ;
 int strerror (int ) ;

__attribute__((used)) static PyObject *
busdma_md_create(PyObject *self, PyObject *args)
{
 u_int flags;
 int error, mdid, tid;

 if (!PyArg_ParseTuple(args, "iI", &tid, &flags))
  return (((void*)0));
 mdid = bd_md_create(tid, flags);
 if (mdid == -1) {
  PyErr_SetString(PyExc_IOError, strerror(errno));
  return (((void*)0));
 }
 return (Py_BuildValue("i", mdid));
}
