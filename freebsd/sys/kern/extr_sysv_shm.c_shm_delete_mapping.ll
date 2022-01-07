; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_shm.c_shm_delete_mapping.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_shm.c_shm_delete_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shmid_kernel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.vmspace = type { i32 }
%struct.shmmap_state = type { i32, i64 }

@shmalloced = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"segnum %d shmalloced %d\00", align 1
@shmsegs = common dso_local global %struct.shmid_kernel* null, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@time_second = common dso_local global i32 0, align 4
@SHMSEG_REMOVED = common dso_local global i32 0, align 4
@shm_last_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmspace*, %struct.shmmap_state*)* @shm_delete_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shm_delete_mapping(%struct.vmspace* %0, %struct.shmmap_state* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmspace*, align 8
  %5 = alloca %struct.shmmap_state*, align 8
  %6 = alloca %struct.shmid_kernel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.vmspace* %0, %struct.vmspace** %4, align 8
  store %struct.shmmap_state* %1, %struct.shmmap_state** %5, align 8
  %10 = call i32 (...) @SYSVSHM_ASSERT_LOCKED()
  %11 = load %struct.shmmap_state*, %struct.shmmap_state** %5, align 8
  %12 = getelementptr inbounds %struct.shmmap_state, %struct.shmmap_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @IPCID_TO_IX(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @shmalloced, align 4
  %20 = icmp slt i32 %18, %19
  br label %21

21:                                               ; preds = %17, %2
  %22 = phi i1 [ false, %2 ], [ %20, %17 ]
  %23 = zext i1 %22 to i32
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @shmalloced, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @KASSERT(i32 %23, i8* %27)
  %29 = load %struct.shmid_kernel*, %struct.shmid_kernel** @shmsegs, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %29, i64 %31
  store %struct.shmid_kernel* %32, %struct.shmid_kernel** %6, align 8
  %33 = load %struct.shmid_kernel*, %struct.shmid_kernel** %6, align 8
  %34 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @round_page(i32 %36)
  store i64 %37, i64* %9, align 8
  %38 = load %struct.vmspace*, %struct.vmspace** %4, align 8
  %39 = getelementptr inbounds %struct.vmspace, %struct.vmspace* %38, i32 0, i32 0
  %40 = load %struct.shmmap_state*, %struct.shmmap_state** %5, align 8
  %41 = getelementptr inbounds %struct.shmmap_state, %struct.shmmap_state* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.shmmap_state*, %struct.shmmap_state** %5, align 8
  %44 = getelementptr inbounds %struct.shmmap_state, %struct.shmmap_state* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %9, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @vm_map_remove(i32* %39, i64 %42, i64 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @KERN_SUCCESS, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %21
  %53 = load i32, i32* @EINVAL, align 4
  store i32 %53, i32* %3, align 4
  br label %81

54:                                               ; preds = %21
  %55 = load %struct.shmmap_state*, %struct.shmmap_state** %5, align 8
  %56 = getelementptr inbounds %struct.shmmap_state, %struct.shmmap_state* %55, i32 0, i32 0
  store i32 -1, i32* %56, align 8
  %57 = load i32, i32* @time_second, align 4
  %58 = load %struct.shmid_kernel*, %struct.shmid_kernel** %6, align 8
  %59 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  store i32 %57, i32* %60, align 4
  %61 = load %struct.shmid_kernel*, %struct.shmid_kernel** %6, align 8
  %62 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %64, -1
  store i64 %65, i64* %63, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %54
  %68 = load %struct.shmid_kernel*, %struct.shmid_kernel** %6, align 8
  %69 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @SHMSEG_REMOVED, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = load %struct.shmid_kernel*, %struct.shmid_kernel** %6, align 8
  %78 = call i32 @shm_deallocate_segment(%struct.shmid_kernel* %77)
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* @shm_last_free, align 4
  br label %80

80:                                               ; preds = %76, %67, %54
  store i32 0, i32* %3, align 4
  br label %81

81:                                               ; preds = %80, %52
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local i32 @SYSVSHM_ASSERT_LOCKED(...) #1

declare dso_local i32 @IPCID_TO_IX(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @round_page(i32) #1

declare dso_local i32 @vm_map_remove(i32*, i64, i64) #1

declare dso_local i32 @shm_deallocate_segment(%struct.shmid_kernel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
