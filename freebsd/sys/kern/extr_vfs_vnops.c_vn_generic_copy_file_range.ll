; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_generic_copy_file_range.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_vn_generic_copy_file_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.vnode = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }
%struct.vattr = type { i64 }
%struct.mount = type { i32 }
%struct.uio = type { i64, i64 }

@LK_SHARED = common dso_local global i32 0, align 4
@_PC_MIN_HOLE_SIZE = common dso_local global i32 0, align 4
@V_WAIT = common dso_local global i32 0, align 4
@LK_EXCLUSIVE = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@M_TEMP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FIOSEEKDATA = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_8__* null, align 8
@FIOSEEKHOLE = common dso_local global i32 0, align 4
@UIO_READ = common dso_local global i32 0, align 4
@UIO_SYSSPACE = common dso_local global i32 0, align 4
@IO_NODELOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vn_generic_copy_file_range(%struct.vnode* %0, i64* %1, %struct.vnode* %2, i64* %3, i64* %4, i32 %5, %struct.ucred* %6, %struct.ucred* %7, %struct.thread* %8) #0 {
  %10 = alloca %struct.vnode*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.vnode*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ucred*, align 8
  %17 = alloca %struct.ucred*, align 8
  %18 = alloca %struct.thread*, align 8
  %19 = alloca %struct.vattr, align 8
  %20 = alloca %struct.mount*, align 8
  %21 = alloca %struct.uio, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  store %struct.vnode* %0, %struct.vnode** %10, align 8
  store i64* %1, i64** %11, align 8
  store %struct.vnode* %2, %struct.vnode** %12, align 8
  store i64* %3, i64** %13, align 8
  store i64* %4, i64** %14, align 8
  store i32 %5, i32* %15, align 4
  store %struct.ucred* %6, %struct.ucred** %16, align 8
  store %struct.ucred* %7, %struct.ucred** %17, align 8
  store %struct.thread* %8, %struct.thread** %18, align 8
  store i64 0, i64* %38, align 8
  store i64 0, i64* %37, align 8
  %39 = load i64*, i64** %14, align 8
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %34, align 8
  store i64 %40, i64* %35, align 8
  store i32 0, i32* %27, align 4
  store i8* null, i8** %36, align 8
  %41 = load %struct.vnode*, %struct.vnode** %10, align 8
  %42 = load i32, i32* @LK_SHARED, align 4
  %43 = call i32 @vn_lock(%struct.vnode* %41, i32 %42)
  store i32 %43, i32* %27, align 4
  %44 = load i32, i32* %27, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %9
  br label %463

47:                                               ; preds = %9
  %48 = load %struct.vnode*, %struct.vnode** %10, align 8
  %49 = load i32, i32* @_PC_MIN_HOLE_SIZE, align 4
  %50 = call i64 @VOP_PATHCONF(%struct.vnode* %48, i32 %49, i64* %37)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  store i64 0, i64* %37, align 8
  br label %53

53:                                               ; preds = %52, %47
  %54 = load %struct.vnode*, %struct.vnode** %10, align 8
  %55 = call i32 @VOP_UNLOCK(%struct.vnode* %54, i32 0)
  store %struct.mount* null, %struct.mount** %20, align 8
  %56 = load %struct.vnode*, %struct.vnode** %12, align 8
  %57 = load i32, i32* @V_WAIT, align 4
  %58 = call i32 @vn_start_write(%struct.vnode* %56, %struct.mount** %20, i32 %57)
  store i32 %58, i32* %27, align 4
  %59 = load i32, i32* %27, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %53
  %62 = load %struct.vnode*, %struct.vnode** %12, align 8
  %63 = load i32, i32* @LK_EXCLUSIVE, align 4
  %64 = call i32 @vn_lock(%struct.vnode* %62, i32 %63)
  store i32 %64, i32* %27, align 4
  br label %65

65:                                               ; preds = %61, %53
  %66 = load i32, i32* %27, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %131

68:                                               ; preds = %65
  %69 = load %struct.thread*, %struct.thread** %18, align 8
  %70 = icmp ne %struct.thread* %69, null
  br i1 %70, label %71, label %85

71:                                               ; preds = %68
  %72 = load i64*, i64** %13, align 8
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds %struct.uio, %struct.uio* %21, i32 0, i32 1
  store i64 %73, i64* %74, align 8
  %75 = load i64, i64* %34, align 8
  %76 = getelementptr inbounds %struct.uio, %struct.uio* %21, i32 0, i32 0
  store i64 %75, i64* %76, align 8
  %77 = load %struct.vnode*, %struct.vnode** %12, align 8
  %78 = load %struct.thread*, %struct.thread** %18, align 8
  %79 = call i32 @vn_rlimit_fsize(%struct.vnode* %77, %struct.uio* %21, %struct.thread* %78)
  store i32 %79, i32* %27, align 4
  %80 = load i32, i32* %27, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = load i32, i32* @EFBIG, align 4
  store i32 %83, i32* %27, align 4
  br label %84

84:                                               ; preds = %82, %71
  br label %85

85:                                               ; preds = %84, %68
  %86 = load %struct.vnode*, %struct.vnode** %12, align 8
  %87 = load i32, i32* @_PC_MIN_HOLE_SIZE, align 4
  %88 = call i64 @VOP_PATHCONF(%struct.vnode* %86, i32 %87, i64* %38)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %85
  store i64 0, i64* %38, align 8
  br label %91

91:                                               ; preds = %90, %85
  %92 = load i32, i32* %27, align 4
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load %struct.vnode*, %struct.vnode** %12, align 8
  %96 = load %struct.ucred*, %struct.ucred** %17, align 8
  %97 = call i32 @VOP_GETATTR(%struct.vnode* %95, %struct.vattr* %19, %struct.ucred* %96)
  store i32 %97, i32* %27, align 4
  br label %98

98:                                               ; preds = %94, %91
  %99 = load i32, i32* %27, align 4
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %101, label %128

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.vattr, %struct.vattr* %19, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64*, i64** %13, align 8
  %105 = load i64, i64* %104, align 8
  %106 = icmp sgt i64 %103, %105
  br i1 %106, label %107, label %128

107:                                              ; preds = %101
  %108 = getelementptr inbounds %struct.vattr, %struct.vattr* %19, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64*, i64** %13, align 8
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %34, align 8
  %113 = add i64 %111, %112
  %114 = icmp ule i64 %109, %113
  br i1 %114, label %115, label %128

115:                                              ; preds = %107
  %116 = load %struct.vnode*, %struct.vnode** %12, align 8
  %117 = load i64*, i64** %13, align 8
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.ucred*, %struct.ucred** %17, align 8
  %120 = call i32 @vn_truncate_locked(%struct.vnode* %116, i64 %118, i32 0, %struct.ucred* %119)
  store i32 %120, i32* %27, align 4
  %121 = load i32, i32* %27, align 4
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %115
  %124 = load i64*, i64** %13, align 8
  %125 = load i64, i64* %124, align 8
  %126 = getelementptr inbounds %struct.vattr, %struct.vattr* %19, i32 0, i32 0
  store i64 %125, i64* %126, align 8
  br label %127

127:                                              ; preds = %123, %115
  br label %128

128:                                              ; preds = %127, %107, %101, %98
  %129 = load %struct.vnode*, %struct.vnode** %12, align 8
  %130 = call i32 @VOP_UNLOCK(%struct.vnode* %129, i32 0)
  br label %131

131:                                              ; preds = %128, %65
  %132 = load %struct.mount*, %struct.mount** %20, align 8
  %133 = icmp ne %struct.mount* %132, null
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = load %struct.mount*, %struct.mount** %20, align 8
  %136 = call i32 @vn_finished_write(%struct.mount* %135)
  br label %137

137:                                              ; preds = %134, %131
  %138 = load i32, i32* %27, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %137
  br label %463

141:                                              ; preds = %137
  %142 = load i64, i64* %37, align 8
  %143 = load i64, i64* %38, align 8
  %144 = call i32 @MAX(i64 %142, i64 %143)
  store i32 %144, i32* %26, align 4
  %145 = load i32, i32* %26, align 4
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %161

147:                                              ; preds = %141
  %148 = load %struct.vnode*, %struct.vnode** %10, align 8
  %149 = getelementptr inbounds %struct.vnode, %struct.vnode* %148, i32 0, i32 0
  %150 = load %struct.TYPE_7__*, %struct.TYPE_7__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.vnode*, %struct.vnode** %12, align 8
  %155 = getelementptr inbounds %struct.vnode, %struct.vnode* %154, i32 0, i32 0
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i32 @MAX(i64 %153, i64 %159)
  store i32 %160, i32* %26, align 4
  br label %161

161:                                              ; preds = %147, %141
  %162 = load i32, i32* %26, align 4
  %163 = icmp slt i32 %162, 4096
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  store i32 4096, i32* %26, align 4
  br label %170

165:                                              ; preds = %161
  %166 = load i32, i32* %26, align 4
  %167 = icmp sgt i32 %166, 1048576
  br i1 %167, label %168, label %169

168:                                              ; preds = %165
  store i32 1048576, i32* %26, align 4
  br label %169

169:                                              ; preds = %168, %165
  br label %170

170:                                              ; preds = %169, %164
  %171 = load i32, i32* %26, align 4
  %172 = load i32, i32* @M_TEMP, align 4
  %173 = load i32, i32* @M_WAITOK, align 4
  %174 = call i8* @malloc(i32 %171, i32 %172, i32 %173)
  store i8* %174, i8** %36, align 8
  store i32 0, i32* %30, align 4
  br label %175

175:                                              ; preds = %461, %170
  %176 = load i64, i64* %34, align 8
  %177 = icmp ugt i64 %176, 0
  br i1 %177, label %178, label %185

178:                                              ; preds = %175
  %179 = load i32, i32* %27, align 4
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = load i32, i32* %30, align 4
  %183 = icmp ne i32 %182, 0
  %184 = xor i1 %183, true
  br label %185

185:                                              ; preds = %181, %178, %175
  %186 = phi i1 [ false, %178 ], [ false, %175 ], [ %184, %181 ]
  br i1 %186, label %187, label %462

187:                                              ; preds = %185
  store i64 0, i64* %23, align 8
  store i32 1, i32* %28, align 4
  %188 = load i64*, i64** %11, align 8
  %189 = load i64, i64* %188, align 8
  store i64 %189, i64* %22, align 8
  %190 = load i64, i64* %34, align 8
  store i64 %190, i64* %33, align 8
  %191 = load i32, i32* @EINVAL, align 4
  store i32 %191, i32* %27, align 4
  %192 = load i64, i64* %37, align 8
  %193 = icmp sgt i64 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %187
  %195 = load %struct.vnode*, %struct.vnode** %10, align 8
  %196 = load i32, i32* @FIOSEEKDATA, align 4
  %197 = load %struct.ucred*, %struct.ucred** %16, align 8
  %198 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curthread, align 8
  %199 = call i32 @VOP_IOCTL(%struct.vnode* %195, i32 %196, i64* %22, i32 0, %struct.ucred* %197, %struct.TYPE_8__* %198)
  store i32 %199, i32* %27, align 4
  br label %200

200:                                              ; preds = %194, %187
  %201 = load i32, i32* %27, align 4
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %219

203:                                              ; preds = %200
  %204 = load i64, i64* %22, align 8
  store i64 %204, i64* %23, align 8
  %205 = load %struct.vnode*, %struct.vnode** %10, align 8
  %206 = load i32, i32* @FIOSEEKHOLE, align 4
  %207 = load %struct.ucred*, %struct.ucred** %16, align 8
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curthread, align 8
  %209 = call i32 @VOP_IOCTL(%struct.vnode* %205, i32 %206, i64* %23, i32 0, %struct.ucred* %207, %struct.TYPE_8__* %208)
  store i32 %209, i32* %27, align 4
  %210 = load i32, i32* %27, align 4
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %203
  %213 = load i64, i64* %22, align 8
  %214 = load i64, i64* %23, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %218

216:                                              ; preds = %212
  %217 = load i32, i32* @EINVAL, align 4
  store i32 %217, i32* %27, align 4
  br label %218

218:                                              ; preds = %216, %212, %203
  br label %219

219:                                              ; preds = %218, %200
  %220 = load i32, i32* %27, align 4
  %221 = icmp eq i32 %220, 0
  br i1 %221, label %222, label %313

222:                                              ; preds = %219
  %223 = load i64, i64* %22, align 8
  %224 = load i64*, i64** %11, align 8
  %225 = load i64, i64* %224, align 8
  %226 = icmp sgt i64 %223, %225
  br i1 %226, label %227, label %306

227:                                              ; preds = %222
  %228 = load i64, i64* %22, align 8
  %229 = load i64*, i64** %11, align 8
  %230 = load i64, i64* %229, align 8
  %231 = sub nsw i64 %228, %230
  %232 = load i64, i64* %34, align 8
  %233 = call i8* @MIN(i64 %231, i64 %232)
  %234 = ptrtoint i8* %233 to i64
  store i64 %234, i64* %24, align 8
  %235 = load i64*, i64** %13, align 8
  %236 = load i64, i64* %235, align 8
  %237 = getelementptr inbounds %struct.vattr, %struct.vattr* %19, i32 0, i32 0
  %238 = load i64, i64* %237, align 8
  %239 = icmp slt i64 %236, %238
  br i1 %239, label %240, label %266

240:                                              ; preds = %227
  %241 = getelementptr inbounds %struct.vattr, %struct.vattr* %19, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64*, i64** %13, align 8
  %244 = load i64, i64* %243, align 8
  %245 = sub nsw i64 %242, %244
  %246 = load i64, i64* %24, align 8
  %247 = call i8* @MIN(i64 %245, i64 %246)
  %248 = ptrtoint i8* %247 to i64
  store i64 %248, i64* %25, align 8
  %249 = load i8*, i8** %36, align 8
  %250 = load i64, i64* %25, align 8
  %251 = load i32, i32* %26, align 4
  %252 = sext i32 %251 to i64
  %253 = call i8* @MIN(i64 %250, i64 %252)
  %254 = call i32 @memset(i8* %249, i32 0, i8* %253)
  %255 = load %struct.vnode*, %struct.vnode** %12, align 8
  %256 = load i8*, i8** %36, align 8
  %257 = load i64*, i64** %13, align 8
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* %25, align 8
  %260 = load i32, i32* %26, align 4
  %261 = load i64, i64* %38, align 8
  %262 = icmp sgt i64 %261, 0
  %263 = zext i1 %262 to i32
  %264 = load %struct.ucred*, %struct.ucred** %17, align 8
  %265 = call i32 @vn_write_outvp(%struct.vnode* %255, i8* %256, i64 %258, i64 %259, i32 %260, i32 0, i32 %263, %struct.ucred* %264)
  store i32 %265, i32* %27, align 4
  br label %266

266:                                              ; preds = %240, %227
  %267 = load i32, i32* %27, align 4
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %290

269:                                              ; preds = %266
  %270 = load i64*, i64** %13, align 8
  %271 = load i64, i64* %270, align 8
  %272 = load i64, i64* %24, align 8
  %273 = add nsw i64 %271, %272
  %274 = getelementptr inbounds %struct.vattr, %struct.vattr* %19, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = icmp sgt i64 %273, %275
  br i1 %276, label %277, label %290

277:                                              ; preds = %269
  %278 = load i64, i64* %24, align 8
  %279 = load i64, i64* %34, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %290

281:                                              ; preds = %277
  %282 = load %struct.vnode*, %struct.vnode** %12, align 8
  %283 = load i8*, i8** %36, align 8
  %284 = load i64*, i64** %13, align 8
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* %24, align 8
  %287 = load i32, i32* %26, align 4
  %288 = load %struct.ucred*, %struct.ucred** %17, align 8
  %289 = call i32 @vn_write_outvp(%struct.vnode* %282, i8* %283, i64 %285, i64 %286, i32 %287, i32 1, i32 0, %struct.ucred* %288)
  store i32 %289, i32* %27, align 4
  br label %290

290:                                              ; preds = %281, %277, %269, %266
  %291 = load i32, i32* %27, align 4
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %293, label %305

293:                                              ; preds = %290
  %294 = load i64, i64* %24, align 8
  %295 = load i64*, i64** %11, align 8
  %296 = load i64, i64* %295, align 8
  %297 = add nsw i64 %296, %294
  store i64 %297, i64* %295, align 8
  %298 = load i64, i64* %24, align 8
  %299 = load i64*, i64** %13, align 8
  %300 = load i64, i64* %299, align 8
  %301 = add nsw i64 %300, %298
  store i64 %301, i64* %299, align 8
  %302 = load i64, i64* %24, align 8
  %303 = load i64, i64* %34, align 8
  %304 = sub i64 %303, %302
  store i64 %304, i64* %34, align 8
  br label %305

305:                                              ; preds = %293, %290
  br label %306

306:                                              ; preds = %305, %222
  %307 = load i64, i64* %34, align 8
  %308 = load i64, i64* %23, align 8
  %309 = load i64, i64* %22, align 8
  %310 = sub nsw i64 %308, %309
  %311 = call i8* @MIN(i64 %307, i64 %310)
  %312 = ptrtoint i8* %311 to i64
  store i64 %312, i64* %33, align 8
  store i32 0, i32* %28, align 4
  br label %317

313:                                              ; preds = %219
  store i32 1, i32* %28, align 4
  %314 = load i64*, i64** %11, align 8
  %315 = load i64, i64* %314, align 8
  store i64 %315, i64* %22, align 8
  %316 = load i64, i64* %34, align 8
  store i64 %316, i64* %33, align 8
  store i32 0, i32* %27, align 4
  br label %317

317:                                              ; preds = %313, %306
  %318 = load i32, i32* %26, align 4
  %319 = sext i32 %318 to i64
  store i64 %319, i64* %24, align 8
  %320 = load i32, i32* %28, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %330

322:                                              ; preds = %317
  %323 = load i64*, i64** %11, align 8
  %324 = load i64, i64* %323, align 8
  %325 = load i32, i32* %26, align 4
  %326 = sext i32 %325 to i64
  %327 = srem i64 %324, %326
  %328 = load i64, i64* %24, align 8
  %329 = sub nsw i64 %328, %327
  store i64 %329, i64* %24, align 8
  br label %330

330:                                              ; preds = %322, %317
  br label %331

331:                                              ; preds = %458, %330
  %332 = load i64, i64* %33, align 8
  %333 = icmp ugt i64 %332, 0
  br i1 %333, label %334, label %341

334:                                              ; preds = %331
  %335 = load i32, i32* %27, align 4
  %336 = icmp eq i32 %335, 0
  br i1 %336, label %337, label %341

337:                                              ; preds = %334
  %338 = load i32, i32* %30, align 4
  %339 = icmp ne i32 %338, 0
  %340 = xor i1 %339, true
  br label %341

341:                                              ; preds = %337, %334, %331
  %342 = phi i1 [ false, %334 ], [ false, %331 ], [ %340, %337 ]
  br i1 %342, label %343, label %461

343:                                              ; preds = %341
  %344 = load i64, i64* %33, align 8
  %345 = load i64, i64* %24, align 8
  %346 = icmp ult i64 %344, %345
  br i1 %346, label %347, label %349

347:                                              ; preds = %343
  %348 = load i64, i64* %33, align 8
  store i64 %348, i64* %24, align 8
  br label %349

349:                                              ; preds = %347, %343
  %350 = load %struct.vnode*, %struct.vnode** %10, align 8
  %351 = load i32, i32* @LK_SHARED, align 4
  %352 = call i32 @vn_lock(%struct.vnode* %350, i32 %351)
  store i32 %352, i32* %27, align 4
  %353 = load i32, i32* %27, align 4
  %354 = icmp ne i32 %353, 0
  br i1 %354, label %355, label %356

355:                                              ; preds = %349
  br label %463

356:                                              ; preds = %349
  %357 = load i32, i32* @UIO_READ, align 4
  %358 = load %struct.vnode*, %struct.vnode** %10, align 8
  %359 = load i8*, i8** %36, align 8
  %360 = load i64, i64* %24, align 8
  %361 = load i64, i64* %22, align 8
  %362 = load i32, i32* @UIO_SYSSPACE, align 4
  %363 = load i32, i32* @IO_NODELOCKED, align 4
  %364 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curthread, align 8
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 4
  %367 = load %struct.ucred*, %struct.ucred** %16, align 8
  %368 = load %struct.TYPE_8__*, %struct.TYPE_8__** @curthread, align 8
  %369 = call i32 @vn_rdwr(i32 %357, %struct.vnode* %358, i8* %359, i64 %360, i64 %361, i32 %362, i32 %363, i32 %366, %struct.ucred* %367, i64* %32, %struct.TYPE_8__* %368)
  store i32 %369, i32* %27, align 4
  %370 = load %struct.vnode*, %struct.vnode** %10, align 8
  %371 = call i32 @VOP_UNLOCK(%struct.vnode* %370, i32 0)
  store i32 0, i32* %31, align 4
  %372 = load i32, i32* %27, align 4
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %381

374:                                              ; preds = %356
  %375 = load i64, i64* %32, align 8
  %376 = icmp sgt i64 %375, 0
  br i1 %376, label %377, label %381

377:                                              ; preds = %374
  %378 = load i64, i64* %32, align 8
  %379 = load i64, i64* %24, align 8
  %380 = sub nsw i64 %379, %378
  store i64 %380, i64* %24, align 8
  store i32 1, i32* %30, align 4
  store i32 1, i32* %31, align 4
  br label %381

381:                                              ; preds = %377, %374, %356
  %382 = load i32, i32* %27, align 4
  %383 = icmp eq i32 %382, 0
  br i1 %383, label %384, label %458

384:                                              ; preds = %381
  %385 = load i32, i32* %28, align 4
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %391

387:                                              ; preds = %384
  %388 = load i8*, i8** %36, align 8
  %389 = load i64, i64* %24, align 8
  %390 = call i32 @mem_iszero(i8* %388, i64 %389)
  br label %392

391:                                              ; preds = %384
  br label %392

392:                                              ; preds = %391, %387
  %393 = phi i32 [ %390, %387 ], [ 0, %391 ]
  store i32 %393, i32* %29, align 4
  %394 = load i64, i64* %24, align 8
  %395 = load i64, i64* %34, align 8
  %396 = icmp eq i64 %394, %395
  br i1 %396, label %397, label %398

397:                                              ; preds = %392
  store i32 1, i32* %31, align 4
  br label %398

398:                                              ; preds = %397, %392
  %399 = load i32, i32* %28, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %413

401:                                              ; preds = %398
  %402 = load i64*, i64** %13, align 8
  %403 = load i64, i64* %402, align 8
  %404 = getelementptr inbounds %struct.vattr, %struct.vattr* %19, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = icmp slt i64 %403, %405
  br i1 %406, label %413, label %407

407:                                              ; preds = %401
  %408 = load i32, i32* %31, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %413, label %410

410:                                              ; preds = %407
  %411 = load i32, i32* %29, align 4
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %436, label %413

413:                                              ; preds = %410, %407, %401, %398
  %414 = load %struct.vnode*, %struct.vnode** %12, align 8
  %415 = load i8*, i8** %36, align 8
  %416 = load i64*, i64** %13, align 8
  %417 = load i64, i64* %416, align 8
  %418 = load i64, i64* %24, align 8
  %419 = load i32, i32* %26, align 4
  %420 = load i32, i32* %29, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %431

422:                                              ; preds = %413
  %423 = load i32, i32* %31, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %425, label %431

425:                                              ; preds = %422
  %426 = load i64*, i64** %13, align 8
  %427 = load i64, i64* %426, align 8
  %428 = getelementptr inbounds %struct.vattr, %struct.vattr* %19, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = icmp sge i64 %427, %429
  br label %431

431:                                              ; preds = %425, %422, %413
  %432 = phi i1 [ false, %422 ], [ false, %413 ], [ %430, %425 ]
  %433 = zext i1 %432 to i32
  %434 = load %struct.ucred*, %struct.ucred** %17, align 8
  %435 = call i32 @vn_write_outvp(%struct.vnode* %414, i8* %415, i64 %417, i64 %418, i32 %419, i32 %433, i32 0, %struct.ucred* %434)
  store i32 %435, i32* %27, align 4
  br label %436

436:                                              ; preds = %431, %410
  %437 = load i32, i32* %27, align 4
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %457

439:                                              ; preds = %436
  %440 = load i64, i64* %24, align 8
  %441 = load i64*, i64** %11, align 8
  %442 = load i64, i64* %441, align 8
  %443 = add nsw i64 %442, %440
  store i64 %443, i64* %441, align 8
  %444 = load i64, i64* %24, align 8
  %445 = load i64, i64* %22, align 8
  %446 = add nsw i64 %445, %444
  store i64 %446, i64* %22, align 8
  %447 = load i64, i64* %24, align 8
  %448 = load i64*, i64** %13, align 8
  %449 = load i64, i64* %448, align 8
  %450 = add nsw i64 %449, %447
  store i64 %450, i64* %448, align 8
  %451 = load i64, i64* %24, align 8
  %452 = load i64, i64* %33, align 8
  %453 = sub i64 %452, %451
  store i64 %453, i64* %33, align 8
  %454 = load i64, i64* %24, align 8
  %455 = load i64, i64* %34, align 8
  %456 = sub i64 %455, %454
  store i64 %456, i64* %34, align 8
  br label %457

457:                                              ; preds = %439, %436
  br label %458

458:                                              ; preds = %457, %381
  %459 = load i32, i32* %26, align 4
  %460 = sext i32 %459 to i64
  store i64 %460, i64* %24, align 8
  br label %331

461:                                              ; preds = %341
  br label %175

462:                                              ; preds = %185
  br label %463

463:                                              ; preds = %462, %355, %140, %46
  %464 = load i64, i64* %35, align 8
  %465 = load i64, i64* %34, align 8
  %466 = sub i64 %464, %465
  %467 = load i64*, i64** %14, align 8
  store i64 %466, i64* %467, align 8
  %468 = load i8*, i8** %36, align 8
  %469 = load i32, i32* @M_TEMP, align 4
  %470 = call i32 @free(i8* %468, i32 %469)
  %471 = load i32, i32* %27, align 4
  ret i32 %471
}

declare dso_local i32 @vn_lock(%struct.vnode*, i32) #1

declare dso_local i64 @VOP_PATHCONF(%struct.vnode*, i32, i64*) #1

declare dso_local i32 @VOP_UNLOCK(%struct.vnode*, i32) #1

declare dso_local i32 @vn_start_write(%struct.vnode*, %struct.mount**, i32) #1

declare dso_local i32 @vn_rlimit_fsize(%struct.vnode*, %struct.uio*, %struct.thread*) #1

declare dso_local i32 @VOP_GETATTR(%struct.vnode*, %struct.vattr*, %struct.ucred*) #1

declare dso_local i32 @vn_truncate_locked(%struct.vnode*, i64, i32, %struct.ucred*) #1

declare dso_local i32 @vn_finished_write(%struct.mount*) #1

declare dso_local i32 @MAX(i64, i64) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @VOP_IOCTL(%struct.vnode*, i32, i64*, i32, %struct.ucred*, %struct.TYPE_8__*) #1

declare dso_local i8* @MIN(i64, i64) #1

declare dso_local i32 @memset(i8*, i32, i8*) #1

declare dso_local i32 @vn_write_outvp(%struct.vnode*, i8*, i64, i64, i32, i32, i32, %struct.ucred*) #1

declare dso_local i32 @vn_rdwr(i32, %struct.vnode*, i8*, i64, i64, i32, i32, i32, %struct.ucred*, i64*, %struct.TYPE_8__*) #1

declare dso_local i32 @mem_iszero(i8*, i64) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
