; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_growstack.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vm_map_growstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proc = type { i32, i32, %struct.TYPE_24__*, i32*, %struct.vmspace* }
%struct.TYPE_24__ = type { i64 }
%struct.vmspace = type { i32, i64, %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i32, i64, i32, i32 }
%struct.TYPE_26__ = type { i32, i64, i64, i64, i32, %struct.TYPE_23__, %struct.ucred*, i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_27__* }
%struct.TYPE_27__ = type { %struct.ucred* }
%struct.ucred = type { i32 }

@curproc = common dso_local global %struct.proc* null, align 8
@initproc = common dso_local global %struct.proc* null, align 8
@KERN_FAILURE = common dso_local global i32 0, align 4
@curthread = common dso_local global i32 0, align 4
@RLIMIT_MEMLOCK = common dso_local global i32 0, align 4
@RLIMIT_STACK = common dso_local global i32 0, align 4
@RLIMIT_VMEM = common dso_local global i32 0, align 4
@MAP_ENTRY_GUARD = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@MAP_ENTRY_STACK_GAP_DN = common dso_local global i32 0, align 4
@MAP_ENTRY_GROWS_DOWN = common dso_local global i32 0, align 4
@MAP_ENTRY_STACK_GAP_UP = common dso_local global i32 0, align 4
@MAP_ENTRY_GROWS_UP = common dso_local global i32 0, align 4
@P2_STKGAP_DISABLE = common dso_local global i32 0, align 4
@NT_FREEBSD_FCTL_STKGAP_DISABLE = common dso_local global i32 0, align 4
@KERN_NO_SPACE = common dso_local global i32 0, align 4
@sgrowsiz = common dso_local global i32 0, align 4
@old_mlock = common dso_local global i32 0, align 4
@MAP_WIREFUTURE = common dso_local global i32 0, align 4
@MAP_STACK_GROWS_DOWN = common dso_local global i32 0, align 4
@VM_PROT_NONE = common dso_local global i32 0, align 4
@MAP_CREATE_GUARD = common dso_local global i32 0, align 4
@MAP_CREATE_STACK_GAP_DN = common dso_local global i32 0, align 4
@VM_MAP_WIRE_USER = common dso_local global i32 0, align 4
@VM_MAP_WIRE_NOHOLES = common dso_local global i32 0, align 4
@RACCT_MEMLOCK = common dso_local global i32 0, align 4
@RACCT_STACK = common dso_local global i32 0, align 4
@RACCT_VMEM = common dso_local global i32 0, align 4
@racct_enable = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, i64, %struct.TYPE_26__*)* @vm_map_growstack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vm_map_growstack(%struct.TYPE_25__* %0, i64 %1, %struct.TYPE_26__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_25__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_26__*, align 8
  %9 = alloca %struct.proc*, align 8
  %10 = alloca %struct.vmspace*, align 8
  %11 = alloca %struct.ucred*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_26__* %2, %struct.TYPE_26__** %7, align 8
  %26 = load %struct.proc*, %struct.proc** @curproc, align 8
  store %struct.proc* %26, %struct.proc** %9, align 8
  %27 = load %struct.proc*, %struct.proc** %9, align 8
  %28 = getelementptr inbounds %struct.proc, %struct.proc* %27, i32 0, i32 4
  %29 = load %struct.vmspace*, %struct.vmspace** %28, align 8
  store %struct.vmspace* %29, %struct.vmspace** %10, align 8
  %30 = load %struct.proc*, %struct.proc** %9, align 8
  %31 = load %struct.proc*, %struct.proc** @initproc, align 8
  %32 = icmp ne %struct.proc* %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %3
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %35 = load %struct.proc*, %struct.proc** %9, align 8
  %36 = getelementptr inbounds %struct.proc, %struct.proc* %35, i32 0, i32 4
  %37 = load %struct.vmspace*, %struct.vmspace** %36, align 8
  %38 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %37, i32 0, i32 2
  %39 = icmp ne %struct.TYPE_25__* %34, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = load %struct.proc*, %struct.proc** %9, align 8
  %42 = getelementptr inbounds %struct.proc, %struct.proc* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = icmp eq i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %40, %33
  %46 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %46, i32* %4, align 4
  br label %522

47:                                               ; preds = %40, %3
  %48 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @MPASS(i32 %53)
  %55 = load i32, i32* @curthread, align 4
  %56 = load i32, i32* @RLIMIT_MEMLOCK, align 4
  %57 = call i64 @lim_cur(i32 %55, i32 %56)
  store i64 %57, i64* %18, align 8
  %58 = load i32, i32* @curthread, align 4
  %59 = load i32, i32* @RLIMIT_STACK, align 4
  %60 = call i64 @lim_cur(i32 %58, i32 %59)
  store i64 %60, i64* %19, align 8
  %61 = load i32, i32* @curthread, align 4
  %62 = load i32, i32* @RLIMIT_VMEM, align 4
  %63 = call i64 @lim_cur(i32 %61, i32 %62)
  store i64 %63, i64* %20, align 8
  br label %64

64:                                               ; preds = %291, %47
  %65 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %66 = icmp eq %struct.TYPE_26__* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @vm_map_lookup_entry(%struct.TYPE_25__* %68, i64 %69, %struct.TYPE_26__** %7)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %74, label %72

72:                                               ; preds = %67
  %73 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %73, i32* %4, align 4
  br label %522

74:                                               ; preds = %67, %64
  %75 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @MAP_ENTRY_GUARD, align 4
  %79 = and i32 %77, %78
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %82, i32* %4, align 4
  br label %522

83:                                               ; preds = %74
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @MAP_ENTRY_STACK_GAP_DN, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %116

90:                                               ; preds = %83
  %91 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %92 = call %struct.TYPE_26__* @vm_map_entry_succ(%struct.TYPE_26__* %91)
  store %struct.TYPE_26__* %92, %struct.TYPE_26__** %8, align 8
  %93 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %94 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @MAP_ENTRY_GROWS_DOWN, align 4
  %97 = and i32 %95, %96
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %107, label %99

99:                                               ; preds = %90
  %100 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %100, i32 0, i32 1
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %102, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %99, %90
  %108 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %108, i32* %4, align 4
  br label %522

109:                                              ; preds = %99
  %110 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %111 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %6, align 8
  %114 = sub nsw i64 %112, %113
  %115 = call i64 @round_page(i64 %114)
  store i64 %115, i64* %15, align 8
  store i32 1, i32* %24, align 4
  br label %153

116:                                              ; preds = %83
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @MAP_ENTRY_STACK_GAP_UP, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %150

123:                                              ; preds = %116
  %124 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %125 = call %struct.TYPE_26__* @vm_map_entry_pred(%struct.TYPE_26__* %124)
  store %struct.TYPE_26__* %125, %struct.TYPE_26__** %8, align 8
  %126 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %127 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @MAP_ENTRY_GROWS_UP, align 4
  %130 = and i32 %128, %129
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %140, label %132

132:                                              ; preds = %123
  %133 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %133, i32 0, i32 2
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %135, %138
  br i1 %139, label %140, label %142

140:                                              ; preds = %132, %123
  %141 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %141, i32* %4, align 4
  br label %522

142:                                              ; preds = %132
  %143 = load i64, i64* %6, align 8
  %144 = add nsw i64 %143, 1
  %145 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %145, i32 0, i32 2
  %147 = load i64, i64* %146, align 8
  %148 = sub nsw i64 %144, %147
  %149 = call i64 @round_page(i64 %148)
  store i64 %149, i64* %15, align 8
  store i32 0, i32* %24, align 4
  br label %152

150:                                              ; preds = %116
  %151 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %151, i32* %4, align 4
  br label %522

152:                                              ; preds = %142
  br label %153

153:                                              ; preds = %152, %109
  %154 = load %struct.proc*, %struct.proc** @curproc, align 8
  %155 = getelementptr inbounds %struct.proc, %struct.proc* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @P2_STKGAP_DISABLE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %167, label %160

160:                                              ; preds = %153
  %161 = load %struct.proc*, %struct.proc** @curproc, align 8
  %162 = getelementptr inbounds %struct.proc, %struct.proc* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @NT_FREEBSD_FCTL_STKGAP_DISABLE, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %160, %153
  br label %172

168:                                              ; preds = %160
  %169 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  br label %172

172:                                              ; preds = %168, %167
  %173 = phi i64 [ 0, %167 ], [ %171, %168 ]
  store i64 %173, i64* %16, align 8
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %177, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = sub nsw i64 %176, %179
  store i64 %180, i64* %17, align 8
  %181 = load i64, i64* %16, align 8
  %182 = load i64, i64* %17, align 8
  %183 = icmp sgt i64 %181, %182
  br i1 %183, label %184, label %186

184:                                              ; preds = %172
  %185 = load i32, i32* @KERN_NO_SPACE, align 4
  store i32 %185, i32* %4, align 4
  br label %522

186:                                              ; preds = %172
  %187 = load i64, i64* %16, align 8
  %188 = load i64, i64* %17, align 8
  %189 = sub nsw i64 %188, %187
  store i64 %189, i64* %17, align 8
  %190 = load i64, i64* %15, align 8
  %191 = load i64, i64* %17, align 8
  %192 = icmp sgt i64 %190, %191
  br i1 %192, label %193, label %195

193:                                              ; preds = %186
  %194 = load i32, i32* @KERN_NO_SPACE, align 4
  store i32 %194, i32* %4, align 4
  br label %522

195:                                              ; preds = %186
  %196 = load i64, i64* %6, align 8
  %197 = load %struct.vmspace*, %struct.vmspace** %10, align 8
  %198 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %197, i32 0, i32 1
  %199 = load i64, i64* %198, align 8
  %200 = icmp sge i64 %196, %199
  br i1 %200, label %201, label %209

201:                                              ; preds = %195
  %202 = load i64, i64* %6, align 8
  %203 = load %struct.proc*, %struct.proc** %9, align 8
  %204 = getelementptr inbounds %struct.proc, %struct.proc* %203, i32 0, i32 2
  %205 = load %struct.TYPE_24__*, %struct.TYPE_24__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp slt i64 %202, %207
  br label %209

209:                                              ; preds = %201, %195
  %210 = phi i1 [ false, %195 ], [ %208, %201 ]
  %211 = zext i1 %210 to i32
  store i32 %211, i32* %25, align 4
  %212 = load i32, i32* %25, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %225

214:                                              ; preds = %209
  %215 = load %struct.vmspace*, %struct.vmspace** %10, align 8
  %216 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i64 @ctob(i32 %217)
  %219 = load i64, i64* %15, align 8
  %220 = add nsw i64 %218, %219
  %221 = load i64, i64* %19, align 8
  %222 = icmp sgt i64 %220, %221
  br i1 %222, label %223, label %225

223:                                              ; preds = %214
  %224 = load i32, i32* @KERN_NO_SPACE, align 4
  store i32 %224, i32* %4, align 4
  br label %522

225:                                              ; preds = %214, %209
  %226 = load i64, i64* %15, align 8
  %227 = load i32, i32* @sgrowsiz, align 4
  %228 = call i64 @roundup(i64 %226, i32 %227)
  store i64 %228, i64* %15, align 8
  %229 = load i64, i64* %15, align 8
  %230 = load i64, i64* %17, align 8
  %231 = icmp sgt i64 %229, %230
  br i1 %231, label %232, label %234

232:                                              ; preds = %225
  %233 = load i64, i64* %17, align 8
  store i64 %233, i64* %15, align 8
  br label %234

234:                                              ; preds = %232, %225
  %235 = load i32, i32* %25, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %254

237:                                              ; preds = %234
  %238 = load %struct.vmspace*, %struct.vmspace** %10, align 8
  %239 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = call i64 @ctob(i32 %240)
  %242 = load i64, i64* %15, align 8
  %243 = add nsw i64 %241, %242
  %244 = load i64, i64* %19, align 8
  %245 = icmp sgt i64 %243, %244
  br i1 %245, label %246, label %254

246:                                              ; preds = %237
  %247 = load i64, i64* %19, align 8
  %248 = call i64 @trunc_page(i64 %247)
  %249 = load %struct.vmspace*, %struct.vmspace** %10, align 8
  %250 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = call i64 @ctob(i32 %251)
  %253 = sub nsw i64 %248, %252
  store i64 %253, i64* %15, align 8
  br label %254

254:                                              ; preds = %246, %237, %234
  %255 = load i32, i32* @old_mlock, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %277, label %257

257:                                              ; preds = %254
  %258 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = load i32, i32* @MAP_WIREFUTURE, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %277

264:                                              ; preds = %257
  %265 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = call i32 @pmap_wired_count(i32 %267)
  %269 = call i64 @ptoa(i32 %268)
  %270 = load i64, i64* %15, align 8
  %271 = add nsw i64 %269, %270
  %272 = load i64, i64* %18, align 8
  %273 = icmp sgt i64 %271, %272
  br i1 %273, label %274, label %276

274:                                              ; preds = %264
  %275 = load i32, i32* @KERN_NO_SPACE, align 4
  store i32 %275, i32* %21, align 4
  br label %520

276:                                              ; preds = %264
  br label %277

277:                                              ; preds = %276, %257, %254
  %278 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %278, i32 0, i32 1
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* %15, align 8
  %282 = add nsw i64 %280, %281
  %283 = load i64, i64* %20, align 8
  %284 = icmp sgt i64 %282, %283
  br i1 %284, label %285, label %287

285:                                              ; preds = %277
  %286 = load i32, i32* @KERN_NO_SPACE, align 4
  store i32 %286, i32* %21, align 4
  br label %520

287:                                              ; preds = %277
  %288 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %289 = call i64 @vm_map_lock_upgrade(%struct.TYPE_25__* %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %294

291:                                              ; preds = %287
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %7, align 8
  %292 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %293 = call i32 @vm_map_lock_read(%struct.TYPE_25__* %292)
  br label %64

294:                                              ; preds = %287
  %295 = load i32, i32* %24, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %381

297:                                              ; preds = %294
  %298 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %298, i32 0, i32 2
  %300 = load i64, i64* %299, align 8
  %301 = load i64, i64* %15, align 8
  %302 = sub nsw i64 %300, %301
  store i64 %302, i64* %14, align 8
  %303 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %304 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %303, i32 0, i32 1
  %305 = load i64, i64* %304, align 8
  %306 = load i64, i64* %15, align 8
  %307 = add nsw i64 %305, %306
  %308 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %309 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %308, i32 0, i32 2
  %310 = load i64, i64* %309, align 8
  %311 = icmp eq i64 %307, %310
  br i1 %311, label %312, label %322

312:                                              ; preds = %297
  %313 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %314 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %313, i32 0, i32 1
  %315 = load i64, i64* %314, align 8
  store i64 %315, i64* %13, align 8
  %316 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %316, i32 0, i32 2
  %318 = load i64, i64* %317, align 8
  store i64 %318, i64* %12, align 8
  %319 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %320 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %321 = call i32 @vm_map_entry_delete(%struct.TYPE_25__* %319, %struct.TYPE_26__* %320)
  store i32 1, i32* %23, align 4
  br label %339

322:                                              ; preds = %297
  %323 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %324 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %326, i32 0, i32 2
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* %15, align 8
  %330 = sub nsw i64 %328, %329
  %331 = icmp slt i64 %325, %330
  %332 = zext i1 %331 to i32
  %333 = call i32 @MPASS(i32 %332)
  %334 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %335 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %336 = load i64, i64* %15, align 8
  %337 = sub nsw i64 0, %336
  %338 = call i32 @vm_map_entry_resize(%struct.TYPE_25__* %334, %struct.TYPE_26__* %335, i64 %337)
  store i32 0, i32* %23, align 4
  br label %339

339:                                              ; preds = %322, %312
  %340 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %341 = load i64, i64* %14, align 8
  %342 = load i64, i64* %14, align 8
  %343 = load i64, i64* %15, align 8
  %344 = add nsw i64 %342, %343
  %345 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %346 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %345, i32 0, i32 8
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %349 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %348, i32 0, i32 7
  %350 = load i32, i32* %349, align 8
  %351 = load i32, i32* @MAP_STACK_GROWS_DOWN, align 4
  %352 = call i32 @vm_map_insert(%struct.TYPE_25__* %340, i32* null, i32 0, i64 %341, i64 %344, i32 %347, i32 %350, i32 %351)
  store i32 %352, i32* %21, align 4
  %353 = load i32, i32* %21, align 4
  %354 = load i32, i32* @KERN_SUCCESS, align 4
  %355 = icmp ne i32 %353, %354
  br i1 %355, label %356, label %380

356:                                              ; preds = %339
  %357 = load i32, i32* %23, align 4
  %358 = icmp ne i32 %357, 0
  br i1 %358, label %359, label %374

359:                                              ; preds = %356
  %360 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %361 = load i64, i64* %13, align 8
  %362 = load i64, i64* %12, align 8
  %363 = load i32, i32* @VM_PROT_NONE, align 4
  %364 = load i32, i32* @VM_PROT_NONE, align 4
  %365 = load i32, i32* @MAP_CREATE_GUARD, align 4
  %366 = load i32, i32* @MAP_CREATE_STACK_GAP_DN, align 4
  %367 = or i32 %365, %366
  %368 = call i32 @vm_map_insert(%struct.TYPE_25__* %360, i32* null, i32 0, i64 %361, i64 %362, i32 %363, i32 %364, i32 %367)
  store i32 %368, i32* %22, align 4
  %369 = load i32, i32* %22, align 4
  %370 = load i32, i32* @KERN_SUCCESS, align 4
  %371 = icmp eq i32 %369, %370
  %372 = zext i1 %371 to i32
  %373 = call i32 @MPASS(i32 %372)
  br label %379

374:                                              ; preds = %356
  %375 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %376 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %377 = load i64, i64* %15, align 8
  %378 = call i32 @vm_map_entry_resize(%struct.TYPE_25__* %375, %struct.TYPE_26__* %376, i64 %377)
  br label %379

379:                                              ; preds = %374, %359
  br label %380

380:                                              ; preds = %379, %339
  br label %480

381:                                              ; preds = %294
  %382 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %383 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %382, i32 0, i32 2
  %384 = load i64, i64* %383, align 8
  store i64 %384, i64* %14, align 8
  %385 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %386 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %385, i32 0, i32 6
  %387 = load %struct.ucred*, %struct.ucred** %386, align 8
  store %struct.ucred* %387, %struct.ucred** %11, align 8
  %388 = load %struct.ucred*, %struct.ucred** %11, align 8
  %389 = icmp eq %struct.ucred* %388, null
  br i1 %389, label %390, label %403

390:                                              ; preds = %381
  %391 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %392 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %391, i32 0, i32 5
  %393 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %392, i32 0, i32 0
  %394 = load %struct.TYPE_27__*, %struct.TYPE_27__** %393, align 8
  %395 = icmp ne %struct.TYPE_27__* %394, null
  br i1 %395, label %396, label %403

396:                                              ; preds = %390
  %397 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %398 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %397, i32 0, i32 5
  %399 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %398, i32 0, i32 0
  %400 = load %struct.TYPE_27__*, %struct.TYPE_27__** %399, align 8
  %401 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %400, i32 0, i32 0
  %402 = load %struct.ucred*, %struct.ucred** %401, align 8
  store %struct.ucred* %402, %struct.ucred** %11, align 8
  br label %403

403:                                              ; preds = %396, %390, %381
  %404 = load %struct.ucred*, %struct.ucred** %11, align 8
  %405 = icmp ne %struct.ucred* %404, null
  br i1 %405, label %406, label %413

406:                                              ; preds = %403
  %407 = load i64, i64* %15, align 8
  %408 = load %struct.ucred*, %struct.ucred** %11, align 8
  %409 = call i32 @swap_reserve_by_cred(i64 %407, %struct.ucred* %408)
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %413, label %411

411:                                              ; preds = %406
  %412 = load i32, i32* @KERN_NO_SPACE, align 4
  store i32 %412, i32* %21, align 4
  br label %479

413:                                              ; preds = %406, %403
  %414 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %415 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %414, i32 0, i32 5
  %416 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %415, i32 0, i32 0
  %417 = load %struct.TYPE_27__*, %struct.TYPE_27__** %416, align 8
  %418 = icmp eq %struct.TYPE_27__* %417, null
  br i1 %418, label %440, label %419

419:                                              ; preds = %413
  %420 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %421 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %420, i32 0, i32 5
  %422 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %421, i32 0, i32 0
  %423 = load %struct.TYPE_27__*, %struct.TYPE_27__** %422, align 8
  %424 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %425 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %424, i32 0, i32 4
  %426 = load i32, i32* %425, align 8
  %427 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %428 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %427, i32 0, i32 2
  %429 = load i64, i64* %428, align 8
  %430 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %431 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %430, i32 0, i32 1
  %432 = load i64, i64* %431, align 8
  %433 = sub nsw i64 %429, %432
  %434 = load i64, i64* %15, align 8
  %435 = load %struct.ucred*, %struct.ucred** %11, align 8
  %436 = icmp ne %struct.ucred* %435, null
  %437 = zext i1 %436 to i32
  %438 = call i64 @vm_object_coalesce(%struct.TYPE_27__* %423, i32 %426, i64 %433, i64 %434, i32 %437)
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %476

440:                                              ; preds = %419, %413
  %441 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %442 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %441, i32 0, i32 1
  %443 = load i64, i64* %442, align 8
  %444 = load i64, i64* %15, align 8
  %445 = add nsw i64 %443, %444
  %446 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %447 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %446, i32 0, i32 2
  %448 = load i64, i64* %447, align 8
  %449 = icmp eq i64 %445, %448
  br i1 %449, label %450, label %458

450:                                              ; preds = %440
  %451 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %452 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %453 = call i32 @vm_map_entry_delete(%struct.TYPE_25__* %451, %struct.TYPE_26__* %452)
  %454 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %455 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %456 = load i64, i64* %15, align 8
  %457 = call i32 @vm_map_entry_resize(%struct.TYPE_25__* %454, %struct.TYPE_26__* %455, i64 %456)
  br label %469

458:                                              ; preds = %440
  %459 = load i64, i64* %15, align 8
  %460 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %461 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %460, i32 0, i32 1
  %462 = load i64, i64* %461, align 8
  %463 = add nsw i64 %462, %459
  store i64 %463, i64* %461, align 8
  %464 = load i64, i64* %15, align 8
  %465 = load %struct.TYPE_26__*, %struct.TYPE_26__** %8, align 8
  %466 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %465, i32 0, i32 2
  %467 = load i64, i64* %466, align 8
  %468 = add nsw i64 %467, %464
  store i64 %468, i64* %466, align 8
  br label %469

469:                                              ; preds = %458, %450
  %470 = load i64, i64* %15, align 8
  %471 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %472 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %471, i32 0, i32 1
  %473 = load i64, i64* %472, align 8
  %474 = add nsw i64 %473, %470
  store i64 %474, i64* %472, align 8
  %475 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %475, i32* %21, align 4
  br label %478

476:                                              ; preds = %419
  %477 = load i32, i32* @KERN_FAILURE, align 4
  store i32 %477, i32* %21, align 4
  br label %478

478:                                              ; preds = %476, %469
  br label %479

479:                                              ; preds = %478, %411
  br label %480

480:                                              ; preds = %479, %380
  %481 = load i32, i32* %21, align 4
  %482 = load i32, i32* @KERN_SUCCESS, align 4
  %483 = icmp eq i32 %481, %482
  br i1 %483, label %484, label %496

484:                                              ; preds = %480
  %485 = load i32, i32* %25, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %496

487:                                              ; preds = %484
  %488 = load i64, i64* %15, align 8
  %489 = call i64 @btoc(i64 %488)
  %490 = load %struct.vmspace*, %struct.vmspace** %10, align 8
  %491 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %490, i32 0, i32 0
  %492 = load i32, i32* %491, align 8
  %493 = sext i32 %492 to i64
  %494 = add nsw i64 %493, %489
  %495 = trunc i64 %494 to i32
  store i32 %495, i32* %491, align 8
  br label %496

496:                                              ; preds = %487, %484, %480
  %497 = load i32, i32* %21, align 4
  %498 = load i32, i32* @KERN_SUCCESS, align 4
  %499 = icmp eq i32 %497, %498
  br i1 %499, label %500, label %517

500:                                              ; preds = %496
  %501 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %502 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %501, i32 0, i32 0
  %503 = load i32, i32* %502, align 8
  %504 = load i32, i32* @MAP_WIREFUTURE, align 4
  %505 = and i32 %503, %504
  %506 = icmp ne i32 %505, 0
  br i1 %506, label %507, label %517

507:                                              ; preds = %500
  %508 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %509 = load i64, i64* %14, align 8
  %510 = load i64, i64* %14, align 8
  %511 = load i64, i64* %15, align 8
  %512 = add nsw i64 %510, %511
  %513 = load i32, i32* @VM_MAP_WIRE_USER, align 4
  %514 = load i32, i32* @VM_MAP_WIRE_NOHOLES, align 4
  %515 = or i32 %513, %514
  %516 = call i32 @vm_map_wire_locked(%struct.TYPE_25__* %508, i64 %509, i64 %512, i32 %515)
  store i32 %516, i32* %21, align 4
  br label %517

517:                                              ; preds = %507, %500, %496
  %518 = load %struct.TYPE_25__*, %struct.TYPE_25__** %5, align 8
  %519 = call i32 @vm_map_lock_downgrade(%struct.TYPE_25__* %518)
  br label %520

520:                                              ; preds = %517, %285, %274
  %521 = load i32, i32* %21, align 4
  store i32 %521, i32* %4, align 4
  br label %522

522:                                              ; preds = %520, %223, %193, %184, %150, %140, %107, %81, %72, %45
  %523 = load i32, i32* %4, align 4
  ret i32 %523
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @lim_cur(i32, i32) #1

declare dso_local i32 @vm_map_lookup_entry(%struct.TYPE_25__*, i64, %struct.TYPE_26__**) #1

declare dso_local %struct.TYPE_26__* @vm_map_entry_succ(%struct.TYPE_26__*) #1

declare dso_local i64 @round_page(i64) #1

declare dso_local %struct.TYPE_26__* @vm_map_entry_pred(%struct.TYPE_26__*) #1

declare dso_local i64 @ctob(i32) #1

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i64 @trunc_page(i64) #1

declare dso_local i64 @ptoa(i32) #1

declare dso_local i32 @pmap_wired_count(i32) #1

declare dso_local i64 @vm_map_lock_upgrade(%struct.TYPE_25__*) #1

declare dso_local i32 @vm_map_lock_read(%struct.TYPE_25__*) #1

declare dso_local i32 @vm_map_entry_delete(%struct.TYPE_25__*, %struct.TYPE_26__*) #1

declare dso_local i32 @vm_map_entry_resize(%struct.TYPE_25__*, %struct.TYPE_26__*, i64) #1

declare dso_local i32 @vm_map_insert(%struct.TYPE_25__*, i32*, i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @swap_reserve_by_cred(i64, %struct.ucred*) #1

declare dso_local i64 @vm_object_coalesce(%struct.TYPE_27__*, i32, i64, i64, i32) #1

declare dso_local i64 @btoc(i64) #1

declare dso_local i32 @vm_map_wire_locked(%struct.TYPE_25__*, i64, i64, i32) #1

declare dso_local i32 @vm_map_lock_downgrade(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
