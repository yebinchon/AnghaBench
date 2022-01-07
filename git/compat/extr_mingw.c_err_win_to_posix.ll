; ModuleID = '/home/carl/AnghaBench/git/compat/extr_mingw.c_err_win_to_posix.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_mingw.c_err_win_to_posix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOSYS = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENOEXEC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@ENOTEMPTY = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@E2BIG = common dso_local global i32 0, align 4
@ESPIPE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@ENFILE = common dso_local global i32 0, align 4
@EMFILE = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @err_win_to_posix(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @ENOSYS, align 4
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %2, align 4
  switch i32 %5, label %216 [
    i32 232, label %6
    i32 231, label %8
    i32 230, label %10
    i32 229, label %12
    i32 228, label %14
    i32 227, label %16
    i32 226, label %18
    i32 225, label %20
    i32 224, label %22
    i32 223, label %24
    i32 222, label %26
    i32 221, label %28
    i32 220, label %30
    i32 219, label %32
    i32 218, label %34
    i32 217, label %36
    i32 216, label %38
    i32 215, label %40
    i32 214, label %42
    i32 213, label %44
    i32 212, label %46
    i32 211, label %48
    i32 210, label %50
    i32 209, label %52
    i32 208, label %54
    i32 207, label %56
    i32 206, label %58
    i32 205, label %60
    i32 204, label %62
    i32 203, label %64
    i32 202, label %66
    i32 201, label %68
    i32 200, label %70
    i32 199, label %72
    i32 198, label %74
    i32 197, label %76
    i32 196, label %78
    i32 195, label %80
    i32 194, label %82
    i32 193, label %84
    i32 192, label %86
    i32 191, label %88
    i32 190, label %90
    i32 189, label %92
    i32 188, label %94
    i32 187, label %96
    i32 186, label %98
    i32 185, label %100
    i32 184, label %102
    i32 183, label %104
    i32 182, label %106
    i32 181, label %108
    i32 180, label %110
    i32 179, label %112
    i32 178, label %114
    i32 177, label %116
    i32 176, label %118
    i32 175, label %120
    i32 174, label %122
    i32 173, label %124
    i32 172, label %126
    i32 171, label %128
    i32 170, label %130
    i32 169, label %132
    i32 168, label %134
    i32 167, label %136
    i32 166, label %138
    i32 165, label %140
    i32 164, label %142
    i32 163, label %144
    i32 162, label %146
    i32 161, label %148
    i32 160, label %150
    i32 159, label %152
    i32 158, label %154
    i32 157, label %156
    i32 156, label %158
    i32 155, label %160
    i32 154, label %162
    i32 153, label %164
    i32 152, label %166
    i32 151, label %168
    i32 150, label %170
    i32 149, label %172
    i32 148, label %174
    i32 147, label %176
    i32 146, label %178
    i32 145, label %180
    i32 144, label %182
    i32 143, label %184
    i32 142, label %186
    i32 141, label %188
    i32 140, label %190
    i32 139, label %192
    i32 138, label %194
    i32 137, label %196
    i32 136, label %198
    i32 135, label %200
    i32 134, label %202
    i32 133, label %204
    i32 132, label %206
    i32 131, label %208
    i32 130, label %210
    i32 129, label %212
    i32 128, label %214
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @EACCES, align 4
  store i32 %7, i32* %3, align 4
  br label %216

8:                                                ; preds = %1
  %9 = load i32, i32* @EACCES, align 4
  store i32 %9, i32* %3, align 4
  br label %216

10:                                               ; preds = %1
  %11 = load i32, i32* @EACCES, align 4
  store i32 %11, i32* %3, align 4
  br label %216

12:                                               ; preds = %1
  %13 = load i32, i32* @EBUSY, align 4
  store i32 %13, i32* %3, align 4
  br label %216

14:                                               ; preds = %1
  %15 = load i32, i32* @EEXIST, align 4
  store i32 %15, i32* %3, align 4
  br label %216

16:                                               ; preds = %1
  %17 = load i32, i32* @ERANGE, align 4
  store i32 %17, i32* %3, align 4
  br label %216

18:                                               ; preds = %1
  %19 = load i32, i32* @EIO, align 4
  store i32 %19, i32* %3, align 4
  br label %216

20:                                               ; preds = %1
  %21 = load i32, i32* @ENODEV, align 4
  store i32 %21, i32* %3, align 4
  br label %216

22:                                               ; preds = %1
  %23 = load i32, i32* @ENXIO, align 4
  store i32 %23, i32* %3, align 4
  br label %216

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOEXEC, align 4
  store i32 %25, i32* %3, align 4
  br label %216

26:                                               ; preds = %1
  %27 = load i32, i32* @ENOEXEC, align 4
  store i32 %27, i32* %3, align 4
  br label %216

28:                                               ; preds = %1
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %3, align 4
  br label %216

30:                                               ; preds = %1
  %31 = load i32, i32* @ENOENT, align 4
  store i32 %31, i32* %3, align 4
  br label %216

32:                                               ; preds = %1
  %33 = load i32, i32* @EPIPE, align 4
  store i32 %33, i32* %3, align 4
  br label %216

34:                                               ; preds = %1
  %35 = load i32, i32* @ENODEV, align 4
  store i32 %35, i32* %3, align 4
  br label %216

36:                                               ; preds = %1
  %37 = load i32, i32* @EINVAL, align 4
  store i32 %37, i32* %3, align 4
  br label %216

38:                                               ; preds = %1
  %39 = load i32, i32* @EPIPE, align 4
  store i32 %39, i32* %3, align 4
  br label %216

40:                                               ; preds = %1
  %41 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %41, i32* %3, align 4
  br label %216

42:                                               ; preds = %1
  %43 = load i32, i32* @EBUSY, align 4
  store i32 %43, i32* %3, align 4
  br label %216

44:                                               ; preds = %1
  %45 = load i32, i32* @EBUSY, align 4
  store i32 %45, i32* %3, align 4
  br label %216

46:                                               ; preds = %1
  %47 = load i32, i32* @ENOSYS, align 4
  store i32 %47, i32* %3, align 4
  br label %216

48:                                               ; preds = %1
  %49 = load i32, i32* @EACCES, align 4
  store i32 %49, i32* %3, align 4
  br label %216

50:                                               ; preds = %1
  %51 = load i32, i32* @EIO, align 4
  store i32 %51, i32* %3, align 4
  br label %216

52:                                               ; preds = %1
  %53 = load i32, i32* @EIO, align 4
  store i32 %53, i32* %3, align 4
  br label %216

54:                                               ; preds = %1
  %55 = load i32, i32* @EIO, align 4
  store i32 %55, i32* %3, align 4
  br label %216

56:                                               ; preds = %1
  %57 = load i32, i32* @EIO, align 4
  store i32 %57, i32* %3, align 4
  br label %216

58:                                               ; preds = %1
  %59 = load i32, i32* @EACCES, align 4
  store i32 %59, i32* %3, align 4
  br label %216

60:                                               ; preds = %1
  %61 = load i32, i32* @EBUSY, align 4
  store i32 %61, i32* %3, align 4
  br label %216

62:                                               ; preds = %1
  %63 = load i32, i32* @ENODEV, align 4
  store i32 %63, i32* %3, align 4
  br label %216

64:                                               ; preds = %1
  %65 = load i32, i32* @EINVAL, align 4
  store i32 %65, i32* %3, align 4
  br label %216

66:                                               ; preds = %1
  %67 = load i32, i32* @ENOTEMPTY, align 4
  store i32 %67, i32* %3, align 4
  br label %216

68:                                               ; preds = %1
  %69 = load i32, i32* @EIO, align 4
  store i32 %69, i32* %3, align 4
  br label %216

70:                                               ; preds = %1
  %71 = load i32, i32* @ENOSPC, align 4
  store i32 %71, i32* %3, align 4
  br label %216

72:                                               ; preds = %1
  %73 = load i32, i32* @EBUSY, align 4
  store i32 %73, i32* %3, align 4
  br label %216

74:                                               ; preds = %1
  %75 = load i32, i32* @EINVAL, align 4
  store i32 %75, i32* %3, align 4
  br label %216

76:                                               ; preds = %1
  %77 = load i32, i32* @ENOEXEC, align 4
  store i32 %77, i32* %3, align 4
  br label %216

78:                                               ; preds = %1
  %79 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %79, i32* %3, align 4
  br label %216

80:                                               ; preds = %1
  %81 = load i32, i32* @EEXIST, align 4
  store i32 %81, i32* %3, align 4
  br label %216

82:                                               ; preds = %1
  %83 = load i32, i32* @ENODEV, align 4
  store i32 %83, i32* %3, align 4
  br label %216

84:                                               ; preds = %1
  %85 = load i32, i32* @ENOENT, align 4
  store i32 %85, i32* %3, align 4
  br label %216

86:                                               ; preds = %1
  %87 = load i32, i32* @EIO, align 4
  store i32 %87, i32* %3, align 4
  br label %216

88:                                               ; preds = %1
  %89 = load i32, i32* @ENOSPC, align 4
  store i32 %89, i32* %3, align 4
  br label %216

90:                                               ; preds = %1
  %91 = load i32, i32* @ENOMEM, align 4
  store i32 %91, i32* %3, align 4
  br label %216

92:                                               ; preds = %1
  %93 = load i32, i32* @EACCES, align 4
  store i32 %93, i32* %3, align 4
  br label %216

94:                                               ; preds = %1
  %95 = load i32, i32* @EFAULT, align 4
  store i32 %95, i32* %3, align 4
  br label %216

96:                                               ; preds = %1
  %97 = load i32, i32* @EFAULT, align 4
  store i32 %97, i32* %3, align 4
  br label %216

98:                                               ; preds = %1
  %99 = load i32, i32* @EINVAL, align 4
  store i32 %99, i32* %3, align 4
  br label %216

100:                                              ; preds = %1
  %101 = load i32, i32* @ENODEV, align 4
  store i32 %101, i32* %3, align 4
  br label %216

102:                                              ; preds = %1
  %103 = load i32, i32* @ENOEXEC, align 4
  store i32 %103, i32* %3, align 4
  br label %216

104:                                              ; preds = %1
  %105 = load i32, i32* @EINVAL, align 4
  store i32 %105, i32* %3, align 4
  br label %216

106:                                              ; preds = %1
  %107 = load i32, i32* @ENOSYS, align 4
  store i32 %107, i32* %3, align 4
  br label %216

108:                                              ; preds = %1
  %109 = load i32, i32* @EBADF, align 4
  store i32 %109, i32* %3, align 4
  br label %216

110:                                              ; preds = %1
  %111 = load i32, i32* @EACCES, align 4
  store i32 %111, i32* %3, align 4
  br label %216

112:                                              ; preds = %1
  %113 = load i32, i32* @EINVAL, align 4
  store i32 %113, i32* %3, align 4
  br label %216

114:                                              ; preds = %1
  %115 = load i32, i32* @EINVAL, align 4
  store i32 %115, i32* %3, align 4
  br label %216

116:                                              ; preds = %1
  %117 = load i32, i32* @EINVAL, align 4
  store i32 %117, i32* %3, align 4
  br label %216

118:                                              ; preds = %1
  %119 = load i32, i32* @EPERM, align 4
  store i32 %119, i32* %3, align 4
  br label %216

120:                                              ; preds = %1
  %121 = load i32, i32* @EINVAL, align 4
  store i32 %121, i32* %3, align 4
  br label %216

122:                                              ; preds = %1
  %123 = load i32, i32* @EINVAL, align 4
  store i32 %123, i32* %3, align 4
  br label %216

124:                                              ; preds = %1
  %125 = load i32, i32* @EIO, align 4
  store i32 %125, i32* %3, align 4
  br label %216

126:                                              ; preds = %1
  %127 = load i32, i32* @EACCES, align 4
  store i32 %127, i32* %3, align 4
  br label %216

128:                                              ; preds = %1
  %129 = load i32, i32* @EIO, align 4
  store i32 %129, i32* %3, align 4
  br label %216

130:                                              ; preds = %1
  %131 = load i32, i32* @EINTR, align 4
  store i32 %131, i32* %3, align 4
  br label %216

132:                                              ; preds = %1
  %133 = load i32, i32* @EBUSY, align 4
  store i32 %133, i32* %3, align 4
  br label %216

134:                                              ; preds = %1
  %135 = load i32, i32* @EACCES, align 4
  store i32 %135, i32* %3, align 4
  br label %216

136:                                              ; preds = %1
  %137 = load i32, i32* @EACCES, align 4
  store i32 %137, i32* %3, align 4
  br label %216

138:                                              ; preds = %1
  %139 = load i32, i32* @EINVAL, align 4
  store i32 %139, i32* %3, align 4
  br label %216

140:                                              ; preds = %1
  %141 = load i32, i32* @E2BIG, align 4
  store i32 %141, i32* %3, align 4
  br label %216

142:                                              ; preds = %1
  %143 = load i32, i32* @EPIPE, align 4
  store i32 %143, i32* %3, align 4
  br label %216

144:                                              ; preds = %1
  %145 = load i32, i32* @ESPIPE, align 4
  store i32 %145, i32* %3, align 4
  br label %216

146:                                              ; preds = %1
  %147 = load i32, i32* @EFAULT, align 4
  store i32 %147, i32* %3, align 4
  br label %216

148:                                              ; preds = %1
  %149 = load i32, i32* @EINVAL, align 4
  store i32 %149, i32* %3, align 4
  br label %216

150:                                              ; preds = %1
  %151 = load i32, i32* @ENOMEM, align 4
  store i32 %151, i32* %3, align 4
  br label %216

152:                                              ; preds = %1
  %153 = load i32, i32* @EAGAIN, align 4
  store i32 %153, i32* %3, align 4
  br label %216

154:                                              ; preds = %1
  %155 = load i32, i32* @EXDEV, align 4
  store i32 %155, i32* %3, align 4
  br label %216

156:                                              ; preds = %1
  %157 = load i32, i32* @EPIPE, align 4
  store i32 %157, i32* %3, align 4
  br label %216

158:                                              ; preds = %1
  %159 = load i32, i32* @EIO, align 4
  store i32 %159, i32* %3, align 4
  br label %216

160:                                              ; preds = %1
  %161 = load i32, i32* @EAGAIN, align 4
  store i32 %161, i32* %3, align 4
  br label %216

162:                                              ; preds = %1
  %163 = load i32, i32* @EACCES, align 4
  store i32 %163, i32* %3, align 4
  br label %216

164:                                              ; preds = %1
  %165 = load i32, i32* @EIO, align 4
  store i32 %165, i32* %3, align 4
  br label %216

166:                                              ; preds = %1
  %167 = load i32, i32* @EBUSY, align 4
  store i32 %167, i32* %3, align 4
  br label %216

168:                                              ; preds = %1
  %169 = load i32, i32* @EINTR, align 4
  store i32 %169, i32* %3, align 4
  br label %216

170:                                              ; preds = %1
  %171 = load i32, i32* @ENOMEM, align 4
  store i32 %171, i32* %3, align 4
  br label %216

172:                                              ; preds = %1
  %173 = load i32, i32* @EACCES, align 4
  store i32 %173, i32* %3, align 4
  br label %216

174:                                              ; preds = %1
  %175 = load i32, i32* @EBUSY, align 4
  store i32 %175, i32* %3, align 4
  br label %216

176:                                              ; preds = %1
  %177 = load i32, i32* @ENOENT, align 4
  store i32 %177, i32* %3, align 4
  br label %216

178:                                              ; preds = %1
  %179 = load i32, i32* @EBUSY, align 4
  store i32 %179, i32* %3, align 4
  br label %216

180:                                              ; preds = %1
  %181 = load i32, i32* @EPIPE, align 4
  store i32 %181, i32* %3, align 4
  br label %216

182:                                              ; preds = %1
  %183 = load i32, i32* @EPIPE, align 4
  store i32 %183, i32* %3, align 4
  br label %216

184:                                              ; preds = %1
  %185 = load i32, i32* @EPIPE, align 4
  store i32 %185, i32* %3, align 4
  br label %216

186:                                              ; preds = %1
  %187 = load i32, i32* @EACCES, align 4
  store i32 %187, i32* %3, align 4
  br label %216

188:                                              ; preds = %1
  %189 = load i32, i32* @EIO, align 4
  store i32 %189, i32* %3, align 4
  br label %216

190:                                              ; preds = %1
  %191 = load i32, i32* @EIO, align 4
  store i32 %191, i32* %3, align 4
  br label %216

192:                                              ; preds = %1
  %193 = load i32, i32* @ESPIPE, align 4
  store i32 %193, i32* %3, align 4
  br label %216

194:                                              ; preds = %1
  %195 = load i32, i32* @ENFILE, align 4
  store i32 %195, i32* %3, align 4
  br label %216

196:                                              ; preds = %1
  %197 = load i32, i32* @EACCES, align 4
  store i32 %197, i32* %3, align 4
  br label %216

198:                                              ; preds = %1
  %199 = load i32, i32* @ENOMEM, align 4
  store i32 %199, i32* %3, align 4
  br label %216

200:                                              ; preds = %1
  %201 = load i32, i32* @ENOENT, align 4
  store i32 %201, i32* %3, align 4
  br label %216

202:                                              ; preds = %1
  %203 = load i32, i32* @EMFILE, align 4
  store i32 %203, i32* %3, align 4
  br label %216

204:                                              ; preds = %1
  %205 = load i32, i32* @EMFILE, align 4
  store i32 %205, i32* %3, align 4
  br label %216

206:                                              ; preds = %1
  %207 = load i32, i32* @ENXIO, align 4
  store i32 %207, i32* %3, align 4
  br label %216

208:                                              ; preds = %1
  %209 = load i32, i32* @ENODEV, align 4
  store i32 %209, i32* %3, align 4
  br label %216

210:                                              ; preds = %1
  %211 = load i32, i32* @ECHILD, align 4
  store i32 %211, i32* %3, align 4
  br label %216

212:                                              ; preds = %1
  %213 = load i32, i32* @EIO, align 4
  store i32 %213, i32* %3, align 4
  br label %216

214:                                              ; preds = %1
  %215 = load i32, i32* @EROFS, align 4
  store i32 %215, i32* %3, align 4
  br label %216

216:                                              ; preds = %1, %214, %212, %210, %208, %206, %204, %202, %200, %198, %196, %194, %192, %190, %188, %186, %184, %182, %180, %178, %176, %174, %172, %170, %168, %166, %164, %162, %160, %158, %156, %154, %152, %150, %148, %146, %144, %142, %140, %138, %136, %134, %132, %130, %128, %126, %124, %122, %120, %118, %116, %114, %112, %110, %108, %106, %104, %102, %100, %98, %96, %94, %92, %90, %88, %86, %84, %82, %80, %78, %76, %74, %72, %70, %68, %66, %64, %62, %60, %58, %56, %54, %52, %50, %48, %46, %44, %42, %40, %38, %36, %34, %32, %30, %28, %26, %24, %22, %20, %18, %16, %14, %12, %10, %8, %6
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
