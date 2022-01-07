; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_shm.c_shmget_existing.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_sysv_shm.c_shmget_existing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shmid_kernel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.thread = type { i32*, i32 }
%struct.shmget_args = type { i32, i64 }

@shmalloced = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"segnum %d shmalloced %d\00", align 1
@shmsegs = common dso_local global %struct.shmid_kernel* null, align 8
@IPC_CREAT = common dso_local global i32 0, align 4
@IPC_EXCL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.thread*, %struct.shmget_args*, i32, i32)* @shmget_existing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shmget_existing(%struct.thread* %0, %struct.shmget_args* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.shmget_args*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.shmid_kernel*, align 8
  store %struct.thread* %0, %struct.thread** %6, align 8
  store %struct.shmget_args* %1, %struct.shmget_args** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = call i32 (...) @SYSVSHM_ASSERT_LOCKED()
  %12 = load i32, i32* %9, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @shmalloced, align 4
  %17 = icmp slt i32 %15, %16
  br label %18

18:                                               ; preds = %14, %4
  %19 = phi i1 [ false, %4 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @shmalloced, align 4
  %23 = sext i32 %22 to i64
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @KASSERT(i32 %20, i8* %24)
  %26 = load %struct.shmid_kernel*, %struct.shmid_kernel** @shmsegs, align 8
  %27 = load i32, i32* %9, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %26, i64 %28
  store %struct.shmid_kernel* %29, %struct.shmid_kernel** %10, align 8
  %30 = load %struct.shmget_args*, %struct.shmget_args** %7, align 8
  %31 = getelementptr inbounds %struct.shmget_args, %struct.shmget_args* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IPC_CREAT, align 4
  %34 = load i32, i32* @IPC_EXCL, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = load i32, i32* @IPC_CREAT, align 4
  %38 = load i32, i32* @IPC_EXCL, align 4
  %39 = or i32 %37, %38
  %40 = icmp eq i32 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %18
  %42 = load i32, i32* @EEXIST, align 4
  store i32 %42, i32* %5, align 4
  br label %70

43:                                               ; preds = %18
  %44 = load %struct.shmget_args*, %struct.shmget_args** %7, align 8
  %45 = getelementptr inbounds %struct.shmget_args, %struct.shmget_args* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.shmget_args*, %struct.shmget_args** %7, align 8
  %50 = getelementptr inbounds %struct.shmget_args, %struct.shmget_args* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.shmid_kernel*, %struct.shmid_kernel** %10, align 8
  %53 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sgt i64 %51, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %48
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %5, align 4
  br label %70

59:                                               ; preds = %48, %43
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.shmid_kernel*, %struct.shmid_kernel** %10, align 8
  %62 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @IXSEQ_TO_IPCID(i32 %60, i32 %64)
  %66 = load %struct.thread*, %struct.thread** %6, align 8
  %67 = getelementptr inbounds %struct.thread, %struct.thread* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %65, i32* %69, align 4
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %59, %57, %41
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local i32 @SYSVSHM_ASSERT_LOCKED(...) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @IXSEQ_TO_IPCID(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
