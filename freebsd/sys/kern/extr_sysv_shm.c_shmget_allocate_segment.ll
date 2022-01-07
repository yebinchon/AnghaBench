; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_shm.c_shmget_allocate_segment.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_shm.c_shmget_allocate_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i32, i32 }
%struct.shmid_kernel = type { %struct.TYPE_15__, i32, %struct.TYPE_16__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__, i32, i64, i64, i64, i64, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i64 }
%struct.thread = type { i32*, %struct.TYPE_18__*, %struct.ucred* }
%struct.TYPE_18__ = type { i32 }
%struct.ucred = type { i32, i32 }
%struct.shmget_args = type { i32, i32 }

@shminfo = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@shm_nused = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@shm_committed = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@shm_last_free = common dso_local global i32 0, align 4
@shmalloced = common dso_local global i32 0, align 4
@shmsegs = common dso_local global %struct.shmid_kernel* null, align 8
@SHMSEG_FREE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"segnum %d shmalloced %d\00", align 1
@shm_use_phys = common dso_local global i64 0, align 8
@OBJT_PHYS = common dso_local global i32 0, align 4
@OBJT_SWAP = common dso_local global i32 0, align 4
@VM_PROT_DEFAULT = common dso_local global i32 0, align 4
@OBJ_ONEMAPPING = common dso_local global i32 0, align 4
@OBJ_COLORED = common dso_local global i32 0, align 4
@OBJ_NOSPLIT = common dso_local global i32 0, align 4
@ACCESSPERMS = common dso_local global i32 0, align 4
@SHMSEG_ALLOCATED = common dso_local global i32 0, align 4
@time_second = common dso_local global i32 0, align 4
@RACCT_NSHM = common dso_local global i32 0, align 4
@RACCT_SHMSIZE = common dso_local global i32 0, align 4
@racct_enable = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.shmget_args*, i32)* @shmget_allocate_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shmget_allocate_segment(%struct.thread* %0, %struct.shmget_args* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.thread*, align 8
  %6 = alloca %struct.shmget_args*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca %struct.shmid_kernel*, align 8
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.thread* %0, %struct.thread** %5, align 8
  store %struct.shmget_args* %1, %struct.shmget_args** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.thread*, %struct.thread** %5, align 8
  %15 = getelementptr inbounds %struct.thread, %struct.thread* %14, i32 0, i32 2
  %16 = load %struct.ucred*, %struct.ucred** %15, align 8
  store %struct.ucred* %16, %struct.ucred** %8, align 8
  %17 = call i32 (...) @SYSVSHM_ASSERT_LOCKED()
  %18 = load %struct.shmget_args*, %struct.shmget_args** %6, align 8
  %19 = getelementptr inbounds %struct.shmget_args, %struct.shmget_args* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @shminfo, i32 0, i32 3), align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %29, label %23

23:                                               ; preds = %3
  %24 = load %struct.shmget_args*, %struct.shmget_args** %6, align 8
  %25 = getelementptr inbounds %struct.shmget_args, %struct.shmget_args* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @shminfo, i32 0, i32 2), align 8
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23, %3
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %4, align 4
  br label %237

31:                                               ; preds = %23
  %32 = load i64, i64* @shm_nused, align 8
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @shminfo, i32 0, i32 0), align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* @ENOSPC, align 4
  store i32 %36, i32* %4, align 4
  br label %237

37:                                               ; preds = %31
  %38 = load %struct.shmget_args*, %struct.shmget_args** %6, align 8
  %39 = getelementptr inbounds %struct.shmget_args, %struct.shmget_args* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @round_page(i32 %40)
  store i64 %41, i64* %13, align 8
  %42 = load i64, i64* @shm_committed, align 8
  %43 = load i64, i64* %13, align 8
  %44 = call i64 @btoc(i64 %43)
  %45 = add nsw i64 %42, %44
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @shminfo, i32 0, i32 1), align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %37
  %49 = load i32, i32* @ENOMEM, align 4
  store i32 %49, i32* %4, align 4
  br label %237

50:                                               ; preds = %37
  %51 = load i32, i32* @shm_last_free, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %84

53:                                               ; preds = %50
  %54 = call i32 (...) @shmrealloc()
  store i32 0, i32* %11, align 4
  br label %55

55:                                               ; preds = %73, %53
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* @shmalloced, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %76

59:                                               ; preds = %55
  %60 = load %struct.shmid_kernel*, %struct.shmid_kernel** @shmsegs, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %60, i64 %62
  %64 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @SHMSEG_FREE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %59
  br label %76

72:                                               ; preds = %59
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %11, align 4
  br label %55

76:                                               ; preds = %71, %55
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @shmalloced, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @ENOSPC, align 4
  store i32 %81, i32* %4, align 4
  br label %237

82:                                               ; preds = %76
  %83 = load i32, i32* %11, align 4
  store i32 %83, i32* %12, align 4
  br label %86

84:                                               ; preds = %50
  %85 = load i32, i32* @shm_last_free, align 4
  store i32 %85, i32* %12, align 4
  store i32 -1, i32* @shm_last_free, align 4
  br label %86

86:                                               ; preds = %84, %82
  %87 = load i32, i32* %12, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* @shmalloced, align 4
  %92 = icmp slt i32 %90, %91
  br label %93

93:                                               ; preds = %89, %86
  %94 = phi i1 [ false, %86 ], [ %92, %89 ]
  %95 = zext i1 %94 to i32
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @shmalloced, align 4
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i8*
  %100 = call i32 @KASSERT(i32 %95, i8* %99)
  %101 = load %struct.shmid_kernel*, %struct.shmid_kernel** @shmsegs, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %101, i64 %103
  store %struct.shmid_kernel* %104, %struct.shmid_kernel** %9, align 8
  %105 = load i64, i64* @shm_use_phys, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %93
  %108 = load i32, i32* @OBJT_PHYS, align 4
  br label %111

109:                                              ; preds = %93
  %110 = load i32, i32* @OBJT_SWAP, align 4
  br label %111

111:                                              ; preds = %109, %107
  %112 = phi i32 [ %108, %107 ], [ %110, %109 ]
  %113 = load i64, i64* %13, align 8
  %114 = load i32, i32* @VM_PROT_DEFAULT, align 4
  %115 = load %struct.ucred*, %struct.ucred** %8, align 8
  %116 = call %struct.TYPE_16__* @vm_pager_allocate(i32 %112, i32 0, i64 %113, i32 %114, i32 0, %struct.ucred* %115)
  store %struct.TYPE_16__* %116, %struct.TYPE_16__** %10, align 8
  %117 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %118 = icmp eq %struct.TYPE_16__* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %111
  %120 = load i32, i32* @ENOMEM, align 4
  store i32 %120, i32* %4, align 4
  br label %237

121:                                              ; preds = %111
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %123 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %122, i32 0, i32 0
  store i64 0, i64* %123, align 8
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %125 = call i32 @VM_OBJECT_WLOCK(%struct.TYPE_16__* %124)
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %127 = load i32, i32* @OBJ_ONEMAPPING, align 4
  %128 = call i32 @vm_object_clear_flag(%struct.TYPE_16__* %126, i32 %127)
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %130 = load i32, i32* @OBJ_COLORED, align 4
  %131 = load i32, i32* @OBJ_NOSPLIT, align 4
  %132 = or i32 %130, %131
  %133 = call i32 @vm_object_set_flag(%struct.TYPE_16__* %129, i32 %132)
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %135 = call i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_16__* %134)
  %136 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %137 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %138 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %137, i32 0, i32 2
  store %struct.TYPE_16__* %136, %struct.TYPE_16__** %138, align 8
  %139 = load %struct.ucred*, %struct.ucred** %8, align 8
  %140 = getelementptr inbounds %struct.ucred, %struct.ucred* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %143 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 5
  store i32 %141, i32* %145, align 4
  %146 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %147 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 6
  store i32 %141, i32* %149, align 8
  %150 = load %struct.ucred*, %struct.ucred** %8, align 8
  %151 = getelementptr inbounds %struct.ucred, %struct.ucred* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %154 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %155, i32 0, i32 3
  store i32 %152, i32* %156, align 4
  %157 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %158 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 4
  store i32 %152, i32* %160, align 8
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* @ACCESSPERMS, align 4
  %163 = and i32 %161, %162
  %164 = load i32, i32* @SHMSEG_ALLOCATED, align 4
  %165 = or i32 %163, %164
  %166 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %167 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 0
  store i32 %165, i32* %169, align 8
  %170 = load %struct.shmget_args*, %struct.shmget_args** %6, align 8
  %171 = getelementptr inbounds %struct.shmget_args, %struct.shmget_args* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %174 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %175, i32 0, i32 2
  store i32 %172, i32* %176, align 8
  %177 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %178 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %181, 1
  %183 = and i32 %182, 32767
  %184 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %185 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 1
  store i32 %183, i32* %187, align 4
  %188 = load %struct.ucred*, %struct.ucred** %8, align 8
  %189 = call i32 @crhold(%struct.ucred* %188)
  %190 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %191 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %190, i32 0, i32 1
  store i32 %189, i32* %191, align 8
  %192 = load %struct.shmget_args*, %struct.shmget_args** %6, align 8
  %193 = getelementptr inbounds %struct.shmget_args, %struct.shmget_args* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %196 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 7
  store i32 %194, i32* %197, align 4
  %198 = load %struct.thread*, %struct.thread** %5, align 8
  %199 = getelementptr inbounds %struct.thread, %struct.thread* %198, i32 0, i32 1
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %204 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %203, i32 0, i32 0
  %205 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %204, i32 0, i32 6
  store i32 %202, i32* %205, align 8
  %206 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %207 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 4
  store i64 0, i64* %208, align 8
  %209 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %210 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 5
  store i64 0, i64* %211, align 8
  %212 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %213 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 2
  store i64 0, i64* %214, align 8
  %215 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %216 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 3
  store i64 0, i64* %217, align 8
  %218 = load i32, i32* @time_second, align 4
  %219 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %220 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %220, i32 0, i32 1
  store i32 %218, i32* %221, align 4
  %222 = load i64, i64* %13, align 8
  %223 = call i64 @btoc(i64 %222)
  %224 = load i64, i64* @shm_committed, align 8
  %225 = add nsw i64 %224, %223
  store i64 %225, i64* @shm_committed, align 8
  %226 = load i64, i64* @shm_nused, align 8
  %227 = add nsw i64 %226, 1
  store i64 %227, i64* @shm_nused, align 8
  %228 = load i32, i32* %12, align 4
  %229 = load %struct.shmid_kernel*, %struct.shmid_kernel** %9, align 8
  %230 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %229, i32 0, i32 0
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 0
  %232 = call i32 @IXSEQ_TO_IPCID(i32 %228, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8 %231)
  %233 = load %struct.thread*, %struct.thread** %5, align 8
  %234 = getelementptr inbounds %struct.thread, %struct.thread* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 0
  store i32 %232, i32* %236, align 4
  store i32 0, i32* %4, align 4
  br label %237

237:                                              ; preds = %121, %119, %80, %48, %35, %29
  %238 = load i32, i32* %4, align 4
  ret i32 %238
}

declare dso_local i32 @SYSVSHM_ASSERT_LOCKED(...) #1

declare dso_local i64 @round_page(i32) #1

declare dso_local i64 @btoc(i64) #1

declare dso_local i32 @shmrealloc(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.TYPE_16__* @vm_pager_allocate(i32, i32, i64, i32, i32, %struct.ucred*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(%struct.TYPE_16__*) #1

declare dso_local i32 @vm_object_clear_flag(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @vm_object_set_flag(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(%struct.TYPE_16__*) #1

declare dso_local i32 @crhold(%struct.ucred*) #1

declare dso_local i32 @IXSEQ_TO_IPCID(i32, %struct.TYPE_14__* byval(%struct.TYPE_14__) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
