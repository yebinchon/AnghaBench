; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_imgact_aout.c_exec_aout_imgact.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_imgact_aout.c_exec_aout_imgact.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.image_params = type { i64, %struct.TYPE_9__*, i64, i32, i32*, %struct.TYPE_8__*, i32, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, %struct.vmspace* }
%struct.vmspace = type { i64, i64, i8*, i8*, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.exec = type { i32, i64, i64, i32, i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@MID_ZERO = common dso_local global i32 0, align 4
@aout_sysvec = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4
@maxtsiz = common dso_local global i64 0, align 8
@RLIMIT_DATA = common dso_local global i32 0, align 4
@RACCT_DATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LK_SHARED = common dso_local global i32 0, align 4
@LK_RETRY = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@VM_PROT_ALL = common dso_local global i32 0, align 4
@MAP_COPY_ON_WRITE = common dso_local global i32 0, align 4
@MAP_PREFAULT = common dso_local global i32 0, align 4
@MAP_VN_EXEC = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.image_params*)* @exec_aout_imgact to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exec_aout_imgact(%struct.image_params* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.image_params*, align 8
  %4 = alloca %struct.exec*, align 8
  %5 = alloca %struct.vmspace*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.image_params* %0, %struct.image_params** %3, align 8
  %14 = load %struct.image_params*, %struct.image_params** %3, align 8
  %15 = getelementptr inbounds %struct.image_params, %struct.image_params* %14, i32 0, i32 7
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.exec*
  store %struct.exec* %17, %struct.exec** %4, align 8
  %18 = load %struct.exec*, %struct.exec** %4, align 8
  %19 = getelementptr inbounds %struct.exec, %struct.exec* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = ashr i32 %20, 16
  %22 = and i32 %21, 255
  %23 = icmp ne i32 %22, 134
  br i1 %23, label %24, label %40

24:                                               ; preds = %1
  %25 = load %struct.exec*, %struct.exec** %4, align 8
  %26 = getelementptr inbounds %struct.exec, %struct.exec* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = ashr i32 %27, 16
  %29 = and i32 %28, 255
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %24
  %32 = load %struct.exec*, %struct.exec** %4, align 8
  %33 = getelementptr inbounds %struct.exec, %struct.exec* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @ntohl(i32 %34)
  %36 = ashr i32 %35, 16
  %37 = and i32 %36, 255
  %38 = icmp ne i32 %37, 134
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  store i32 -1, i32* %2, align 4
  br label %361

40:                                               ; preds = %31, %24, %1
  %41 = load %struct.exec*, %struct.exec** %4, align 8
  %42 = getelementptr inbounds %struct.exec, %struct.exec* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = and i32 %43, 65535
  switch i32 %44, label %65 [
    i32 128, label %45
    i32 129, label %54
  ]

45:                                               ; preds = %40
  store i64 0, i64* %10, align 8
  %46 = load %struct.exec*, %struct.exec** %4, align 8
  %47 = getelementptr inbounds %struct.exec, %struct.exec* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %45
  %51 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %51, i64* %11, align 8
  br label %53

52:                                               ; preds = %45
  store i64 0, i64* %11, align 8
  br label %53

53:                                               ; preds = %52, %50
  br label %75

54:                                               ; preds = %40
  %55 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %55, i64* %10, align 8
  store i64 0, i64* %11, align 8
  %56 = load %struct.exec*, %struct.exec** %4, align 8
  %57 = call i32 @N_GETMID(%struct.exec* byval(%struct.exec) align 8 %56)
  %58 = load i32, i32* @MID_ZERO, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @aout_sysvec, i32 0, i32 0), align 4
  %62 = load %struct.image_params*, %struct.image_params** %3, align 8
  %63 = getelementptr inbounds %struct.image_params, %struct.image_params* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %60, %54
  br label %75

65:                                               ; preds = %40
  %66 = load %struct.exec*, %struct.exec** %4, align 8
  %67 = getelementptr inbounds %struct.exec, %struct.exec* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @ntohl(i32 %68)
  %70 = and i32 %69, 65535
  switch i32 %70, label %73 [
    i32 128, label %71
    i32 129, label %71
  ]

71:                                               ; preds = %65, %65
  %72 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %72, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %74

73:                                               ; preds = %65
  store i32 -1, i32* %2, align 4
  br label %361

74:                                               ; preds = %71
  br label %75

75:                                               ; preds = %74, %64, %53
  %76 = load %struct.exec*, %struct.exec** %4, align 8
  %77 = getelementptr inbounds %struct.exec, %struct.exec* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = load i64, i64* @PAGE_SIZE, align 8
  %80 = call i64 @roundup(i32 %78, i64 %79)
  store i64 %80, i64* %12, align 8
  %81 = load %struct.exec*, %struct.exec** %4, align 8
  %82 = getelementptr inbounds %struct.exec, %struct.exec* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* %10, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %126, label %86

86:                                               ; preds = %75
  %87 = load %struct.exec*, %struct.exec** %4, align 8
  %88 = getelementptr inbounds %struct.exec, %struct.exec* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %10, align 8
  %91 = load %struct.exec*, %struct.exec** %4, align 8
  %92 = getelementptr inbounds %struct.exec, %struct.exec* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %90, %93
  %95 = icmp uge i64 %89, %94
  br i1 %95, label %126, label %96

96:                                               ; preds = %86
  %97 = load %struct.exec*, %struct.exec** %4, align 8
  %98 = getelementptr inbounds %struct.exec, %struct.exec* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @PAGE_MASK, align 4
  %101 = sext i32 %100 to i64
  %102 = and i64 %99, %101
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %126, label %104

104:                                              ; preds = %96
  %105 = load %struct.exec*, %struct.exec** %4, align 8
  %106 = getelementptr inbounds %struct.exec, %struct.exec* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @PAGE_MASK, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %126, label %111

111:                                              ; preds = %104
  %112 = load i64, i64* %10, align 8
  %113 = load %struct.exec*, %struct.exec** %4, align 8
  %114 = getelementptr inbounds %struct.exec, %struct.exec* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = add i64 %112, %115
  %117 = load %struct.exec*, %struct.exec** %4, align 8
  %118 = getelementptr inbounds %struct.exec, %struct.exec* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = add i64 %116, %120
  %122 = load i64, i64* %12, align 8
  %123 = add i64 %121, %122
  %124 = load i64, i64* @UINT_MAX, align 8
  %125 = icmp ugt i64 %123, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %111, %104, %96, %86, %75
  store i32 -1, i32* %2, align 4
  br label %361

127:                                              ; preds = %111
  %128 = load %struct.exec*, %struct.exec** %4, align 8
  %129 = getelementptr inbounds %struct.exec, %struct.exec* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = load %struct.exec*, %struct.exec** %4, align 8
  %133 = getelementptr inbounds %struct.exec, %struct.exec* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = add nsw i64 %131, %134
  %136 = load %struct.image_params*, %struct.image_params** %3, align 8
  %137 = getelementptr inbounds %struct.image_params, %struct.image_params* %136, i32 0, i32 5
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp ugt i64 %135, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %127
  %143 = load i32, i32* @EFAULT, align 4
  store i32 %143, i32* %2, align 4
  br label %361

144:                                              ; preds = %127
  %145 = load %struct.image_params*, %struct.image_params** %3, align 8
  %146 = getelementptr inbounds %struct.image_params, %struct.image_params* %145, i32 0, i32 1
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = call i32 @PROC_LOCK(%struct.TYPE_9__* %147)
  %149 = load %struct.exec*, %struct.exec** %4, align 8
  %150 = getelementptr inbounds %struct.exec, %struct.exec* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @maxtsiz, align 8
  %153 = icmp ugt i64 %151, %152
  br i1 %153, label %180, label %154

154:                                              ; preds = %144
  %155 = load %struct.exec*, %struct.exec** %4, align 8
  %156 = getelementptr inbounds %struct.exec, %struct.exec* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = sext i32 %157 to i64
  %159 = load i64, i64* %12, align 8
  %160 = add i64 %158, %159
  %161 = load %struct.image_params*, %struct.image_params** %3, align 8
  %162 = getelementptr inbounds %struct.image_params, %struct.image_params* %161, i32 0, i32 1
  %163 = load %struct.TYPE_9__*, %struct.TYPE_9__** %162, align 8
  %164 = load i32, i32* @RLIMIT_DATA, align 4
  %165 = call i64 @lim_cur_proc(%struct.TYPE_9__* %163, i32 %164)
  %166 = icmp ugt i64 %160, %165
  br i1 %166, label %180, label %167

167:                                              ; preds = %154
  %168 = load %struct.image_params*, %struct.image_params** %3, align 8
  %169 = getelementptr inbounds %struct.image_params, %struct.image_params* %168, i32 0, i32 1
  %170 = load %struct.TYPE_9__*, %struct.TYPE_9__** %169, align 8
  %171 = load i32, i32* @RACCT_DATA, align 4
  %172 = load %struct.exec*, %struct.exec** %4, align 8
  %173 = getelementptr inbounds %struct.exec, %struct.exec* %172, i32 0, i32 3
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = load i64, i64* %12, align 8
  %177 = add i64 %175, %176
  %178 = call i64 @racct_set(%struct.TYPE_9__* %170, i32 %171, i64 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %167, %154, %144
  %181 = load %struct.image_params*, %struct.image_params** %3, align 8
  %182 = getelementptr inbounds %struct.image_params, %struct.image_params* %181, i32 0, i32 1
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %182, align 8
  %184 = call i32 @PROC_UNLOCK(%struct.TYPE_9__* %183)
  %185 = load i32, i32* @ENOMEM, align 4
  store i32 %185, i32* %2, align 4
  br label %361

186:                                              ; preds = %167
  %187 = load %struct.image_params*, %struct.image_params** %3, align 8
  %188 = getelementptr inbounds %struct.image_params, %struct.image_params* %187, i32 0, i32 1
  %189 = load %struct.TYPE_9__*, %struct.TYPE_9__** %188, align 8
  %190 = call i32 @PROC_UNLOCK(%struct.TYPE_9__* %189)
  %191 = load %struct.image_params*, %struct.image_params** %3, align 8
  %192 = getelementptr inbounds %struct.image_params, %struct.image_params* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = call i32 @VOP_UNLOCK(i32 %193, i32 0)
  %195 = load %struct.image_params*, %struct.image_params** %3, align 8
  %196 = call i32 @exec_new_vmspace(%struct.image_params* %195, %struct.TYPE_10__* @aout_sysvec)
  store i32 %196, i32* %13, align 4
  %197 = load %struct.image_params*, %struct.image_params** %3, align 8
  %198 = getelementptr inbounds %struct.image_params, %struct.image_params* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = load i32, i32* @LK_SHARED, align 4
  %201 = load i32, i32* @LK_RETRY, align 4
  %202 = or i32 %200, %201
  %203 = call i32 @vn_lock(i32 %199, i32 %202)
  %204 = load i32, i32* %13, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %208

206:                                              ; preds = %186
  %207 = load i32, i32* %13, align 4
  store i32 %207, i32* %2, align 4
  br label %361

208:                                              ; preds = %186
  %209 = load %struct.image_params*, %struct.image_params** %3, align 8
  %210 = getelementptr inbounds %struct.image_params, %struct.image_params* %209, i32 0, i32 1
  %211 = load %struct.TYPE_9__*, %struct.TYPE_9__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %211, i32 0, i32 1
  %213 = load %struct.vmspace*, %struct.vmspace** %212, align 8
  store %struct.vmspace* %213, %struct.vmspace** %5, align 8
  %214 = load %struct.image_params*, %struct.image_params** %3, align 8
  %215 = getelementptr inbounds %struct.image_params, %struct.image_params* %214, i32 0, i32 4
  %216 = load i32*, i32** %215, align 8
  store i32* %216, i32** %7, align 8
  %217 = load %struct.vmspace*, %struct.vmspace** %5, align 8
  %218 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %217, i32 0, i32 4
  store i32* %218, i32** %6, align 8
  %219 = load i32*, i32** %6, align 8
  %220 = call i32 @vm_map_lock(i32* %219)
  %221 = load i32*, i32** %7, align 8
  %222 = call i32 @vm_object_reference(i32* %221)
  %223 = load i64, i64* %10, align 8
  %224 = load %struct.exec*, %struct.exec** %4, align 8
  %225 = getelementptr inbounds %struct.exec, %struct.exec* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = add i64 %223, %226
  store i64 %227, i64* %8, align 8
  %228 = load i32*, i32** %6, align 8
  %229 = load i32*, i32** %7, align 8
  %230 = load i64, i64* %11, align 8
  %231 = load i64, i64* %10, align 8
  %232 = load i64, i64* %8, align 8
  %233 = load i32, i32* @VM_PROT_READ, align 4
  %234 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %235 = or i32 %233, %234
  %236 = load i32, i32* @VM_PROT_ALL, align 4
  %237 = load i32, i32* @MAP_COPY_ON_WRITE, align 4
  %238 = load i32, i32* @MAP_PREFAULT, align 4
  %239 = or i32 %237, %238
  %240 = load i32, i32* @MAP_VN_EXEC, align 4
  %241 = or i32 %239, %240
  %242 = call i32 @vm_map_insert(i32* %228, i32* %229, i64 %230, i64 %231, i64 %232, i32 %235, i32 %236, i32 %241)
  store i32 %242, i32* %13, align 4
  %243 = load i32, i32* %13, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %251

245:                                              ; preds = %208
  %246 = load i32*, i32** %6, align 8
  %247 = call i32 @vm_map_unlock(i32* %246)
  %248 = load i32*, i32** %7, align 8
  %249 = call i32 @vm_object_deallocate(i32* %248)
  %250 = load i32, i32* %13, align 4
  store i32 %250, i32* %2, align 4
  br label %361

251:                                              ; preds = %208
  %252 = load %struct.image_params*, %struct.image_params** %3, align 8
  %253 = getelementptr inbounds %struct.image_params, %struct.image_params* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = call i32 @VOP_SET_TEXT_CHECKED(i32 %254)
  %256 = load i64, i64* %8, align 8
  %257 = load %struct.exec*, %struct.exec** %4, align 8
  %258 = getelementptr inbounds %struct.exec, %struct.exec* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 8
  %260 = sext i32 %259 to i64
  %261 = add i64 %256, %260
  store i64 %261, i64* %9, align 8
  %262 = load %struct.exec*, %struct.exec** %4, align 8
  %263 = getelementptr inbounds %struct.exec, %struct.exec* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 8
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %299

266:                                              ; preds = %251
  %267 = load i32*, i32** %7, align 8
  %268 = call i32 @vm_object_reference(i32* %267)
  %269 = load i32*, i32** %6, align 8
  %270 = load i32*, i32** %7, align 8
  %271 = load i64, i64* %11, align 8
  %272 = load %struct.exec*, %struct.exec** %4, align 8
  %273 = getelementptr inbounds %struct.exec, %struct.exec* %272, i32 0, i32 1
  %274 = load i64, i64* %273, align 8
  %275 = add i64 %271, %274
  %276 = load i64, i64* %8, align 8
  %277 = load i64, i64* %9, align 8
  %278 = load i32, i32* @VM_PROT_ALL, align 4
  %279 = load i32, i32* @VM_PROT_ALL, align 4
  %280 = load i32, i32* @MAP_COPY_ON_WRITE, align 4
  %281 = load i32, i32* @MAP_PREFAULT, align 4
  %282 = or i32 %280, %281
  %283 = load i32, i32* @MAP_VN_EXEC, align 4
  %284 = or i32 %282, %283
  %285 = call i32 @vm_map_insert(i32* %269, i32* %270, i64 %275, i64 %276, i64 %277, i32 %278, i32 %279, i32 %284)
  store i32 %285, i32* %13, align 4
  %286 = load i32, i32* %13, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %294

288:                                              ; preds = %266
  %289 = load i32*, i32** %6, align 8
  %290 = call i32 @vm_map_unlock(i32* %289)
  %291 = load i32*, i32** %7, align 8
  %292 = call i32 @vm_object_deallocate(i32* %291)
  %293 = load i32, i32* %13, align 4
  store i32 %293, i32* %2, align 4
  br label %361

294:                                              ; preds = %266
  %295 = load %struct.image_params*, %struct.image_params** %3, align 8
  %296 = getelementptr inbounds %struct.image_params, %struct.image_params* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 8
  %298 = call i32 @VOP_SET_TEXT_CHECKED(i32 %297)
  br label %299

299:                                              ; preds = %294, %251
  %300 = load i64, i64* %12, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %318

302:                                              ; preds = %299
  %303 = load i32*, i32** %6, align 8
  %304 = load i64, i64* %9, align 8
  %305 = load i64, i64* %9, align 8
  %306 = load i64, i64* %12, align 8
  %307 = add i64 %305, %306
  %308 = load i32, i32* @VM_PROT_ALL, align 4
  %309 = load i32, i32* @VM_PROT_ALL, align 4
  %310 = call i32 @vm_map_insert(i32* %303, i32* null, i64 0, i64 %304, i64 %307, i32 %308, i32 %309, i32 0)
  store i32 %310, i32* %13, align 4
  %311 = load i32, i32* %13, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %313, label %317

313:                                              ; preds = %302
  %314 = load i32*, i32** %6, align 8
  %315 = call i32 @vm_map_unlock(i32* %314)
  %316 = load i32, i32* %13, align 4
  store i32 %316, i32* %2, align 4
  br label %361

317:                                              ; preds = %302
  br label %318

318:                                              ; preds = %317, %299
  %319 = load i32*, i32** %6, align 8
  %320 = call i32 @vm_map_unlock(i32* %319)
  %321 = load %struct.exec*, %struct.exec** %4, align 8
  %322 = getelementptr inbounds %struct.exec, %struct.exec* %321, i32 0, i32 1
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* @PAGE_SHIFT, align 8
  %325 = ashr i64 %323, %324
  %326 = load %struct.vmspace*, %struct.vmspace** %5, align 8
  %327 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %326, i32 0, i32 0
  store i64 %325, i64* %327, align 8
  %328 = load %struct.exec*, %struct.exec** %4, align 8
  %329 = getelementptr inbounds %struct.exec, %struct.exec* %328, i32 0, i32 3
  %330 = load i32, i32* %329, align 8
  %331 = sext i32 %330 to i64
  %332 = load i64, i64* %12, align 8
  %333 = add i64 %331, %332
  %334 = load i64, i64* @PAGE_SHIFT, align 8
  %335 = lshr i64 %333, %334
  %336 = load %struct.vmspace*, %struct.vmspace** %5, align 8
  %337 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %336, i32 0, i32 1
  store i64 %335, i64* %337, align 8
  %338 = load i64, i64* %10, align 8
  %339 = inttoptr i64 %338 to i8*
  %340 = load %struct.vmspace*, %struct.vmspace** %5, align 8
  %341 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %340, i32 0, i32 3
  store i8* %339, i8** %341, align 8
  %342 = load i64, i64* %10, align 8
  %343 = load %struct.exec*, %struct.exec** %4, align 8
  %344 = getelementptr inbounds %struct.exec, %struct.exec* %343, i32 0, i32 1
  %345 = load i64, i64* %344, align 8
  %346 = add i64 %342, %345
  %347 = inttoptr i64 %346 to i8*
  %348 = load %struct.vmspace*, %struct.vmspace** %5, align 8
  %349 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %348, i32 0, i32 2
  store i8* %347, i8** %349, align 8
  %350 = load %struct.image_params*, %struct.image_params** %3, align 8
  %351 = getelementptr inbounds %struct.image_params, %struct.image_params* %350, i32 0, i32 2
  store i64 0, i64* %351, align 8
  %352 = load %struct.exec*, %struct.exec** %4, align 8
  %353 = getelementptr inbounds %struct.exec, %struct.exec* %352, i32 0, i32 2
  %354 = load i64, i64* %353, align 8
  %355 = load %struct.image_params*, %struct.image_params** %3, align 8
  %356 = getelementptr inbounds %struct.image_params, %struct.image_params* %355, i32 0, i32 0
  store i64 %354, i64* %356, align 8
  %357 = load %struct.image_params*, %struct.image_params** %3, align 8
  %358 = getelementptr inbounds %struct.image_params, %struct.image_params* %357, i32 0, i32 1
  %359 = load %struct.TYPE_9__*, %struct.TYPE_9__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %359, i32 0, i32 0
  store %struct.TYPE_10__* @aout_sysvec, %struct.TYPE_10__** %360, align 8
  store i32 0, i32* %2, align 4
  br label %361

361:                                              ; preds = %318, %313, %288, %245, %206, %180, %142, %126, %73, %39
  %362 = load i32, i32* %2, align 4
  ret i32 %362
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @N_GETMID(%struct.exec* byval(%struct.exec) align 8) #1

declare dso_local i64 @roundup(i32, i64) #1

declare dso_local i32 @PROC_LOCK(%struct.TYPE_9__*) #1

declare dso_local i64 @lim_cur_proc(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @racct_set(%struct.TYPE_9__*, i32, i64) #1

declare dso_local i32 @PROC_UNLOCK(%struct.TYPE_9__*) #1

declare dso_local i32 @VOP_UNLOCK(i32, i32) #1

declare dso_local i32 @exec_new_vmspace(%struct.image_params*, %struct.TYPE_10__*) #1

declare dso_local i32 @vn_lock(i32, i32) #1

declare dso_local i32 @vm_map_lock(i32*) #1

declare dso_local i32 @vm_object_reference(i32*) #1

declare dso_local i32 @vm_map_insert(i32*, i32*, i64, i64, i64, i32, i32, i32) #1

declare dso_local i32 @vm_map_unlock(i32*) #1

declare dso_local i32 @vm_object_deallocate(i32*) #1

declare dso_local i32 @VOP_SET_TEXT_CHECKED(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
