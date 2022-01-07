; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_kern_proc_setrlimit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_resource.c_kern_proc_setrlimit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32 }
%struct.proc = type { i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.plimit*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64, i32, i32 (%struct.rlimit*, i64)* }
%struct.plimit = type { %struct.rlimit* }
%struct.rlimit = type { i64, i64 }

@RLIM_NLIMITS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@RLIM_INFINITY = common dso_local global i64 0, align 8
@PRIV_PROC_SETRLIMIT = common dso_local global i32 0, align 4
@SBT_1S = common dso_local global i32 0, align 4
@lim_cb = common dso_local global i32 0, align 4
@maxdsiz = common dso_local global i8* null, align 8
@maxssiz = common dso_local global i8* null, align 8
@maxfilesperproc = common dso_local global i8* null, align 8
@maxprocperuid = common dso_local global i8* null, align 8
@curthread = common dso_local global %struct.thread* null, align 8
@P_INEXEC = common dso_local global i32 0, align 4
@VM_PROT_NONE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_proc_setrlimit(%struct.thread* %0, %struct.proc* %1, i64 %2, %struct.rlimit* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.proc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.rlimit*, align 8
  %10 = alloca %struct.plimit*, align 8
  %11 = alloca %struct.plimit*, align 8
  %12 = alloca %struct.rlimit*, align 8
  %13 = alloca %struct.rlimit, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.thread* %0, %struct.thread** %6, align 8
  store %struct.proc* %1, %struct.proc** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.rlimit* %3, %struct.rlimit** %9, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @RLIM_NLIMITS, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %5, align 4
  br label %376

23:                                               ; preds = %4
  %24 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %25 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp slt i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i64, i64* @RLIM_INFINITY, align 8
  %30 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %31 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %28, %23
  %33 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %34 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %32
  %38 = load i64, i64* @RLIM_INFINITY, align 8
  %39 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %40 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %39, i32 0, i32 1
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %32
  %42 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %13, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = call %struct.plimit* (...) @lim_alloc()
  store %struct.plimit* %43, %struct.plimit** %10, align 8
  %44 = load %struct.proc*, %struct.proc** %7, align 8
  %45 = call i32 @PROC_LOCK(%struct.proc* %44)
  %46 = load %struct.proc*, %struct.proc** %7, align 8
  %47 = getelementptr inbounds %struct.proc, %struct.proc* %46, i32 0, i32 4
  %48 = load %struct.plimit*, %struct.plimit** %47, align 8
  store %struct.plimit* %48, %struct.plimit** %11, align 8
  %49 = load %struct.plimit*, %struct.plimit** %11, align 8
  %50 = getelementptr inbounds %struct.plimit, %struct.plimit* %49, i32 0, i32 0
  %51 = load %struct.rlimit*, %struct.rlimit** %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %51, i64 %52
  store %struct.rlimit* %53, %struct.rlimit** %12, align 8
  %54 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %55 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.rlimit*, %struct.rlimit** %12, align 8
  %58 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp sgt i64 %56, %59
  br i1 %60, label %69, label %61

61:                                               ; preds = %41
  %62 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %63 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.rlimit*, %struct.rlimit** %12, align 8
  %66 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %64, %67
  br i1 %68, label %69, label %81

69:                                               ; preds = %61, %41
  %70 = load %struct.thread*, %struct.thread** %6, align 8
  %71 = load i32, i32* @PRIV_PROC_SETRLIMIT, align 4
  %72 = call i32 @priv_check(%struct.thread* %70, i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %69
  %75 = load %struct.proc*, %struct.proc** %7, align 8
  %76 = call i32 @PROC_UNLOCK(%struct.proc* %75)
  %77 = load %struct.plimit*, %struct.plimit** %10, align 8
  %78 = call i32 @lim_free(%struct.plimit* %77)
  %79 = load i32, i32* %14, align 4
  store i32 %79, i32* %5, align 4
  br label %376

80:                                               ; preds = %69
  br label %81

81:                                               ; preds = %80, %61
  %82 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %83 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %86 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = icmp sgt i64 %84, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %91 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %94 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %93, i32 0, i32 0
  store i64 %92, i64* %94, align 8
  br label %95

95:                                               ; preds = %89, %81
  %96 = load %struct.plimit*, %struct.plimit** %10, align 8
  %97 = load %struct.plimit*, %struct.plimit** %11, align 8
  %98 = call i32 @lim_copy(%struct.plimit* %96, %struct.plimit* %97)
  %99 = load %struct.plimit*, %struct.plimit** %10, align 8
  %100 = getelementptr inbounds %struct.plimit, %struct.plimit* %99, i32 0, i32 0
  %101 = load %struct.rlimit*, %struct.rlimit** %100, align 8
  %102 = load i64, i64* %8, align 8
  %103 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %101, i64 %102
  store %struct.rlimit* %103, %struct.rlimit** %12, align 8
  %104 = load i64, i64* %8, align 8
  switch i64 %104, label %264 [
    i64 132, label %105
    i64 131, label %131
    i64 128, label %156
    i64 130, label %198
    i64 129, label %223
  ]

105:                                              ; preds = %95
  %106 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %107 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @RLIM_INFINITY, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %125

111:                                              ; preds = %105
  %112 = load %struct.proc*, %struct.proc** %7, align 8
  %113 = getelementptr inbounds %struct.proc, %struct.proc* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @RLIM_INFINITY, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %125

117:                                              ; preds = %111
  %118 = load %struct.proc*, %struct.proc** %7, align 8
  %119 = getelementptr inbounds %struct.proc, %struct.proc* %118, i32 0, i32 5
  %120 = load i32, i32* @SBT_1S, align 4
  %121 = load i32, i32* @lim_cb, align 4
  %122 = load %struct.proc*, %struct.proc** %7, align 8
  %123 = call i32 @C_PREL(i32 1)
  %124 = call i32 @callout_reset_sbt(i32* %119, i32 %120, i32 0, i32 %121, %struct.proc* %122, i32 %123)
  br label %125

125:                                              ; preds = %117, %111, %105
  %126 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %127 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.proc*, %struct.proc** %7, align 8
  %130 = getelementptr inbounds %struct.proc, %struct.proc* %129, i32 0, i32 0
  store i64 %128, i64* %130, align 8
  br label %264

131:                                              ; preds = %95
  %132 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %133 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = inttoptr i64 %134 to i8*
  %136 = load i8*, i8** @maxdsiz, align 8
  %137 = icmp ugt i8* %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %131
  %139 = load i8*, i8** @maxdsiz, align 8
  %140 = ptrtoint i8* %139 to i64
  %141 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %142 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %141, i32 0, i32 0
  store i64 %140, i64* %142, align 8
  br label %143

143:                                              ; preds = %138, %131
  %144 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %145 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = inttoptr i64 %146 to i8*
  %148 = load i8*, i8** @maxdsiz, align 8
  %149 = icmp ugt i8* %147, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %143
  %151 = load i8*, i8** @maxdsiz, align 8
  %152 = ptrtoint i8* %151 to i64
  %153 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %154 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %153, i32 0, i32 1
  store i64 %152, i64* %154, align 8
  br label %155

155:                                              ; preds = %150, %143
  br label %264

156:                                              ; preds = %95
  %157 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %158 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = inttoptr i64 %159 to i8*
  %161 = load i8*, i8** @maxssiz, align 8
  %162 = icmp ugt i8* %160, %161
  br i1 %162, label %163, label %168

163:                                              ; preds = %156
  %164 = load i8*, i8** @maxssiz, align 8
  %165 = ptrtoint i8* %164 to i64
  %166 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %167 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %166, i32 0, i32 0
  store i64 %165, i64* %167, align 8
  br label %168

168:                                              ; preds = %163, %156
  %169 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %170 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %169, i32 0, i32 1
  %171 = load i64, i64* %170, align 8
  %172 = inttoptr i64 %171 to i8*
  %173 = load i8*, i8** @maxssiz, align 8
  %174 = icmp ugt i8* %172, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %168
  %176 = load i8*, i8** @maxssiz, align 8
  %177 = ptrtoint i8* %176 to i64
  %178 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %179 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %178, i32 0, i32 1
  store i64 %177, i64* %179, align 8
  br label %180

180:                                              ; preds = %175, %168
  %181 = load %struct.rlimit*, %struct.rlimit** %12, align 8
  %182 = bitcast %struct.rlimit* %13 to i8*
  %183 = bitcast %struct.rlimit* %181 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %182, i8* align 8 %183, i64 16, i1 false)
  %184 = load %struct.proc*, %struct.proc** %7, align 8
  %185 = getelementptr inbounds %struct.proc, %struct.proc* %184, i32 0, i32 3
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 2
  %188 = load i32 (%struct.rlimit*, i64)*, i32 (%struct.rlimit*, i64)** %187, align 8
  %189 = icmp ne i32 (%struct.rlimit*, i64)* %188, null
  br i1 %189, label %190, label %197

190:                                              ; preds = %180
  %191 = load %struct.proc*, %struct.proc** %7, align 8
  %192 = getelementptr inbounds %struct.proc, %struct.proc* %191, i32 0, i32 3
  %193 = load %struct.TYPE_3__*, %struct.TYPE_3__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 2
  %195 = load i32 (%struct.rlimit*, i64)*, i32 (%struct.rlimit*, i64)** %194, align 8
  %196 = call i32 %195(%struct.rlimit* %13, i64 128)
  br label %197

197:                                              ; preds = %190, %180
  br label %264

198:                                              ; preds = %95
  %199 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %200 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = inttoptr i64 %201 to i8*
  %203 = load i8*, i8** @maxfilesperproc, align 8
  %204 = icmp ugt i8* %202, %203
  br i1 %204, label %205, label %210

205:                                              ; preds = %198
  %206 = load i8*, i8** @maxfilesperproc, align 8
  %207 = ptrtoint i8* %206 to i64
  %208 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %209 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %208, i32 0, i32 0
  store i64 %207, i64* %209, align 8
  br label %210

210:                                              ; preds = %205, %198
  %211 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %212 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %211, i32 0, i32 1
  %213 = load i64, i64* %212, align 8
  %214 = inttoptr i64 %213 to i8*
  %215 = load i8*, i8** @maxfilesperproc, align 8
  %216 = icmp ugt i8* %214, %215
  br i1 %216, label %217, label %222

217:                                              ; preds = %210
  %218 = load i8*, i8** @maxfilesperproc, align 8
  %219 = ptrtoint i8* %218 to i64
  %220 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %221 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %220, i32 0, i32 1
  store i64 %219, i64* %221, align 8
  br label %222

222:                                              ; preds = %217, %210
  br label %264

223:                                              ; preds = %95
  %224 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %225 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = inttoptr i64 %226 to i8*
  %228 = load i8*, i8** @maxprocperuid, align 8
  %229 = icmp ugt i8* %227, %228
  br i1 %229, label %230, label %235

230:                                              ; preds = %223
  %231 = load i8*, i8** @maxprocperuid, align 8
  %232 = ptrtoint i8* %231 to i64
  %233 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %234 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %233, i32 0, i32 0
  store i64 %232, i64* %234, align 8
  br label %235

235:                                              ; preds = %230, %223
  %236 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %237 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = inttoptr i64 %238 to i8*
  %240 = load i8*, i8** @maxprocperuid, align 8
  %241 = icmp ugt i8* %239, %240
  br i1 %241, label %242, label %247

242:                                              ; preds = %235
  %243 = load i8*, i8** @maxprocperuid, align 8
  %244 = ptrtoint i8* %243 to i64
  %245 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %246 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %245, i32 0, i32 1
  store i64 %244, i64* %246, align 8
  br label %247

247:                                              ; preds = %242, %235
  %248 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %249 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = icmp slt i64 %250, 1
  br i1 %251, label %252, label %255

252:                                              ; preds = %247
  %253 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %254 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %253, i32 0, i32 0
  store i64 1, i64* %254, align 8
  br label %255

255:                                              ; preds = %252, %247
  %256 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %257 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %256, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = icmp slt i64 %258, 1
  br i1 %259, label %260, label %263

260:                                              ; preds = %255
  %261 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %262 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %261, i32 0, i32 1
  store i64 1, i64* %262, align 8
  br label %263

263:                                              ; preds = %260, %255
  br label %264

264:                                              ; preds = %95, %263, %222, %197, %155, %125
  %265 = load %struct.proc*, %struct.proc** %7, align 8
  %266 = getelementptr inbounds %struct.proc, %struct.proc* %265, i32 0, i32 3
  %267 = load %struct.TYPE_3__*, %struct.TYPE_3__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %267, i32 0, i32 2
  %269 = load i32 (%struct.rlimit*, i64)*, i32 (%struct.rlimit*, i64)** %268, align 8
  %270 = icmp ne i32 (%struct.rlimit*, i64)* %269, null
  br i1 %270, label %271, label %280

271:                                              ; preds = %264
  %272 = load %struct.proc*, %struct.proc** %7, align 8
  %273 = getelementptr inbounds %struct.proc, %struct.proc* %272, i32 0, i32 3
  %274 = load %struct.TYPE_3__*, %struct.TYPE_3__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %274, i32 0, i32 2
  %276 = load i32 (%struct.rlimit*, i64)*, i32 (%struct.rlimit*, i64)** %275, align 8
  %277 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %278 = load i64, i64* %8, align 8
  %279 = call i32 %276(%struct.rlimit* %277, i64 %278)
  br label %280

280:                                              ; preds = %271, %264
  %281 = load %struct.rlimit*, %struct.rlimit** %12, align 8
  %282 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %283 = bitcast %struct.rlimit* %281 to i8*
  %284 = bitcast %struct.rlimit* %282 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %283, i8* align 8 %284, i64 16, i1 false)
  %285 = load %struct.plimit*, %struct.plimit** %10, align 8
  %286 = load %struct.proc*, %struct.proc** %7, align 8
  %287 = getelementptr inbounds %struct.proc, %struct.proc* %286, i32 0, i32 4
  store %struct.plimit* %285, %struct.plimit** %287, align 8
  %288 = load %struct.proc*, %struct.proc** %7, align 8
  %289 = call i32 @PROC_UPDATE_COW(%struct.proc* %288)
  %290 = load %struct.proc*, %struct.proc** %7, align 8
  %291 = call i32 @PROC_UNLOCK(%struct.proc* %290)
  %292 = load %struct.plimit*, %struct.plimit** %11, align 8
  %293 = call i32 @lim_free(%struct.plimit* %292)
  %294 = load i64, i64* %8, align 8
  %295 = icmp eq i64 %294, 128
  br i1 %295, label %296, label %375

296:                                              ; preds = %280
  %297 = load %struct.thread*, %struct.thread** %6, align 8
  %298 = load %struct.thread*, %struct.thread** @curthread, align 8
  %299 = icmp ne %struct.thread* %297, %298
  br i1 %299, label %307, label %300

300:                                              ; preds = %296
  %301 = load %struct.proc*, %struct.proc** %7, align 8
  %302 = getelementptr inbounds %struct.proc, %struct.proc* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 8
  %304 = load i32, i32* @P_INEXEC, align 4
  %305 = and i32 %303, %304
  %306 = icmp eq i32 %305, 0
  br i1 %306, label %307, label %375

307:                                              ; preds = %300, %296
  %308 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %309 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %13, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %310, %312
  br i1 %313, label %314, label %374

314:                                              ; preds = %307
  %315 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %316 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %315, i32 0, i32 0
  %317 = load i64, i64* %316, align 8
  %318 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %13, i32 0, i32 0
  %319 = load i64, i64* %318, align 8
  %320 = icmp sgt i64 %317, %319
  br i1 %320, label %321, label %342

321:                                              ; preds = %314
  %322 = load %struct.proc*, %struct.proc** %7, align 8
  %323 = getelementptr inbounds %struct.proc, %struct.proc* %322, i32 0, i32 3
  %324 = load %struct.TYPE_3__*, %struct.TYPE_3__** %323, align 8
  %325 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 8
  store i32 %326, i32* %17, align 4
  %327 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %328 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %327, i32 0, i32 0
  %329 = load i64, i64* %328, align 8
  %330 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %13, i32 0, i32 0
  %331 = load i64, i64* %330, align 8
  %332 = sub nsw i64 %329, %331
  store i64 %332, i64* %16, align 8
  %333 = load %struct.proc*, %struct.proc** %7, align 8
  %334 = getelementptr inbounds %struct.proc, %struct.proc* %333, i32 0, i32 3
  %335 = load %struct.TYPE_3__*, %struct.TYPE_3__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %339 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %338, i32 0, i32 0
  %340 = load i64, i64* %339, align 8
  %341 = sub nsw i64 %337, %340
  store i64 %341, i64* %15, align 8
  br label %358

342:                                              ; preds = %314
  %343 = load i32, i32* @VM_PROT_NONE, align 4
  store i32 %343, i32* %17, align 4
  %344 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %13, i32 0, i32 0
  %345 = load i64, i64* %344, align 8
  %346 = load %struct.rlimit*, %struct.rlimit** %9, align 8
  %347 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = sub nsw i64 %345, %348
  store i64 %349, i64* %16, align 8
  %350 = load %struct.proc*, %struct.proc** %7, align 8
  %351 = getelementptr inbounds %struct.proc, %struct.proc* %350, i32 0, i32 3
  %352 = load %struct.TYPE_3__*, %struct.TYPE_3__** %351, align 8
  %353 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %13, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = sub nsw i64 %354, %356
  store i64 %357, i64* %15, align 8
  br label %358

358:                                              ; preds = %342, %321
  %359 = load i64, i64* %15, align 8
  %360 = call i64 @trunc_page(i64 %359)
  store i64 %360, i64* %15, align 8
  %361 = load i64, i64* %16, align 8
  %362 = call i64 @round_page(i64 %361)
  store i64 %362, i64* %16, align 8
  %363 = load %struct.proc*, %struct.proc** %7, align 8
  %364 = getelementptr inbounds %struct.proc, %struct.proc* %363, i32 0, i32 2
  %365 = load %struct.TYPE_4__*, %struct.TYPE_4__** %364, align 8
  %366 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i32 0, i32 0
  %367 = load i64, i64* %15, align 8
  %368 = load i64, i64* %15, align 8
  %369 = load i64, i64* %16, align 8
  %370 = add nsw i64 %368, %369
  %371 = load i32, i32* %17, align 4
  %372 = load i32, i32* @FALSE, align 4
  %373 = call i32 @vm_map_protect(i32* %366, i64 %367, i64 %370, i32 %371, i32 %372)
  br label %374

374:                                              ; preds = %358, %307
  br label %375

375:                                              ; preds = %374, %300, %280
  store i32 0, i32* %5, align 4
  br label %376

376:                                              ; preds = %375, %74, %21
  %377 = load i32, i32* %5, align 4
  ret i32 %377
}

declare dso_local %struct.plimit* @lim_alloc(...) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @priv_check(%struct.thread*, i32) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @lim_free(%struct.plimit*) #1

declare dso_local i32 @lim_copy(%struct.plimit*, %struct.plimit*) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, i32, %struct.proc*, i32) #1

declare dso_local i32 @C_PREL(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @PROC_UPDATE_COW(%struct.proc*) #1

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local i32 @vm_map_protect(i32*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
