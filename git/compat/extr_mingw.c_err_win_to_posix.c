
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int E2BIG ;
 int EACCES ;
 int EAGAIN ;
 int EBADF ;
 int EBUSY ;
 int ECHILD ;
 int EEXIST ;
 int EFAULT ;
 int EINTR ;
 int EINVAL ;
 int EIO ;
 int EMFILE ;
 int ENAMETOOLONG ;
 int ENFILE ;
 int ENODEV ;
 int ENOENT ;
 int ENOEXEC ;
 int ENOMEM ;
 int ENOSPC ;
 int ENOSYS ;
 int ENOTEMPTY ;
 int ENXIO ;
 int EPERM ;
 int EPIPE ;
 int ERANGE ;
 int EROFS ;
 int ESPIPE ;
 int EXDEV ;

int err_win_to_posix(DWORD winerr)
{
 int error = ENOSYS;
 switch(winerr) {
 case 232: error = EACCES; break;
 case 231: error = EACCES; break;
 case 230: error = EACCES; break;
 case 229: error = EBUSY; break;
 case 228: error = EEXIST; break;
 case 227: error = ERANGE; break;
 case 226: error = EIO; break;
 case 225: error = ENODEV; break;
 case 224: error = ENXIO; break;
 case 223: error = ENOEXEC; break;
 case 222: error = ENOEXEC; break;
 case 221: error = EINVAL; break;
 case 220: error = ENOENT; break;
 case 219: error = EPIPE; break;
 case 218: error = ENODEV; break;
 case 217: error = EINVAL; break;
 case 216: error = EPIPE; break;
 case 215: error = ENAMETOOLONG; break;
 case 214: error = EBUSY; break;
 case 213: error = EBUSY; break;
 case 212: error = ENOSYS; break;
 case 211: error = EACCES; break;
 case 210: error = EIO; break;
 case 209: error = EIO; break;
 case 208: error = EIO; break;
 case 207: error = EIO; break;
 case 206: error = EACCES; break;
 case 205: error = EBUSY; break;
 case 204: error = ENODEV; break;
 case 203: error = EINVAL; break;
 case 202: error = ENOTEMPTY; break;
 case 201: error = EIO; break;
 case 200: error = ENOSPC; break;
 case 199: error = EBUSY; break;
 case 198: error = EINVAL; break;
 case 197: error = ENOEXEC; break;
 case 196: error = ENAMETOOLONG; break;
 case 195: error = EEXIST; break;
 case 194: error = ENODEV; break;
 case 193: error = ENOENT; break;
 case 192: error = EIO; break;
 case 191: error = ENOSPC; break;
 case 190: error = ENOMEM; break;
 case 189: error = EACCES; break;
 case 188: error = EFAULT; break;
 case 187: error = EFAULT; break;
 case 186: error = EINVAL; break;
 case 185: error = ENODEV; break;
 case 184: error = ENOEXEC; break;
 case 183: error = EINVAL; break;
 case 182: error = ENOSYS; break;
 case 181: error = EBADF; break;
 case 180: error = EACCES; break;
 case 179: error = EINVAL; break;
 case 178: error = EINVAL; break;
 case 177: error = EINVAL; break;
 case 176: error = EPERM; break;
 case 175: error = EINVAL; break;
 case 174: error = EINVAL; break;
 case 173: error = EIO; break;
 case 172: error = EACCES; break;
 case 171: error = EIO; break;
 case 170: error = EINTR; break;
 case 169: error = EBUSY; break;
 case 168: error = EACCES; break;
 case 167: error = EACCES; break;
 case 166: error = EINVAL; break;
 case 165: error = E2BIG; break;
 case 164: error = EPIPE; break;
 case 163: error = ESPIPE; break;
 case 162: error = EFAULT; break;
 case 161: error = EINVAL; break;
 case 160: error = ENOMEM; break;
 case 159: error = EAGAIN; break;
 case 158: error = EXDEV; break;
 case 157: error = EPIPE; break;
 case 156: error = EIO; break;
 case 155: error = EAGAIN; break;
 case 154: error = EACCES; break;
 case 153: error = EIO; break;
 case 152: error = EBUSY; break;
 case 151: error = EINTR; break;
 case 150: error = ENOMEM; break;
 case 149: error = EACCES; break;
 case 148: error = EBUSY; break;
 case 147: error = ENOENT; break;
 case 146: error = EBUSY; break;
 case 145: error = EPIPE; break;
 case 144: error = EPIPE; break;
 case 143: error = EPIPE; break;
 case 142: error = EACCES; break;
 case 141: error = EIO; break;
 case 140: error = EIO; break;
 case 139: error = ESPIPE; break;
 case 138: error = ENFILE; break;
 case 137: error = EACCES; break;
 case 136: error = ENOMEM; break;
 case 135: error = ENOENT; break;
 case 134: error = EMFILE; break;
 case 133: error = EMFILE; break;
 case 132: error = ENXIO; break;
 case 131: error = ENODEV; break;
 case 130: error = ECHILD; break;
 case 129: error = EIO; break;
 case 128: error = EROFS; break;
 }
 return error;
}
