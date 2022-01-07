
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int PyArg_ParseTuple (int *,char*,int*,long*,long*) ;
 int PyErr_SetString (int ,int ) ;
 int PyExc_IOError ;
 int * Py_BuildValue (char*,int) ;
 int bs_subregion (int,long,long) ;
 int errno ;
 int strerror (int ) ;

__attribute__((used)) static PyObject *
bus_subregion(PyObject *self, PyObject *args)
{
 long ofs, sz;
 int rid0, rid;

 if (!PyArg_ParseTuple(args, "ill", &rid0, &ofs, &sz))
  return (((void*)0));
 rid = bs_subregion(rid0, ofs, sz);
 if (rid == -1) {
  PyErr_SetString(PyExc_IOError, strerror(errno));
  return (((void*)0));
 }
 return (Py_BuildValue("i", rid));
}
