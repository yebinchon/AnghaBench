
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PyObject ;


 int PyArg_ParseTuple (int *,char*,int*,int*) ;
 int * Py_BuildValue (char*,int) ;
 int Py_RETURN_NONE ;
 int bd_md_next_seg (int,int) ;

__attribute__((used)) static PyObject *
busdma_md_next_seg(PyObject *self, PyObject *args)
{
 int error, mdid, sid;

 if (!PyArg_ParseTuple(args, "ii", &mdid, &sid))
  return (((void*)0));
 sid = bd_md_next_seg(mdid, sid);
 if (sid == -1)
  Py_RETURN_NONE;
 return (Py_BuildValue("i", sid));
}
