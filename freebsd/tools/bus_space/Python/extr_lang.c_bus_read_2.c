
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int uint16_t ;
typedef int PyObject ;


 int PyArg_ParseTuple (int *,char*,int*,long*) ;
 int PyErr_SetString (int ,int ) ;
 int PyExc_IOError ;
 int * Py_BuildValue (char*,int ) ;
 int bs_read (int,long,int *,int) ;
 int errno ;
 int strerror (int ) ;

__attribute__((used)) static PyObject *
bus_read_2(PyObject *self, PyObject *args)
{
 long ofs;
 int rid;
 uint16_t val;

 if (!PyArg_ParseTuple(args, "il", &rid, &ofs))
  return (((void*)0));
 if (!bs_read(rid, ofs, &val, sizeof(val))) {
  PyErr_SetString(PyExc_IOError, strerror(errno));
  return (((void*)0));
 }
 return (Py_BuildValue("H", val));
}
