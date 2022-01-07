; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_posix_fadvise.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_syscalls.c_kern_posix_fadvise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.fadvise_info = type { i32, i64, i64 }
%struct.file = type { i64, %struct.fadvise_info*, %struct.vnode*, %struct.TYPE_2__* }
%struct.vnode = type { i64 }
%struct.TYPE_2__ = type { i32 }

@OFF_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@M_FADVISE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@cap_no_rights = common dso_local global i32 0, align 4
@DFLAG_SEEKABLE = common dso_local global i32 0, align 4
@ESPIPE = common dso_local global i32 0, align 4
@DTYPE_VNODE = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@mtxpool_sleep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_posix_fadvise(%struct.thread* %0, i32 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fadvise_info*, align 8
  %13 = alloca %struct.fadvise_info*, align 8
  %14 = alloca %struct.file*, align 8
  %15 = alloca %struct.vnode*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load i64, i64* %9, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %5
  %21 = load i64, i64* %10, align 8
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %20
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @OFF_MAX, align 8
  %26 = load i64, i64* %10, align 8
  %27 = sub nsw i64 %25, %26
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23, %20, %5
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %6, align 4
  br label %290

31:                                               ; preds = %23
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @AUDIT_ARG_VALUE(i32 %32)
  %34 = load i32, i32* %11, align 4
  switch i32 %34, label %40 [
    i32 129, label %35
    i32 130, label %35
    i32 132, label %35
    i32 131, label %39
    i32 128, label %39
    i32 133, label %39
  ]

35:                                               ; preds = %31, %31, %31
  %36 = load i32, i32* @M_FADVISE, align 4
  %37 = load i32, i32* @M_WAITOK, align 4
  %38 = call %struct.fadvise_info* @malloc(i32 24, i32 %36, i32 %37)
  store %struct.fadvise_info* %38, %struct.fadvise_info** %13, align 8
  br label %42

39:                                               ; preds = %31, %31, %31
  store %struct.fadvise_info* null, %struct.fadvise_info** %13, align 8
  br label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @EINVAL, align 4
  store i32 %41, i32* %6, align 4
  br label %290

42:                                               ; preds = %39, %35
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @AUDIT_ARG_FD(i32 %43)
  %45 = load %struct.thread*, %struct.thread** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @fget(%struct.thread* %45, i32 %46, i32* @cap_no_rights, %struct.file** %14)
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %17, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %278

51:                                               ; preds = %42
  %52 = load %struct.thread*, %struct.thread** %7, align 8
  %53 = getelementptr inbounds %struct.thread, %struct.thread* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.file*, %struct.file** %14, align 8
  %56 = call i32 @AUDIT_ARG_FILE(i32 %54, %struct.file* %55)
  %57 = load %struct.file*, %struct.file** %14, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 3
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @DFLAG_SEEKABLE, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %51
  %66 = load i32, i32* @ESPIPE, align 4
  store i32 %66, i32* %17, align 4
  br label %278

67:                                               ; preds = %51
  %68 = load %struct.file*, %struct.file** %14, align 8
  %69 = getelementptr inbounds %struct.file, %struct.file* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @DTYPE_VNODE, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = load i32, i32* @ENODEV, align 4
  store i32 %74, i32* %17, align 4
  br label %278

75:                                               ; preds = %67
  %76 = load %struct.file*, %struct.file** %14, align 8
  %77 = getelementptr inbounds %struct.file, %struct.file* %76, i32 0, i32 2
  %78 = load %struct.vnode*, %struct.vnode** %77, align 8
  store %struct.vnode* %78, %struct.vnode** %15, align 8
  %79 = load %struct.vnode*, %struct.vnode** %15, align 8
  %80 = getelementptr inbounds %struct.vnode, %struct.vnode* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @VREG, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %86

84:                                               ; preds = %75
  %85 = load i32, i32* @ENODEV, align 4
  store i32 %85, i32* %17, align 4
  br label %278

86:                                               ; preds = %75
  %87 = load i64, i64* %10, align 8
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i64, i64* @OFF_MAX, align 8
  store i64 %90, i64* %16, align 8
  br label %96

91:                                               ; preds = %86
  %92 = load i64, i64* %9, align 8
  %93 = load i64, i64* %10, align 8
  %94 = add nsw i64 %92, %93
  %95 = sub nsw i64 %94, 1
  store i64 %95, i64* %16, align 8
  br label %96

96:                                               ; preds = %91, %89
  %97 = load i32, i32* %11, align 4
  switch i32 %97, label %277 [
    i32 129, label %98
    i32 130, label %98
    i32 132, label %98
    i32 131, label %188
    i32 128, label %271
    i32 133, label %271
  ]

98:                                               ; preds = %96, %96, %96
  %99 = load i32, i32* @mtxpool_sleep, align 4
  %100 = load %struct.file*, %struct.file** %14, align 8
  %101 = call i32 @mtx_pool_lock(i32 %99, %struct.file* %100)
  %102 = load %struct.file*, %struct.file** %14, align 8
  %103 = getelementptr inbounds %struct.file, %struct.file* %102, i32 0, i32 1
  %104 = load %struct.fadvise_info*, %struct.fadvise_info** %103, align 8
  store %struct.fadvise_info* %104, %struct.fadvise_info** %12, align 8
  %105 = load %struct.fadvise_info*, %struct.fadvise_info** %12, align 8
  %106 = icmp ne %struct.fadvise_info* %105, null
  br i1 %106, label %107, label %170

107:                                              ; preds = %98
  %108 = load %struct.fadvise_info*, %struct.fadvise_info** %12, align 8
  %109 = getelementptr inbounds %struct.fadvise_info, %struct.fadvise_info* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = icmp eq i32 %110, %111
  br i1 %112, label %113, label %170

113:                                              ; preds = %107
  %114 = load %struct.fadvise_info*, %struct.fadvise_info** %12, align 8
  %115 = getelementptr inbounds %struct.fadvise_info, %struct.fadvise_info* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* %16, align 8
  %118 = icmp sle i64 %116, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %113
  %120 = load %struct.fadvise_info*, %struct.fadvise_info** %12, align 8
  %121 = getelementptr inbounds %struct.fadvise_info, %struct.fadvise_info* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* %9, align 8
  %124 = icmp sge i64 %122, %123
  br i1 %124, label %149, label %125

125:                                              ; preds = %119, %113
  %126 = load i64, i64* %16, align 8
  %127 = load i64, i64* @OFF_MAX, align 8
  %128 = icmp ne i64 %126, %127
  br i1 %128, label %129, label %136

129:                                              ; preds = %125
  %130 = load %struct.fadvise_info*, %struct.fadvise_info** %12, align 8
  %131 = getelementptr inbounds %struct.fadvise_info, %struct.fadvise_info* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* %16, align 8
  %134 = add nsw i64 %133, 1
  %135 = icmp eq i64 %132, %134
  br i1 %135, label %149, label %136

136:                                              ; preds = %129, %125
  %137 = load %struct.fadvise_info*, %struct.fadvise_info** %12, align 8
  %138 = getelementptr inbounds %struct.fadvise_info, %struct.fadvise_info* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @OFF_MAX, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %170

142:                                              ; preds = %136
  %143 = load %struct.fadvise_info*, %struct.fadvise_info** %12, align 8
  %144 = getelementptr inbounds %struct.fadvise_info, %struct.fadvise_info* %143, i32 0, i32 2
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %145, 1
  %147 = load i64, i64* %9, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %170

149:                                              ; preds = %142, %129, %119
  %150 = load i64, i64* %9, align 8
  %151 = load %struct.fadvise_info*, %struct.fadvise_info** %12, align 8
  %152 = getelementptr inbounds %struct.fadvise_info, %struct.fadvise_info* %151, i32 0, i32 1
  %153 = load i64, i64* %152, align 8
  %154 = icmp slt i64 %150, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %149
  %156 = load i64, i64* %9, align 8
  %157 = load %struct.fadvise_info*, %struct.fadvise_info** %12, align 8
  %158 = getelementptr inbounds %struct.fadvise_info, %struct.fadvise_info* %157, i32 0, i32 1
  store i64 %156, i64* %158, align 8
  br label %159

159:                                              ; preds = %155, %149
  %160 = load i64, i64* %16, align 8
  %161 = load %struct.fadvise_info*, %struct.fadvise_info** %12, align 8
  %162 = getelementptr inbounds %struct.fadvise_info, %struct.fadvise_info* %161, i32 0, i32 2
  %163 = load i64, i64* %162, align 8
  %164 = icmp sgt i64 %160, %163
  br i1 %164, label %165, label %169

165:                                              ; preds = %159
  %166 = load i64, i64* %16, align 8
  %167 = load %struct.fadvise_info*, %struct.fadvise_info** %12, align 8
  %168 = getelementptr inbounds %struct.fadvise_info, %struct.fadvise_info* %167, i32 0, i32 2
  store i64 %166, i64* %168, align 8
  br label %169

169:                                              ; preds = %165, %159
  br label %184

170:                                              ; preds = %142, %136, %107, %98
  %171 = load i32, i32* %11, align 4
  %172 = load %struct.fadvise_info*, %struct.fadvise_info** %13, align 8
  %173 = getelementptr inbounds %struct.fadvise_info, %struct.fadvise_info* %172, i32 0, i32 0
  store i32 %171, i32* %173, align 8
  %174 = load i64, i64* %9, align 8
  %175 = load %struct.fadvise_info*, %struct.fadvise_info** %13, align 8
  %176 = getelementptr inbounds %struct.fadvise_info, %struct.fadvise_info* %175, i32 0, i32 1
  store i64 %174, i64* %176, align 8
  %177 = load i64, i64* %16, align 8
  %178 = load %struct.fadvise_info*, %struct.fadvise_info** %13, align 8
  %179 = getelementptr inbounds %struct.fadvise_info, %struct.fadvise_info* %178, i32 0, i32 2
  store i64 %177, i64* %179, align 8
  %180 = load %struct.fadvise_info*, %struct.fadvise_info** %13, align 8
  %181 = load %struct.file*, %struct.file** %14, align 8
  %182 = getelementptr inbounds %struct.file, %struct.file* %181, i32 0, i32 1
  store %struct.fadvise_info* %180, %struct.fadvise_info** %182, align 8
  %183 = load %struct.fadvise_info*, %struct.fadvise_info** %12, align 8
  store %struct.fadvise_info* %183, %struct.fadvise_info** %13, align 8
  br label %184

184:                                              ; preds = %170, %169
  %185 = load i32, i32* @mtxpool_sleep, align 4
  %186 = load %struct.file*, %struct.file** %14, align 8
  %187 = call i32 @mtx_pool_unlock(i32 %185, %struct.file* %186)
  br label %277

188:                                              ; preds = %96
  %189 = load i32, i32* @mtxpool_sleep, align 4
  %190 = load %struct.file*, %struct.file** %14, align 8
  %191 = call i32 @mtx_pool_lock(i32 %189, %struct.file* %190)
  %192 = load %struct.file*, %struct.file** %14, align 8
  %193 = getelementptr inbounds %struct.file, %struct.file* %192, i32 0, i32 1
  %194 = load %struct.fadvise_info*, %struct.fadvise_info** %193, align 8
  store %struct.fadvise_info* %194, %struct.fadvise_info** %12, align 8
  %195 = load %struct.fadvise_info*, %struct.fadvise_info** %12, align 8
  %196 = icmp ne %struct.fadvise_info* %195, null
  br i1 %196, label %197, label %267

197:                                              ; preds = %188
  %198 = load i64, i64* %9, align 8
  %199 = load %struct.fadvise_info*, %struct.fadvise_info** %12, align 8
  %200 = getelementptr inbounds %struct.fadvise_info, %struct.fadvise_info* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp sle i64 %198, %201
  br i1 %202, label %203, label %213

203:                                              ; preds = %197
  %204 = load i64, i64* %16, align 8
  %205 = load %struct.fadvise_info*, %struct.fadvise_info** %12, align 8
  %206 = getelementptr inbounds %struct.fadvise_info, %struct.fadvise_info* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = icmp sge i64 %204, %207
  br i1 %208, label %209, label %213

209:                                              ; preds = %203
  %210 = load %struct.fadvise_info*, %struct.fadvise_info** %12, align 8
  store %struct.fadvise_info* %210, %struct.fadvise_info** %13, align 8
  %211 = load %struct.file*, %struct.file** %14, align 8
  %212 = getelementptr inbounds %struct.file, %struct.file* %211, i32 0, i32 1
  store %struct.fadvise_info* null, %struct.fadvise_info** %212, align 8
  br label %266

213:                                              ; preds = %203, %197
  %214 = load i64, i64* %9, align 8
  %215 = load %struct.fadvise_info*, %struct.fadvise_info** %12, align 8
  %216 = getelementptr inbounds %struct.fadvise_info, %struct.fadvise_info* %215, i32 0, i32 1
  %217 = load i64, i64* %216, align 8
  %218 = icmp sle i64 %214, %217
  br i1 %218, label %219, label %230

219:                                              ; preds = %213
  %220 = load i64, i64* %16, align 8
  %221 = load %struct.fadvise_info*, %struct.fadvise_info** %12, align 8
  %222 = getelementptr inbounds %struct.fadvise_info, %struct.fadvise_info* %221, i32 0, i32 1
  %223 = load i64, i64* %222, align 8
  %224 = icmp sge i64 %220, %223
  br i1 %224, label %225, label %230

225:                                              ; preds = %219
  %226 = load i64, i64* %16, align 8
  %227 = add nsw i64 %226, 1
  %228 = load %struct.fadvise_info*, %struct.fadvise_info** %12, align 8
  %229 = getelementptr inbounds %struct.fadvise_info, %struct.fadvise_info* %228, i32 0, i32 1
  store i64 %227, i64* %229, align 8
  br label %265

230:                                              ; preds = %219, %213
  %231 = load i64, i64* %9, align 8
  %232 = load %struct.fadvise_info*, %struct.fadvise_info** %12, align 8
  %233 = getelementptr inbounds %struct.fadvise_info, %struct.fadvise_info* %232, i32 0, i32 2
  %234 = load i64, i64* %233, align 8
  %235 = icmp sle i64 %231, %234
  br i1 %235, label %236, label %247

236:                                              ; preds = %230
  %237 = load i64, i64* %16, align 8
  %238 = load %struct.fadvise_info*, %struct.fadvise_info** %12, align 8
  %239 = getelementptr inbounds %struct.fadvise_info, %struct.fadvise_info* %238, i32 0, i32 2
  %240 = load i64, i64* %239, align 8
  %241 = icmp sge i64 %237, %240
  br i1 %241, label %242, label %247

242:                                              ; preds = %236
  %243 = load i64, i64* %9, align 8
  %244 = sub nsw i64 %243, 1
  %245 = load %struct.fadvise_info*, %struct.fadvise_info** %12, align 8
  %246 = getelementptr inbounds %struct.fadvise_info, %struct.fadvise_info* %245, i32 0, i32 2
  store i64 %244, i64* %246, align 8
  br label %264

247:                                              ; preds = %236, %230
  %248 = load i64, i64* %9, align 8
  %249 = load %struct.fadvise_info*, %struct.fadvise_info** %12, align 8
  %250 = getelementptr inbounds %struct.fadvise_info, %struct.fadvise_info* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = icmp sge i64 %248, %251
  br i1 %252, label %253, label %263

253:                                              ; preds = %247
  %254 = load i64, i64* %16, align 8
  %255 = load %struct.fadvise_info*, %struct.fadvise_info** %12, align 8
  %256 = getelementptr inbounds %struct.fadvise_info, %struct.fadvise_info* %255, i32 0, i32 2
  %257 = load i64, i64* %256, align 8
  %258 = icmp sle i64 %254, %257
  br i1 %258, label %259, label %263

259:                                              ; preds = %253
  %260 = load %struct.fadvise_info*, %struct.fadvise_info** %12, align 8
  store %struct.fadvise_info* %260, %struct.fadvise_info** %13, align 8
  %261 = load %struct.file*, %struct.file** %14, align 8
  %262 = getelementptr inbounds %struct.file, %struct.file* %261, i32 0, i32 1
  store %struct.fadvise_info* null, %struct.fadvise_info** %262, align 8
  br label %263

263:                                              ; preds = %259, %253, %247
  br label %264

264:                                              ; preds = %263, %242
  br label %265

265:                                              ; preds = %264, %225
  br label %266

266:                                              ; preds = %265, %209
  br label %267

267:                                              ; preds = %266, %188
  %268 = load i32, i32* @mtxpool_sleep, align 4
  %269 = load %struct.file*, %struct.file** %14, align 8
  %270 = call i32 @mtx_pool_unlock(i32 %268, %struct.file* %269)
  br label %277

271:                                              ; preds = %96, %96
  %272 = load %struct.vnode*, %struct.vnode** %15, align 8
  %273 = load i64, i64* %9, align 8
  %274 = load i64, i64* %16, align 8
  %275 = load i32, i32* %11, align 4
  %276 = call i32 @VOP_ADVISE(%struct.vnode* %272, i64 %273, i64 %274, i32 %275)
  store i32 %276, i32* %17, align 4
  br label %277

277:                                              ; preds = %96, %271, %267, %184
  br label %278

278:                                              ; preds = %277, %84, %73, %65, %50
  %279 = load %struct.file*, %struct.file** %14, align 8
  %280 = icmp ne %struct.file* %279, null
  br i1 %280, label %281, label %285

281:                                              ; preds = %278
  %282 = load %struct.file*, %struct.file** %14, align 8
  %283 = load %struct.thread*, %struct.thread** %7, align 8
  %284 = call i32 @fdrop(%struct.file* %282, %struct.thread* %283)
  br label %285

285:                                              ; preds = %281, %278
  %286 = load %struct.fadvise_info*, %struct.fadvise_info** %13, align 8
  %287 = load i32, i32* @M_FADVISE, align 4
  %288 = call i32 @free(%struct.fadvise_info* %286, i32 %287)
  %289 = load i32, i32* %17, align 4
  store i32 %289, i32* %6, align 4
  br label %290

290:                                              ; preds = %285, %40, %29
  %291 = load i32, i32* %6, align 4
  ret i32 %291
}

declare dso_local i32 @AUDIT_ARG_VALUE(i32) #1

declare dso_local %struct.fadvise_info* @malloc(i32, i32, i32) #1

declare dso_local i32 @AUDIT_ARG_FD(i32) #1

declare dso_local i32 @fget(%struct.thread*, i32, i32*, %struct.file**) #1

declare dso_local i32 @AUDIT_ARG_FILE(i32, %struct.file*) #1

declare dso_local i32 @mtx_pool_lock(i32, %struct.file*) #1

declare dso_local i32 @mtx_pool_unlock(i32, %struct.file*) #1

declare dso_local i32 @VOP_ADVISE(%struct.vnode*, i64, i64, i32) #1

declare dso_local i32 @fdrop(%struct.file*, %struct.thread*) #1

declare dso_local i32 @free(%struct.fadvise_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
