; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_shm.c_shm_find_segment.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_shm.c_shm_find_segment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shmid_kernel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }
%struct.prison = type { i32 }

@shmalloced = common dso_local global i32 0, align 4
@shmsegs = common dso_local global %struct.shmid_kernel* null, align 8
@SHMSEG_ALLOCATED = common dso_local global i32 0, align 4
@shm_allow_removed = common dso_local global i32 0, align 4
@SHMSEG_REMOVED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.shmid_kernel* (%struct.prison*, i32, i32)* @shm_find_segment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.shmid_kernel* @shm_find_segment(%struct.prison* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.shmid_kernel*, align 8
  %5 = alloca %struct.prison*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.shmid_kernel*, align 8
  %9 = alloca i32, align 4
  store %struct.prison* %0, %struct.prison** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @IPCID_TO_IX(i32 %13)
  br label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  br label %17

17:                                               ; preds = %15, %12
  %18 = phi i32 [ %14, %12 ], [ %16, %15 ]
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @shmalloced, align 4
  %24 = icmp sge i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %17
  store %struct.shmid_kernel* null, %struct.shmid_kernel** %4, align 8
  br label %71

26:                                               ; preds = %21
  %27 = load %struct.shmid_kernel*, %struct.shmid_kernel** @shmsegs, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %27, i64 %29
  store %struct.shmid_kernel* %30, %struct.shmid_kernel** %8, align 8
  %31 = load %struct.shmid_kernel*, %struct.shmid_kernel** %8, align 8
  %32 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @SHMSEG_ALLOCATED, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %68, label %39

39:                                               ; preds = %26
  %40 = load i32, i32* @shm_allow_removed, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %39
  %43 = load %struct.shmid_kernel*, %struct.shmid_kernel** %8, align 8
  %44 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @SHMSEG_REMOVED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %68, label %51

51:                                               ; preds = %42, %39
  %52 = load i32, i32* %7, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load %struct.shmid_kernel*, %struct.shmid_kernel** %8, align 8
  %56 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i64 @IPCID_TO_SEQ(i32 %60)
  %62 = icmp ne i64 %59, %61
  br i1 %62, label %68, label %63

63:                                               ; preds = %54, %51
  %64 = load %struct.prison*, %struct.prison** %5, align 8
  %65 = load %struct.shmid_kernel*, %struct.shmid_kernel** %8, align 8
  %66 = call i64 @shm_prison_cansee(%struct.prison* %64, %struct.shmid_kernel* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %63, %54, %42, %26
  store %struct.shmid_kernel* null, %struct.shmid_kernel** %4, align 8
  br label %71

69:                                               ; preds = %63
  %70 = load %struct.shmid_kernel*, %struct.shmid_kernel** %8, align 8
  store %struct.shmid_kernel* %70, %struct.shmid_kernel** %4, align 8
  br label %71

71:                                               ; preds = %69, %68, %25
  %72 = load %struct.shmid_kernel*, %struct.shmid_kernel** %4, align 8
  ret %struct.shmid_kernel* %72
}

declare dso_local i32 @IPCID_TO_IX(i32) #1

declare dso_local i64 @IPCID_TO_SEQ(i32) #1

declare dso_local i64 @shm_prison_cansee(%struct.prison*, %struct.shmid_kernel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
