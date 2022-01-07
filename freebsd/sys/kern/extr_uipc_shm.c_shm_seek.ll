; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_shm_seek.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_shm_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.shmfd* }
%struct.shmfd = type { i64 }
%struct.thread = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@OFF_MAX = common dso_local global i64 0, align 8
@EOVERFLOW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FOF_NOUPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i64, i32, %struct.thread*)* @shm_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shm_seek(%struct.file* %0, i64 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.shmfd*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.thread* %3, %struct.thread** %8, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = getelementptr inbounds %struct.file, %struct.file* %12, i32 0, i32 0
  %14 = load %struct.shmfd*, %struct.shmfd** %13, align 8
  store %struct.shmfd* %14, %struct.shmfd** %9, align 8
  %15 = load %struct.file*, %struct.file** %5, align 8
  %16 = call i64 @foffset_lock(%struct.file* %15, i32 0)
  store i64 %16, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load i32, i32* %7, align 4
  switch i32 %17, label %56 [
    i32 130, label %18
    i32 128, label %36
    i32 129, label %55
  ]

18:                                               ; preds = %4
  %19 = load i64, i64* %10, align 8
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %18
  %22 = load i64, i64* %6, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @OFF_MAX, align 8
  %27 = load i64, i64* %6, align 8
  %28 = sub nsw i64 %26, %27
  %29 = icmp sgt i64 %25, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %24, %18
  %31 = load i32, i32* @EOVERFLOW, align 4
  store i32 %31, i32* %11, align 4
  br label %58

32:                                               ; preds = %24, %21
  %33 = load i64, i64* %10, align 8
  %34 = load i64, i64* %6, align 8
  %35 = add nsw i64 %34, %33
  store i64 %35, i64* %6, align 8
  br label %58

36:                                               ; preds = %4
  %37 = load i64, i64* %6, align 8
  %38 = icmp sgt i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %36
  %40 = load %struct.shmfd*, %struct.shmfd** %9, align 8
  %41 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @OFF_MAX, align 8
  %44 = load i64, i64* %6, align 8
  %45 = sub nsw i64 %43, %44
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* @EOVERFLOW, align 4
  store i32 %48, i32* %11, align 4
  br label %58

49:                                               ; preds = %39, %36
  %50 = load %struct.shmfd*, %struct.shmfd** %9, align 8
  %51 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %6, align 8
  %54 = add nsw i64 %53, %52
  store i64 %54, i64* %6, align 8
  br label %58

55:                                               ; preds = %4
  br label %58

56:                                               ; preds = %4
  %57 = load i32, i32* @EINVAL, align 4
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %56, %55, %49, %47, %32, %30
  %59 = load i32, i32* %11, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %58
  %62 = load i64, i64* %6, align 8
  %63 = icmp slt i64 %62, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %61
  %65 = load i64, i64* %6, align 8
  %66 = load %struct.shmfd*, %struct.shmfd** %9, align 8
  %67 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %65, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %64, %61
  %71 = load i32, i32* @EINVAL, align 4
  store i32 %71, i32* %11, align 4
  br label %77

72:                                               ; preds = %64
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.thread*, %struct.thread** %8, align 8
  %75 = getelementptr inbounds %struct.thread, %struct.thread* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i64 %73, i64* %76, align 8
  br label %77

77:                                               ; preds = %72, %70
  br label %78

78:                                               ; preds = %77, %58
  %79 = load %struct.file*, %struct.file** %5, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load i32, i32* %11, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = load i32, i32* @FOF_NOUPDATE, align 4
  br label %86

85:                                               ; preds = %78
  br label %86

86:                                               ; preds = %85, %83
  %87 = phi i32 [ %84, %83 ], [ 0, %85 ]
  %88 = call i32 @foffset_unlock(%struct.file* %79, i64 %80, i32 %87)
  %89 = load i32, i32* %11, align 4
  ret i32 %89
}

declare dso_local i64 @foffset_lock(%struct.file*, i32) #1

declare dso_local i32 @foffset_unlock(%struct.file*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
