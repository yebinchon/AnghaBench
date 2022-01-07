; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exec.c_exec_new_vmspace.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_exec.c_exec_new_vmspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.image_params = type { i32, i64, i64, i64, i32, %struct.sysentvec*, %struct.proc* }
%struct.proc = type { %struct.vmspace* }
%struct.vmspace = type { i32, i32, i8*, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.sysentvec = type { i64, i64, i64*, i64, i64, i32, i32, i32* }
%struct.rlimit = type { i64, i64 }

@process_exec = common dso_local global i32 0, align 4
@map_at_zero = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@MAP_WIREFUTURE = common dso_local global i32 0, align 4
@MAP_ASLR = common dso_local global i32 0, align 4
@MAP_ASLR_IGNSTART = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@MAP_INHERIT_SHARE = common dso_local global i32 0, align 4
@MAP_ACC_NO_CHARGE = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@RLIMIT_STACK = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@maxssiz = common dso_local global i64 0, align 8
@VM_PROT_ALL = common dso_local global i32 0, align 4
@MAP_STACK_GROWS_DOWN = common dso_local global i32 0, align 4
@sgrowsiz = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exec_new_vmspace(%struct.image_params* %0, %struct.sysentvec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.image_params*, align 8
  %5 = alloca %struct.sysentvec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.proc*, align 8
  %8 = alloca %struct.vmspace*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rlimit, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i64, align 8
  store %struct.image_params* %0, %struct.image_params** %4, align 8
  store %struct.sysentvec* %1, %struct.sysentvec** %5, align 8
  %15 = load %struct.image_params*, %struct.image_params** %4, align 8
  %16 = getelementptr inbounds %struct.image_params, %struct.image_params* %15, i32 0, i32 6
  %17 = load %struct.proc*, %struct.proc** %16, align 8
  store %struct.proc* %17, %struct.proc** %7, align 8
  %18 = load %struct.proc*, %struct.proc** %7, align 8
  %19 = getelementptr inbounds %struct.proc, %struct.proc* %18, i32 0, i32 0
  %20 = load %struct.vmspace*, %struct.vmspace** %19, align 8
  store %struct.vmspace* %20, %struct.vmspace** %8, align 8
  %21 = load %struct.image_params*, %struct.image_params** %4, align 8
  %22 = getelementptr inbounds %struct.image_params, %struct.image_params* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load %struct.sysentvec*, %struct.sysentvec** %5, align 8
  %24 = load %struct.image_params*, %struct.image_params** %4, align 8
  %25 = getelementptr inbounds %struct.image_params, %struct.image_params* %24, i32 0, i32 5
  store %struct.sysentvec* %23, %struct.sysentvec** %25, align 8
  %26 = load i32, i32* @process_exec, align 4
  %27 = load %struct.proc*, %struct.proc** %7, align 8
  %28 = load %struct.image_params*, %struct.image_params** %4, align 8
  %29 = call i32 @EVENTHANDLER_DIRECT_INVOKE(i32 %26, %struct.proc* %27, %struct.image_params* %28)
  %30 = load %struct.vmspace*, %struct.vmspace** %8, align 8
  %31 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %30, i32 0, i32 3
  store %struct.TYPE_11__* %31, %struct.TYPE_11__** %13, align 8
  %32 = load i64, i64* @map_at_zero, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %2
  %35 = load %struct.sysentvec*, %struct.sysentvec** %5, align 8
  %36 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %11, align 8
  br label %44

38:                                               ; preds = %2
  %39 = load %struct.sysentvec*, %struct.sysentvec** %5, align 8
  %40 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = call i64 @MAX(i64 %41, i32 %42)
  store i64 %43, i64* %11, align 8
  br label %44

44:                                               ; preds = %38, %34
  %45 = load %struct.vmspace*, %struct.vmspace** %8, align 8
  %46 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %89

49:                                               ; preds = %44
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %51 = call i64 @vm_map_min(%struct.TYPE_11__* %50)
  %52 = load i64, i64* %11, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %89

54:                                               ; preds = %49
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %56 = call i64 @vm_map_max(%struct.TYPE_11__* %55)
  %57 = load %struct.sysentvec*, %struct.sysentvec** %5, align 8
  %58 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %56, %59
  br i1 %60, label %61, label %89

61:                                               ; preds = %54
  %62 = load %struct.proc*, %struct.proc** %7, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %64 = call i64 @cpu_exec_vmspace_reuse(%struct.proc* %62, %struct.TYPE_11__* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %61
  %67 = load %struct.vmspace*, %struct.vmspace** %8, align 8
  %68 = call i32 @shmexit(%struct.vmspace* %67)
  %69 = load %struct.vmspace*, %struct.vmspace** %8, align 8
  %70 = call i32 @vmspace_pmap(%struct.vmspace* %69)
  %71 = call i32 @pmap_remove_pages(i32 %70)
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %74 = call i64 @vm_map_min(%struct.TYPE_11__* %73)
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %76 = call i64 @vm_map_max(%struct.TYPE_11__* %75)
  %77 = call i32 @vm_map_remove(%struct.TYPE_11__* %72, i64 %74, i64 %76)
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %79 = call i32 @vm_map_lock(%struct.TYPE_11__* %78)
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %81 = load i32, i32* @MAP_WIREFUTURE, align 4
  %82 = load i32, i32* @MAP_ASLR, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @MAP_ASLR_IGNSTART, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @vm_map_modflags(%struct.TYPE_11__* %80, i32 0, i32 %85)
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %88 = call i32 @vm_map_unlock(%struct.TYPE_11__* %87)
  br label %106

89:                                               ; preds = %61, %54, %49, %44
  %90 = load %struct.proc*, %struct.proc** %7, align 8
  %91 = load i64, i64* %11, align 8
  %92 = load %struct.sysentvec*, %struct.sysentvec** %5, align 8
  %93 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @vmspace_exec(%struct.proc* %90, i64 %91, i64 %94)
  store i32 %95, i32* %6, align 4
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %89
  %99 = load i32, i32* %6, align 4
  store i32 %99, i32* %3, align 4
  br label %259

100:                                              ; preds = %89
  %101 = load %struct.proc*, %struct.proc** %7, align 8
  %102 = getelementptr inbounds %struct.proc, %struct.proc* %101, i32 0, i32 0
  %103 = load %struct.vmspace*, %struct.vmspace** %102, align 8
  store %struct.vmspace* %103, %struct.vmspace** %8, align 8
  %104 = load %struct.vmspace*, %struct.vmspace** %8, align 8
  %105 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %104, i32 0, i32 3
  store %struct.TYPE_11__* %105, %struct.TYPE_11__** %13, align 8
  br label %106

106:                                              ; preds = %100, %66
  %107 = load %struct.image_params*, %struct.image_params** %4, align 8
  %108 = getelementptr inbounds %struct.image_params, %struct.image_params* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 4
  %114 = load %struct.sysentvec*, %struct.sysentvec** %5, align 8
  %115 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %114, i32 0, i32 7
  %116 = load i32*, i32** %115, align 8
  store i32* %116, i32** %9, align 8
  %117 = load i32*, i32** %9, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %149

119:                                              ; preds = %106
  %120 = load i32*, i32** %9, align 8
  %121 = call i32 @vm_object_reference(i32* %120)
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = load %struct.sysentvec*, %struct.sysentvec** %5, align 8
  %125 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.sysentvec*, %struct.sysentvec** %5, align 8
  %128 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %127, i32 0, i32 5
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @VM_PROT_READ, align 4
  %131 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %132 = or i32 %130, %131
  %133 = load i32, i32* @VM_PROT_READ, align 4
  %134 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @MAP_INHERIT_SHARE, align 4
  %137 = load i32, i32* @MAP_ACC_NO_CHARGE, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @vm_map_fixed(%struct.TYPE_11__* %122, i32* %123, i32 0, i32 %126, i32 %129, i32 %132, i32 %135, i32 %138)
  store i32 %139, i32* %6, align 4
  %140 = load i32, i32* %6, align 4
  %141 = load i32, i32* @KERN_SUCCESS, align 4
  %142 = icmp ne i32 %140, %141
  br i1 %142, label %143, label %148

143:                                              ; preds = %119
  %144 = load i32*, i32** %9, align 8
  %145 = call i32 @vm_object_deallocate(i32* %144)
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @vm_mmap_to_errno(i32 %146)
  store i32 %147, i32* %3, align 4
  br label %259

148:                                              ; preds = %119
  br label %149

149:                                              ; preds = %148, %106
  %150 = load %struct.image_params*, %struct.image_params** %4, align 8
  %151 = getelementptr inbounds %struct.image_params, %struct.image_params* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %185

154:                                              ; preds = %149
  %155 = load %struct.image_params*, %struct.image_params** %4, align 8
  %156 = getelementptr inbounds %struct.image_params, %struct.image_params* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = call i64 @trunc_page(i64 %157)
  store i64 %158, i64* %14, align 8
  %159 = load %struct.proc*, %struct.proc** %7, align 8
  %160 = call i32 @PROC_LOCK(%struct.proc* %159)
  %161 = load %struct.proc*, %struct.proc** %7, align 8
  %162 = load i32, i32* @RLIMIT_STACK, align 4
  %163 = call i32 @lim_rlimit_proc(%struct.proc* %161, i32 %162, %struct.rlimit* %10)
  %164 = load %struct.proc*, %struct.proc** %7, align 8
  %165 = call i32 @PROC_UNLOCK(%struct.proc* %164)
  %166 = load i64, i64* %14, align 8
  %167 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %10, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = icmp sgt i64 %166, %168
  br i1 %169, label %170, label %173

170:                                              ; preds = %154
  %171 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %10, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  store i64 %172, i64* %14, align 8
  br label %173

173:                                              ; preds = %170, %154
  %174 = load i64, i64* %14, align 8
  %175 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %10, i32 0, i32 1
  %176 = load i64, i64* %175, align 8
  %177 = icmp sgt i64 %174, %176
  br i1 %177, label %178, label %184

178:                                              ; preds = %173
  %179 = load i64, i64* %14, align 8
  %180 = getelementptr inbounds %struct.rlimit, %struct.rlimit* %10, i32 0, i32 1
  store i64 %179, i64* %180, align 8
  %181 = load i32, i32* @curthread, align 4
  %182 = load i32, i32* @RLIMIT_STACK, align 4
  %183 = call i32 @kern_setrlimit(i32 %181, i32 %182, %struct.rlimit* %10)
  br label %184

184:                                              ; preds = %178, %173
  br label %198

185:                                              ; preds = %149
  %186 = load %struct.sysentvec*, %struct.sysentvec** %5, align 8
  %187 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %186, i32 0, i32 2
  %188 = load i64*, i64** %187, align 8
  %189 = icmp ne i64* %188, null
  br i1 %189, label %190, label %195

190:                                              ; preds = %185
  %191 = load %struct.sysentvec*, %struct.sysentvec** %5, align 8
  %192 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %191, i32 0, i32 2
  %193 = load i64*, i64** %192, align 8
  %194 = load i64, i64* %193, align 8
  store i64 %194, i64* %14, align 8
  br label %197

195:                                              ; preds = %185
  %196 = load i64, i64* @maxssiz, align 8
  store i64 %196, i64* %14, align 8
  br label %197

197:                                              ; preds = %195, %190
  br label %198

198:                                              ; preds = %197, %184
  %199 = load i32, i32* @curthread, align 4
  %200 = load i32, i32* @RLIMIT_STACK, align 4
  %201 = call i64 @lim_cur(i32 %199, i32 %200)
  %202 = load %struct.image_params*, %struct.image_params** %4, align 8
  %203 = getelementptr inbounds %struct.image_params, %struct.image_params* %202, i32 0, i32 2
  store i64 %201, i64* %203, align 8
  %204 = load i64, i64* %14, align 8
  %205 = load %struct.image_params*, %struct.image_params** %4, align 8
  %206 = getelementptr inbounds %struct.image_params, %struct.image_params* %205, i32 0, i32 2
  %207 = load i64, i64* %206, align 8
  %208 = icmp slt i64 %204, %207
  br i1 %208, label %209, label %213

209:                                              ; preds = %198
  %210 = load i64, i64* %14, align 8
  %211 = load %struct.image_params*, %struct.image_params** %4, align 8
  %212 = getelementptr inbounds %struct.image_params, %struct.image_params* %211, i32 0, i32 2
  store i64 %210, i64* %212, align 8
  br label %213

213:                                              ; preds = %209, %198
  %214 = load %struct.sysentvec*, %struct.sysentvec** %5, align 8
  %215 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %214, i32 0, i32 3
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* %14, align 8
  %218 = sub nsw i64 %216, %217
  store i64 %218, i64* %12, align 8
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %220 = load i64, i64* %12, align 8
  %221 = load i64, i64* %14, align 8
  %222 = trunc i64 %221 to i32
  %223 = load i32*, i32** %9, align 8
  %224 = icmp ne i32* %223, null
  br i1 %224, label %225, label %234

225:                                              ; preds = %213
  %226 = load %struct.image_params*, %struct.image_params** %4, align 8
  %227 = getelementptr inbounds %struct.image_params, %struct.image_params* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %234

230:                                              ; preds = %225
  %231 = load %struct.image_params*, %struct.image_params** %4, align 8
  %232 = getelementptr inbounds %struct.image_params, %struct.image_params* %231, i32 0, i32 3
  %233 = load i64, i64* %232, align 8
  br label %238

234:                                              ; preds = %225, %213
  %235 = load %struct.sysentvec*, %struct.sysentvec** %5, align 8
  %236 = getelementptr inbounds %struct.sysentvec, %struct.sysentvec* %235, i32 0, i32 4
  %237 = load i64, i64* %236, align 8
  br label %238

238:                                              ; preds = %234, %230
  %239 = phi i64 [ %233, %230 ], [ %237, %234 ]
  %240 = load i32, i32* @VM_PROT_ALL, align 4
  %241 = load i32, i32* @MAP_STACK_GROWS_DOWN, align 4
  %242 = call i32 @vm_map_stack(%struct.TYPE_11__* %219, i64 %220, i32 %222, i64 %239, i32 %240, i32 %241)
  store i32 %242, i32* %6, align 4
  %243 = load i32, i32* %6, align 4
  %244 = load i32, i32* @KERN_SUCCESS, align 4
  %245 = icmp ne i32 %243, %244
  br i1 %245, label %246, label %249

246:                                              ; preds = %238
  %247 = load i32, i32* %6, align 4
  %248 = call i32 @vm_mmap_to_errno(i32 %247)
  store i32 %248, i32* %3, align 4
  br label %259

249:                                              ; preds = %238
  %250 = load i32, i32* @sgrowsiz, align 4
  %251 = load i32, i32* @PAGE_SHIFT, align 4
  %252 = ashr i32 %250, %251
  %253 = load %struct.vmspace*, %struct.vmspace** %8, align 8
  %254 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %253, i32 0, i32 1
  store i32 %252, i32* %254, align 4
  %255 = load i64, i64* %12, align 8
  %256 = inttoptr i64 %255 to i8*
  %257 = load %struct.vmspace*, %struct.vmspace** %8, align 8
  %258 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %257, i32 0, i32 2
  store i8* %256, i8** %258, align 8
  store i32 0, i32* %3, align 4
  br label %259

259:                                              ; preds = %249, %246, %143, %98
  %260 = load i32, i32* %3, align 4
  ret i32 %260
}

declare dso_local i32 @EVENTHANDLER_DIRECT_INVOKE(i32, %struct.proc*, %struct.image_params*) #1

declare dso_local i64 @MAX(i64, i32) #1

declare dso_local i64 @vm_map_min(%struct.TYPE_11__*) #1

declare dso_local i64 @vm_map_max(%struct.TYPE_11__*) #1

declare dso_local i64 @cpu_exec_vmspace_reuse(%struct.proc*, %struct.TYPE_11__*) #1

declare dso_local i32 @shmexit(%struct.vmspace*) #1

declare dso_local i32 @pmap_remove_pages(i32) #1

declare dso_local i32 @vmspace_pmap(%struct.vmspace*) #1

declare dso_local i32 @vm_map_remove(%struct.TYPE_11__*, i64, i64) #1

declare dso_local i32 @vm_map_lock(%struct.TYPE_11__*) #1

declare dso_local i32 @vm_map_modflags(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @vm_map_unlock(%struct.TYPE_11__*) #1

declare dso_local i32 @vmspace_exec(%struct.proc*, i64, i64) #1

declare dso_local i32 @vm_object_reference(i32*) #1

declare dso_local i32 @vm_map_fixed(%struct.TYPE_11__*, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vm_object_deallocate(i32*) #1

declare dso_local i32 @vm_mmap_to_errno(i32) #1

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i32 @PROC_LOCK(%struct.proc*) #1

declare dso_local i32 @lim_rlimit_proc(%struct.proc*, i32, %struct.rlimit*) #1

declare dso_local i32 @PROC_UNLOCK(%struct.proc*) #1

declare dso_local i32 @kern_setrlimit(i32, i32, %struct.rlimit*) #1

declare dso_local i64 @lim_cur(i32, i32) #1

declare dso_local i32 @vm_map_stack(%struct.TYPE_11__*, i64, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
