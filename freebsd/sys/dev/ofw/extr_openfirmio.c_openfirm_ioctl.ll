; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_openfirmio.c_openfirm_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ofw/extr_openfirmio.c_openfirm_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.ofiocdesc = type { i64, i32, i32, i32, i32 }

@FREAD = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"/options\00", align 1
@ENOIOCTL = common dso_local global i32 0, align 4
@lastnode = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@OFIOCMAXVALUE = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @openfirm_ioctl(%struct.cdev* %0, i32 %1, i64 %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.ofiocdesc*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca [32 x i8], align 16
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @FREAD, align 4
  %22 = and i32 %20, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i32, i32* @EBADF, align 4
  store i32 %25, i32* %6, align 4
  br label %305

26:                                               ; preds = %5
  %27 = load i64, i64* %9, align 8
  %28 = inttoptr i64 %27 to %struct.ofiocdesc*
  store %struct.ofiocdesc* %28, %struct.ofiocdesc** %12, align 8
  %29 = load i32, i32* %8, align 4
  switch i32 %29, label %42 [
    i32 131, label %30
    i32 134, label %34
    i32 128, label %34
    i32 129, label %34
    i32 135, label %34
    i32 130, label %34
    i32 132, label %38
    i32 133, label %38
  ]

30:                                               ; preds = %26
  %31 = call i64 @OF_finddevice(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %32 = load i64, i64* %9, align 8
  %33 = inttoptr i64 %32 to i64*
  store i64 %31, i64* %33, align 8
  store i32 0, i32* %6, align 4
  br label %305

34:                                               ; preds = %26, %26, %26, %26, %26
  %35 = load %struct.ofiocdesc*, %struct.ofiocdesc** %12, align 8
  %36 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %13, align 8
  br label %44

38:                                               ; preds = %26, %26
  %39 = load i64, i64* %9, align 8
  %40 = inttoptr i64 %39 to i64*
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %13, align 8
  br label %44

42:                                               ; preds = %26
  %43 = load i32, i32* @ENOIOCTL, align 4
  store i32 %43, i32* %6, align 4
  br label %305

44:                                               ; preds = %38, %34
  %45 = load i64, i64* %13, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %44
  %48 = load i64, i64* %13, align 8
  %49 = load i64, i64* @lastnode, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = call i64 @OF_peer(i64 0)
  %53 = load i64, i64* %13, align 8
  %54 = call i32 @openfirm_checkid(i64 %52, i64 %53)
  store i32 %54, i32* %15, align 4
  %55 = load i32, i32* %15, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %59, label %57

57:                                               ; preds = %51
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %6, align 4
  br label %305

59:                                               ; preds = %51
  %60 = load i64, i64* %13, align 8
  store i64 %60, i64* @lastnode, align 8
  br label %61

61:                                               ; preds = %59, %47, %44
  store i8* null, i8** %18, align 8
  store i8* null, i8** %17, align 8
  store i32 0, i32* %16, align 4
  %62 = load i32, i32* %8, align 4
  switch i32 %62, label %289 [
    i32 134, label %63
    i32 130, label %63
    i32 128, label %120
    i32 129, label %185
    i32 132, label %250
    i32 133, label %256
    i32 135, label %267
  ]

63:                                               ; preds = %61, %61
  %64 = load i64, i64* %13, align 8
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %6, align 4
  br label %305

68:                                               ; preds = %63
  %69 = load %struct.ofiocdesc*, %struct.ofiocdesc** %12, align 8
  %70 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.ofiocdesc*, %struct.ofiocdesc** %12, align 8
  %73 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @openfirm_getstr(i32 %71, i32 %74, i8** %17)
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %68
  br label %289

79:                                               ; preds = %68
  %80 = load i64, i64* %13, align 8
  %81 = load i8*, i8** %17, align 8
  %82 = call i32 @OF_getproplen(i64 %80, i8* %81)
  store i32 %82, i32* %14, align 4
  %83 = load i32, i32* %8, align 4
  %84 = icmp eq i32 %83, 130
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i32, i32* %14, align 4
  %87 = load %struct.ofiocdesc*, %struct.ofiocdesc** %12, align 8
  %88 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  br label %289

89:                                               ; preds = %79
  %90 = load i32, i32* %14, align 4
  %91 = load %struct.ofiocdesc*, %struct.ofiocdesc** %12, align 8
  %92 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp sgt i32 %90, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load i32, i32* @ENOMEM, align 4
  store i32 %96, i32* %16, align 4
  br label %289

97:                                               ; preds = %89
  %98 = load i32, i32* %14, align 4
  %99 = load %struct.ofiocdesc*, %struct.ofiocdesc** %12, align 8
  %100 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %99, i32 0, i32 1
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %14, align 4
  %102 = icmp sle i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %289

104:                                              ; preds = %97
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* @M_TEMP, align 4
  %107 = load i32, i32* @M_WAITOK, align 4
  %108 = call i8* @malloc(i32 %105, i32 %106, i32 %107)
  store i8* %108, i8** %18, align 8
  %109 = load i64, i64* %13, align 8
  %110 = load i8*, i8** %17, align 8
  %111 = load i8*, i8** %18, align 8
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @OF_getprop(i64 %109, i8* %110, i8* %111, i32 %112)
  store i32 %113, i32* %14, align 4
  %114 = load i8*, i8** %18, align 8
  %115 = load %struct.ofiocdesc*, %struct.ofiocdesc** %12, align 8
  %116 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @copyout(i8* %114, i32 %117, i32 %118)
  store i32 %119, i32* %16, align 4
  br label %289

120:                                              ; preds = %61
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @FWRITE, align 4
  %123 = and i32 %121, %122
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %120
  %126 = load i32, i32* @EBADF, align 4
  store i32 %126, i32* %6, align 4
  br label %305

127:                                              ; preds = %120
  %128 = load i64, i64* %13, align 8
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %127
  %131 = load i32, i32* @EINVAL, align 4
  store i32 %131, i32* %6, align 4
  br label %305

132:                                              ; preds = %127
  %133 = load %struct.ofiocdesc*, %struct.ofiocdesc** %12, align 8
  %134 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @OFIOCMAXVALUE, align 4
  %137 = icmp sgt i32 %135, %136
  br i1 %137, label %138, label %140

138:                                              ; preds = %132
  %139 = load i32, i32* @ENAMETOOLONG, align 4
  store i32 %139, i32* %6, align 4
  br label %305

140:                                              ; preds = %132
  %141 = load %struct.ofiocdesc*, %struct.ofiocdesc** %12, align 8
  %142 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.ofiocdesc*, %struct.ofiocdesc** %12, align 8
  %145 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @openfirm_getstr(i32 %143, i32 %146, i8** %17)
  store i32 %147, i32* %16, align 4
  %148 = load i32, i32* %16, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %140
  br label %289

151:                                              ; preds = %140
  %152 = load %struct.ofiocdesc*, %struct.ofiocdesc** %12, align 8
  %153 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @M_TEMP, align 4
  %156 = load i32, i32* @M_WAITOK, align 4
  %157 = call i8* @malloc(i32 %154, i32 %155, i32 %156)
  store i8* %157, i8** %18, align 8
  %158 = load %struct.ofiocdesc*, %struct.ofiocdesc** %12, align 8
  %159 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = load i8*, i8** %18, align 8
  %162 = load %struct.ofiocdesc*, %struct.ofiocdesc** %12, align 8
  %163 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @copyin(i32 %160, i8* %161, i32 %164)
  store i32 %165, i32* %16, align 4
  %166 = load i32, i32* %16, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %151
  br label %289

169:                                              ; preds = %151
  %170 = load i64, i64* %13, align 8
  %171 = load i8*, i8** %17, align 8
  %172 = load i8*, i8** %18, align 8
  %173 = load %struct.ofiocdesc*, %struct.ofiocdesc** %12, align 8
  %174 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @OF_setprop(i64 %170, i8* %171, i8* %172, i32 %175)
  store i32 %176, i32* %14, align 4
  %177 = load i32, i32* %14, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %169
  %180 = load i32, i32* @EINVAL, align 4
  store i32 %180, i32* %16, align 4
  br label %181

181:                                              ; preds = %179, %169
  %182 = load i32, i32* %14, align 4
  %183 = load %struct.ofiocdesc*, %struct.ofiocdesc** %12, align 8
  %184 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %183, i32 0, i32 1
  store i32 %182, i32* %184, align 8
  br label %289

185:                                              ; preds = %61
  %186 = load i64, i64* %13, align 8
  %187 = icmp eq i64 %186, 0
  br i1 %187, label %193, label %188

188:                                              ; preds = %185
  %189 = load %struct.ofiocdesc*, %struct.ofiocdesc** %12, align 8
  %190 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 8
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %188, %185
  %194 = load i32, i32* @EINVAL, align 4
  store i32 %194, i32* %6, align 4
  br label %305

195:                                              ; preds = %188
  %196 = load %struct.ofiocdesc*, %struct.ofiocdesc** %12, align 8
  %197 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 8
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %212

200:                                              ; preds = %195
  %201 = load %struct.ofiocdesc*, %struct.ofiocdesc** %12, align 8
  %202 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.ofiocdesc*, %struct.ofiocdesc** %12, align 8
  %205 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @openfirm_getstr(i32 %203, i32 %206, i8** %17)
  store i32 %207, i32* %16, align 4
  %208 = load i32, i32* %16, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %200
  br label %289

211:                                              ; preds = %200
  br label %212

212:                                              ; preds = %211, %195
  %213 = load i64, i64* %13, align 8
  %214 = load i8*, i8** %17, align 8
  %215 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i64 0, i64 0
  %216 = call i32 @OF_nextprop(i64 %213, i8* %214, i8* %215, i32 32)
  store i32 %216, i32* %15, align 4
  %217 = load i32, i32* %15, align 4
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %219, label %221

219:                                              ; preds = %212
  %220 = load i32, i32* @ENOENT, align 4
  store i32 %220, i32* %16, align 4
  br label %289

221:                                              ; preds = %212
  %222 = load i32, i32* %15, align 4
  %223 = icmp eq i32 %222, -1
  br i1 %223, label %224, label %226

224:                                              ; preds = %221
  %225 = load i32, i32* @EINVAL, align 4
  store i32 %225, i32* %16, align 4
  br label %289

226:                                              ; preds = %221
  %227 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i64 0, i64 0
  %228 = call i32 @strlen(i8* %227)
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %14, align 4
  %230 = load i32, i32* %14, align 4
  %231 = load %struct.ofiocdesc*, %struct.ofiocdesc** %12, align 8
  %232 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %231, i32 0, i32 1
  %233 = load i32, i32* %232, align 8
  %234 = icmp sgt i32 %230, %233
  br i1 %234, label %235, label %239

235:                                              ; preds = %226
  %236 = load %struct.ofiocdesc*, %struct.ofiocdesc** %12, align 8
  %237 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 8
  store i32 %238, i32* %14, align 4
  br label %243

239:                                              ; preds = %226
  %240 = load i32, i32* %14, align 4
  %241 = load %struct.ofiocdesc*, %struct.ofiocdesc** %12, align 8
  %242 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %241, i32 0, i32 1
  store i32 %240, i32* %242, align 8
  br label %243

243:                                              ; preds = %239, %235
  %244 = getelementptr inbounds [32 x i8], [32 x i8]* %19, i64 0, i64 0
  %245 = load %struct.ofiocdesc*, %struct.ofiocdesc** %12, align 8
  %246 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %245, i32 0, i32 4
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %14, align 4
  %249 = call i32 @copyout(i8* %244, i32 %247, i32 %248)
  store i32 %249, i32* %16, align 4
  br label %289

250:                                              ; preds = %61
  %251 = load i64, i64* %13, align 8
  %252 = call i64 @OF_peer(i64 %251)
  store i64 %252, i64* %13, align 8
  %253 = load i64, i64* %13, align 8
  store i64 %253, i64* @lastnode, align 8
  %254 = load i64, i64* %9, align 8
  %255 = inttoptr i64 %254 to i64*
  store i64 %253, i64* %255, align 8
  br label %289

256:                                              ; preds = %61
  %257 = load i64, i64* %13, align 8
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %256
  %260 = load i32, i32* @EINVAL, align 4
  store i32 %260, i32* %6, align 4
  br label %305

261:                                              ; preds = %256
  %262 = load i64, i64* %13, align 8
  %263 = call i64 @OF_child(i64 %262)
  store i64 %263, i64* %13, align 8
  %264 = load i64, i64* %13, align 8
  store i64 %264, i64* @lastnode, align 8
  %265 = load i64, i64* %9, align 8
  %266 = inttoptr i64 %265 to i64*
  store i64 %264, i64* %266, align 8
  br label %289

267:                                              ; preds = %61
  %268 = load %struct.ofiocdesc*, %struct.ofiocdesc** %12, align 8
  %269 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %268, i32 0, i32 3
  %270 = load i32, i32* %269, align 8
  %271 = load %struct.ofiocdesc*, %struct.ofiocdesc** %12, align 8
  %272 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %271, i32 0, i32 2
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @openfirm_getstr(i32 %270, i32 %273, i8** %17)
  store i32 %274, i32* %16, align 4
  %275 = load i32, i32* %16, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %267
  br label %289

278:                                              ; preds = %267
  %279 = load i8*, i8** %17, align 8
  %280 = call i64 @OF_finddevice(i8* %279)
  store i64 %280, i64* %13, align 8
  %281 = load i64, i64* %13, align 8
  %282 = icmp eq i64 %281, -1
  br i1 %282, label %283, label %285

283:                                              ; preds = %278
  %284 = load i32, i32* @ENOENT, align 4
  store i32 %284, i32* %16, align 4
  br label %289

285:                                              ; preds = %278
  %286 = load i64, i64* %13, align 8
  store i64 %286, i64* @lastnode, align 8
  %287 = load %struct.ofiocdesc*, %struct.ofiocdesc** %12, align 8
  %288 = getelementptr inbounds %struct.ofiocdesc, %struct.ofiocdesc* %287, i32 0, i32 0
  store i64 %286, i64* %288, align 8
  br label %289

289:                                              ; preds = %61, %285, %283, %277, %261, %250, %243, %224, %219, %210, %181, %168, %150, %104, %103, %95, %85, %78
  %290 = load i8*, i8** %17, align 8
  %291 = icmp ne i8* %290, null
  br i1 %291, label %292, label %296

292:                                              ; preds = %289
  %293 = load i8*, i8** %17, align 8
  %294 = load i32, i32* @M_TEMP, align 4
  %295 = call i32 @free(i8* %293, i32 %294)
  br label %296

296:                                              ; preds = %292, %289
  %297 = load i8*, i8** %18, align 8
  %298 = icmp ne i8* %297, null
  br i1 %298, label %299, label %303

299:                                              ; preds = %296
  %300 = load i8*, i8** %18, align 8
  %301 = load i32, i32* @M_TEMP, align 4
  %302 = call i32 @free(i8* %300, i32 %301)
  br label %303

303:                                              ; preds = %299, %296
  %304 = load i32, i32* %16, align 4
  store i32 %304, i32* %6, align 4
  br label %305

305:                                              ; preds = %303, %259, %193, %138, %130, %125, %66, %57, %42, %30, %24
  %306 = load i32, i32* %6, align 4
  ret i32 %306
}

declare dso_local i64 @OF_finddevice(i8*) #1

declare dso_local i32 @openfirm_checkid(i64, i64) #1

declare dso_local i64 @OF_peer(i64) #1

declare dso_local i32 @openfirm_getstr(i32, i32, i8**) #1

declare dso_local i32 @OF_getproplen(i64, i8*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @OF_getprop(i64, i8*, i8*, i32) #1

declare dso_local i32 @copyout(i8*, i32, i32) #1

declare dso_local i32 @copyin(i32, i8*, i32) #1

declare dso_local i32 @OF_setprop(i64, i8*, i8*, i32) #1

declare dso_local i32 @OF_nextprop(i64, i8*, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @OF_child(i64) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
