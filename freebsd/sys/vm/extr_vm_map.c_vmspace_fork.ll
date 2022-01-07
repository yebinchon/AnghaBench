; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vmspace_fork.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_vm_map.c_vmspace_fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_36__ = type { i32* }
%struct.vmspace = type { %struct.TYPE_39__, i32, i32, i32 }
%struct.TYPE_39__ = type { i32, i32, %struct.TYPE_40__, i32, i64 }
%struct.TYPE_40__ = type { i32, i32, i64, i64, i32*, i32, i32, %struct.TYPE_34__, i32, i32*, i32, %struct.TYPE_40__* }
%struct.TYPE_34__ = type { %struct.TYPE_38__* }
%struct.TYPE_38__ = type { %struct.TYPE_37__, i64, i32, i64, i32* }
%struct.TYPE_37__ = type { %struct.TYPE_35__ }
%struct.TYPE_35__ = type { i32 }
%struct.vnode = type { i32 }

@pmap_pinit = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"vmspace_fork: lock failed\00", align 1
@MAP_ENTRY_IS_SUB_MAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"vm_map_fork: encountered a submap\00", align 1
@MAP_ENTRY_GUARD = common dso_local global i32 0, align 4
@MAP_ENTRY_NEEDS_COPY = common dso_local global i32 0, align 4
@OBJ_ONEMAPPING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"vmspace_fork both cred\00", align 1
@MAP_ENTRY_WRITECNT = common dso_local global i32 0, align 4
@OBJT_VNODE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"vmspace_fork: v_writecount %p\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"vmspace_fork: vnp.writecount %p\00", align 1
@MAP_ENTRY_USER_WIRED = common dso_local global i32 0, align 4
@MAP_ENTRY_IN_TRANSITION = common dso_local global i32 0, align 4
@MAP_ENTRY_VN_EXEC = common dso_local global i32 0, align 4
@curthread = common dso_local global %struct.TYPE_36__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.vmspace* @vmspace_fork(%struct.vmspace* %0, i64* %1) #0 {
  %3 = alloca %struct.vmspace*, align 8
  %4 = alloca %struct.vmspace*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.vmspace*, align 8
  %7 = alloca %struct.TYPE_39__*, align 8
  %8 = alloca %struct.TYPE_39__*, align 8
  %9 = alloca %struct.TYPE_40__*, align 8
  %10 = alloca %struct.TYPE_40__*, align 8
  %11 = alloca %struct.TYPE_38__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vmspace* %0, %struct.vmspace** %4, align 8
  store i64* %1, i64** %5, align 8
  %15 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %16 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %15, i32 0, i32 0
  store %struct.TYPE_39__* %16, %struct.TYPE_39__** %8, align 8
  %17 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %18 = call i32 @vm_map_min(%struct.TYPE_39__* %17)
  %19 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %20 = call i32 @vm_map_max(%struct.TYPE_39__* %19)
  %21 = load i32, i32* @pmap_pinit, align 4
  %22 = call %struct.vmspace* @vmspace_alloc(i32 %18, i32 %20, i32 %21)
  store %struct.vmspace* %22, %struct.vmspace** %6, align 8
  %23 = load %struct.vmspace*, %struct.vmspace** %6, align 8
  %24 = icmp eq %struct.vmspace* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store %struct.vmspace* null, %struct.vmspace** %3, align 8
  br label %426

26:                                               ; preds = %2
  %27 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %28 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.vmspace*, %struct.vmspace** %6, align 8
  %31 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %33 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.vmspace*, %struct.vmspace** %6, align 8
  %36 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 4
  %37 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %38 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.vmspace*, %struct.vmspace** %6, align 8
  %41 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %43 = call i32 @vm_map_lock(%struct.TYPE_39__* %42)
  %44 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %26
  %49 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %50 = call i32 @vm_map_wait_busy(%struct.TYPE_39__* %49)
  br label %51

51:                                               ; preds = %48, %26
  %52 = load %struct.vmspace*, %struct.vmspace** %6, align 8
  %53 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %52, i32 0, i32 0
  store %struct.TYPE_39__* %53, %struct.TYPE_39__** %7, align 8
  %54 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %55 = call i32 @vm_map_trylock(%struct.TYPE_39__* %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = call i32 @KASSERT(i32 %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %58 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @pmap_vmspace_copy(i32 %60, i32 %63)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %51
  %68 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %68, i32 0, i32 0
  %70 = call i32 @sx_xunlock(i32* %69)
  %71 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %71, i32 0, i32 0
  %73 = call i32 @sx_xunlock(i32* %72)
  %74 = call i32 (...) @vm_map_process_deferred()
  %75 = load %struct.vmspace*, %struct.vmspace** %6, align 8
  %76 = call i32 @vmspace_free(%struct.vmspace* %75)
  store %struct.vmspace* null, %struct.vmspace** %3, align 8
  br label %426

77:                                               ; preds = %51
  %78 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %81, i32 0, i32 3
  store i32 %80, i32* %82, align 8
  %83 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %84, i32 0, i32 11
  %86 = load %struct.TYPE_40__*, %struct.TYPE_40__** %85, align 8
  store %struct.TYPE_40__* %86, %struct.TYPE_40__** %10, align 8
  br label %87

87:                                               ; preds = %414, %77
  %88 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %89 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %89, i32 0, i32 2
  %91 = icmp ne %struct.TYPE_40__* %88, %90
  br i1 %91, label %92, label %417

92:                                               ; preds = %87
  %93 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %94 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @MAP_ENTRY_IS_SUB_MAP, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %92
  %102 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  store i32 %104, i32* %14, align 4
  %105 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %106 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @MAP_ENTRY_GUARD, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %101
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 130
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  store i32 131, i32* %14, align 4
  br label %115

115:                                              ; preds = %114, %111, %101
  %116 = load i32, i32* %14, align 4
  switch i32 %116, label %414 [
    i32 130, label %117
    i32 129, label %118
    i32 131, label %306
    i32 128, label %347
  ]

117:                                              ; preds = %115
  br label %414

118:                                              ; preds = %115
  %119 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %119, i32 0, i32 7
  %121 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_38__*, %struct.TYPE_38__** %121, align 8
  store %struct.TYPE_38__* %122, %struct.TYPE_38__** %11, align 8
  %123 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %124 = icmp eq %struct.TYPE_38__* %123, null
  br i1 %124, label %125, label %132

125:                                              ; preds = %118
  %126 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %127 = call i32 @vm_map_entry_back(%struct.TYPE_40__* %126)
  %128 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %128, i32 0, i32 7
  %130 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_38__*, %struct.TYPE_38__** %130, align 8
  store %struct.TYPE_38__* %131, %struct.TYPE_38__** %11, align 8
  br label %132

132:                                              ; preds = %125, %118
  %133 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %134 = call i32 @vm_object_reference(%struct.TYPE_38__* %133)
  %135 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %136 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @MAP_ENTRY_NEEDS_COPY, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %172

141:                                              ; preds = %132
  %142 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %142, i32 0, i32 7
  %144 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %145, i32 0, i32 10
  %147 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %147, i32 0, i32 3
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %151 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %150, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = sub nsw i64 %149, %152
  %154 = call i32 @vm_object_shadow(%struct.TYPE_38__** %144, i32* %146, i64 %153)
  %155 = load i32, i32* @MAP_ENTRY_NEEDS_COPY, align 4
  %156 = xor i32 %155, -1
  %157 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %158 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = and i32 %159, %156
  store i32 %160, i32* %158, align 8
  %161 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %162 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %161, i32 0, i32 7
  %163 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_38__*, %struct.TYPE_38__** %163, align 8
  %165 = call i32 @vm_object_reference(%struct.TYPE_38__* %164)
  %166 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %167 = call i32 @vm_object_deallocate(%struct.TYPE_38__* %166)
  %168 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %169 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %168, i32 0, i32 7
  %170 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %169, i32 0, i32 0
  %171 = load %struct.TYPE_38__*, %struct.TYPE_38__** %170, align 8
  store %struct.TYPE_38__* %171, %struct.TYPE_38__** %11, align 8
  br label %172

172:                                              ; preds = %141, %132
  %173 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %174 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_38__* %173)
  %175 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %176 = load i32, i32* @OBJ_ONEMAPPING, align 4
  %177 = call i32 @vm_object_clear_flag(%struct.TYPE_38__* %175, i32 %176)
  %178 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %179 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %178, i32 0, i32 4
  %180 = load i32*, i32** %179, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %182, label %205

182:                                              ; preds = %172
  %183 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %184 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %183, i32 0, i32 4
  %185 = load i32*, i32** %184, align 8
  %186 = icmp eq i32* %185, null
  %187 = zext i1 %186 to i32
  %188 = call i32 @KASSERT(i32 %187, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %189 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %190 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %189, i32 0, i32 4
  %191 = load i32*, i32** %190, align 8
  %192 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %192, i32 0, i32 4
  store i32* %191, i32** %193, align 8
  %194 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %195 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %194, i32 0, i32 3
  %196 = load i64, i64* %195, align 8
  %197 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %198 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %197, i32 0, i32 2
  %199 = load i64, i64* %198, align 8
  %200 = sub nsw i64 %196, %199
  %201 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %202 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %201, i32 0, i32 3
  store i64 %200, i64* %202, align 8
  %203 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %204 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %203, i32 0, i32 4
  store i32* null, i32** %204, align 8
  br label %205

205:                                              ; preds = %182, %172
  %206 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %207 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @MAP_ENTRY_WRITECNT, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %240

212:                                              ; preds = %205
  %213 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %214 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 8
  %216 = load i32, i32* @OBJT_VNODE, align 4
  %217 = icmp eq i32 %215, %216
  br i1 %217, label %218, label %240

218:                                              ; preds = %212
  %219 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %220 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = inttoptr i64 %221 to %struct.vnode*
  %223 = getelementptr inbounds %struct.vnode, %struct.vnode* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = icmp sgt i32 %224, 0
  %226 = zext i1 %225 to i32
  %227 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %228 = bitcast %struct.TYPE_38__* %227 to i8*
  %229 = call i32 @KASSERT(i32 %226, i8* %228)
  %230 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %231 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %232, i32 0, i32 0
  %234 = load i32, i32* %233, align 8
  %235 = icmp sgt i32 %234, 0
  %236 = zext i1 %235 to i32
  %237 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %238 = bitcast %struct.TYPE_38__* %237 to i8*
  %239 = call i32 @KASSERT(i32 %236, i8* %238)
  br label %240

240:                                              ; preds = %218, %212, %205
  %241 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %242 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_38__* %241)
  %243 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %244 = call %struct.TYPE_40__* @vm_map_entry_create(%struct.TYPE_39__* %243)
  store %struct.TYPE_40__* %244, %struct.TYPE_40__** %9, align 8
  %245 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %246 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %247 = bitcast %struct.TYPE_40__* %245 to i8*
  %248 = bitcast %struct.TYPE_40__* %246 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %247, i8* align 8 %248, i64 80, i1 false)
  %249 = load i32, i32* @MAP_ENTRY_USER_WIRED, align 4
  %250 = load i32, i32* @MAP_ENTRY_IN_TRANSITION, align 4
  %251 = or i32 %249, %250
  %252 = xor i32 %251, -1
  %253 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %254 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = and i32 %255, %252
  store i32 %256, i32* %254, align 8
  %257 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %258 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %257, i32 0, i32 9
  store i32* null, i32** %258, align 8
  %259 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %260 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %259, i32 0, i32 8
  store i32 0, i32* %260, align 8
  %261 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %262 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = load i32, i32* @MAP_ENTRY_WRITECNT, align 4
  %265 = and i32 %263, %264
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %276

267:                                              ; preds = %240
  %268 = load %struct.TYPE_38__*, %struct.TYPE_38__** %11, align 8
  %269 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %270 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %269, i32 0, i32 2
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %273 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %272, i32 0, i32 3
  %274 = load i64, i64* %273, align 8
  %275 = call i32 @vm_pager_update_writecount(%struct.TYPE_38__* %268, i64 %271, i64 %274)
  br label %276

276:                                              ; preds = %267, %240
  %277 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %278 = call i32 @vm_map_entry_set_vnode_text(%struct.TYPE_40__* %277, i32 1)
  %279 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %280 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %281 = call i32 @vm_map_entry_link(%struct.TYPE_39__* %279, %struct.TYPE_40__* %280)
  %282 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %283 = load %struct.vmspace*, %struct.vmspace** %6, align 8
  %284 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %285 = call i32 @vmspace_map_entry_forked(%struct.vmspace* %282, %struct.vmspace* %283, %struct.TYPE_40__* %284)
  %286 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %287 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %290 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %293 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %292, i32 0, i32 2
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %296 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %295, i32 0, i32 3
  %297 = load i64, i64* %296, align 8
  %298 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %299 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %298, i32 0, i32 2
  %300 = load i64, i64* %299, align 8
  %301 = sub nsw i64 %297, %300
  %302 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %303 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %302, i32 0, i32 2
  %304 = load i64, i64* %303, align 8
  %305 = call i32 @pmap_copy(i32 %288, i32 %291, i64 %294, i64 %301, i64 %304)
  br label %414

306:                                              ; preds = %115
  %307 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %308 = call %struct.TYPE_40__* @vm_map_entry_create(%struct.TYPE_39__* %307)
  store %struct.TYPE_40__* %308, %struct.TYPE_40__** %9, align 8
  %309 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %310 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %311 = bitcast %struct.TYPE_40__* %309 to i8*
  %312 = bitcast %struct.TYPE_40__* %310 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %311, i8* align 8 %312, i64 80, i1 false)
  %313 = load i32, i32* @MAP_ENTRY_USER_WIRED, align 4
  %314 = load i32, i32* @MAP_ENTRY_IN_TRANSITION, align 4
  %315 = or i32 %313, %314
  %316 = load i32, i32* @MAP_ENTRY_WRITECNT, align 4
  %317 = or i32 %315, %316
  %318 = xor i32 %317, -1
  %319 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %320 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %319, i32 0, i32 0
  %321 = load i32, i32* %320, align 8
  %322 = and i32 %321, %318
  store i32 %322, i32* %320, align 8
  %323 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %324 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %323, i32 0, i32 9
  store i32* null, i32** %324, align 8
  %325 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %326 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %325, i32 0, i32 8
  store i32 0, i32* %326, align 8
  %327 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %328 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %327, i32 0, i32 7
  %329 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %328, i32 0, i32 0
  store %struct.TYPE_38__* null, %struct.TYPE_38__** %329, align 8
  %330 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %331 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %330, i32 0, i32 4
  store i32* null, i32** %331, align 8
  %332 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %333 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %334 = call i32 @vm_map_entry_link(%struct.TYPE_39__* %332, %struct.TYPE_40__* %333)
  %335 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %336 = load %struct.vmspace*, %struct.vmspace** %6, align 8
  %337 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %338 = call i32 @vmspace_map_entry_forked(%struct.vmspace* %335, %struct.vmspace* %336, %struct.TYPE_40__* %337)
  %339 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %340 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %341 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %342 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %343 = load i64*, i64** %5, align 8
  %344 = call i32 @vm_map_copy_entry(%struct.TYPE_39__* %339, %struct.TYPE_39__* %340, %struct.TYPE_40__* %341, %struct.TYPE_40__* %342, i64* %343)
  %345 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %346 = call i32 @vm_map_entry_set_vnode_text(%struct.TYPE_40__* %345, i32 1)
  br label %414

347:                                              ; preds = %115
  %348 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %349 = call %struct.TYPE_40__* @vm_map_entry_create(%struct.TYPE_39__* %348)
  store %struct.TYPE_40__* %349, %struct.TYPE_40__** %9, align 8
  %350 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %351 = call i32 @memset(%struct.TYPE_40__* %350, i32 0, i32 80)
  %352 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %353 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %352, i32 0, i32 2
  %354 = load i64, i64* %353, align 8
  %355 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %356 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %355, i32 0, i32 2
  store i64 %354, i64* %356, align 8
  %357 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %358 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %357, i32 0, i32 3
  %359 = load i64, i64* %358, align 8
  %360 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %361 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %360, i32 0, i32 3
  store i64 %359, i64* %361, align 8
  %362 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %363 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = load i32, i32* @MAP_ENTRY_USER_WIRED, align 4
  %366 = load i32, i32* @MAP_ENTRY_IN_TRANSITION, align 4
  %367 = or i32 %365, %366
  %368 = load i32, i32* @MAP_ENTRY_WRITECNT, align 4
  %369 = or i32 %367, %368
  %370 = load i32, i32* @MAP_ENTRY_VN_EXEC, align 4
  %371 = or i32 %369, %370
  %372 = xor i32 %371, -1
  %373 = and i32 %364, %372
  %374 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %375 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %374, i32 0, i32 0
  store i32 %373, i32* %375, align 8
  %376 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %377 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %376, i32 0, i32 6
  %378 = load i32, i32* %377, align 4
  %379 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %380 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %379, i32 0, i32 6
  store i32 %378, i32* %380, align 4
  %381 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %382 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %381, i32 0, i32 5
  %383 = load i32, i32* %382, align 8
  %384 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %385 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %384, i32 0, i32 5
  store i32 %383, i32* %385, align 8
  %386 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %387 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %386, i32 0, i32 1
  store i32 128, i32* %387, align 4
  %388 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %389 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %390 = call i32 @vm_map_entry_link(%struct.TYPE_39__* %388, %struct.TYPE_40__* %389)
  %391 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %392 = load %struct.vmspace*, %struct.vmspace** %6, align 8
  %393 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %394 = call i32 @vmspace_map_entry_forked(%struct.vmspace* %391, %struct.vmspace* %392, %struct.TYPE_40__* %393)
  %395 = load %struct.TYPE_36__*, %struct.TYPE_36__** @curthread, align 8
  %396 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %395, i32 0, i32 0
  %397 = load i32*, i32** %396, align 8
  %398 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %399 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %398, i32 0, i32 4
  store i32* %397, i32** %399, align 8
  %400 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %401 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %400, i32 0, i32 4
  %402 = load i32*, i32** %401, align 8
  %403 = call i32 @crhold(i32* %402)
  %404 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %405 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %404, i32 0, i32 3
  %406 = load i64, i64* %405, align 8
  %407 = load %struct.TYPE_40__*, %struct.TYPE_40__** %9, align 8
  %408 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %407, i32 0, i32 2
  %409 = load i64, i64* %408, align 8
  %410 = sub nsw i64 %406, %409
  %411 = load i64*, i64** %5, align 8
  %412 = load i64, i64* %411, align 8
  %413 = add nsw i64 %412, %410
  store i64 %413, i64* %411, align 8
  br label %414

414:                                              ; preds = %115, %347, %306, %276, %117
  %415 = load %struct.TYPE_40__*, %struct.TYPE_40__** %10, align 8
  %416 = call %struct.TYPE_40__* @vm_map_entry_succ(%struct.TYPE_40__* %415)
  store %struct.TYPE_40__* %416, %struct.TYPE_40__** %10, align 8
  br label %87

417:                                              ; preds = %87
  %418 = load %struct.TYPE_39__*, %struct.TYPE_39__** %8, align 8
  %419 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %418, i32 0, i32 0
  %420 = call i32 @sx_xunlock(i32* %419)
  %421 = load %struct.TYPE_39__*, %struct.TYPE_39__** %7, align 8
  %422 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %421, i32 0, i32 0
  %423 = call i32 @sx_xunlock(i32* %422)
  %424 = call i32 (...) @vm_map_process_deferred()
  %425 = load %struct.vmspace*, %struct.vmspace** %6, align 8
  store %struct.vmspace* %425, %struct.vmspace** %3, align 8
  br label %426

426:                                              ; preds = %417, %67, %25
  %427 = load %struct.vmspace*, %struct.vmspace** %3, align 8
  ret %struct.vmspace* %427
}

declare dso_local %struct.vmspace* @vmspace_alloc(i32, i32, i32) #1

declare dso_local i32 @vm_map_min(%struct.TYPE_39__*) #1

declare dso_local i32 @vm_map_max(%struct.TYPE_39__*) #1

declare dso_local i32 @vm_map_lock(%struct.TYPE_39__*) #1

declare dso_local i32 @vm_map_wait_busy(%struct.TYPE_39__*) #1

declare dso_local i32 @vm_map_trylock(%struct.TYPE_39__*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @pmap_vmspace_copy(i32, i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

declare dso_local i32 @vm_map_process_deferred(...) #1

declare dso_local i32 @vmspace_free(%struct.vmspace*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @vm_map_entry_back(%struct.TYPE_40__*) #1

declare dso_local i32 @vm_object_reference(%struct.TYPE_38__*) #1

declare dso_local i32 @vm_object_shadow(%struct.TYPE_38__**, i32*, i64) #1

declare dso_local i32 @vm_object_deallocate(%struct.TYPE_38__*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_38__*) #1

declare dso_local i32 @vm_object_clear_flag(%struct.TYPE_38__*, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_38__*) #1

declare dso_local %struct.TYPE_40__* @vm_map_entry_create(%struct.TYPE_39__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vm_pager_update_writecount(%struct.TYPE_38__*, i64, i64) #1

declare dso_local i32 @vm_map_entry_set_vnode_text(%struct.TYPE_40__*, i32) #1

declare dso_local i32 @vm_map_entry_link(%struct.TYPE_39__*, %struct.TYPE_40__*) #1

declare dso_local i32 @vmspace_map_entry_forked(%struct.vmspace*, %struct.vmspace*, %struct.TYPE_40__*) #1

declare dso_local i32 @pmap_copy(i32, i32, i64, i64, i64) #1

declare dso_local i32 @vm_map_copy_entry(%struct.TYPE_39__*, %struct.TYPE_39__*, %struct.TYPE_40__*, %struct.TYPE_40__*, i64*) #1

declare dso_local i32 @memset(%struct.TYPE_40__*, i32, i32) #1

declare dso_local i32 @crhold(i32*) #1

declare dso_local %struct.TYPE_40__* @vm_map_entry_succ(%struct.TYPE_40__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
