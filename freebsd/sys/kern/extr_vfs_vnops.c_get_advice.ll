; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_get_advice.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_vfs_vnops.c_get_advice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.uio = type { i64, i64 }
%struct.mtx = type { i32 }

@POSIX_FADV_NORMAL = common dso_local global i32 0, align 4
@VREG = common dso_local global i64 0, align 8
@mtxpool_sleep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.uio*)* @get_advice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_advice(%struct.file* %0, %struct.uio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.uio*, align 8
  %6 = alloca %struct.mtx*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.uio* %1, %struct.uio** %5, align 8
  %8 = load i32, i32* @POSIX_FADV_NORMAL, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = getelementptr inbounds %struct.file, %struct.file* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = icmp eq %struct.TYPE_3__* %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %2
  %14 = load %struct.file*, %struct.file** %4, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @VREG, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %13, %2
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %67

23:                                               ; preds = %13
  %24 = load i32, i32* @mtxpool_sleep, align 4
  %25 = load %struct.file*, %struct.file** %4, align 8
  %26 = call %struct.mtx* @mtx_pool_find(i32 %24, %struct.file* %25)
  store %struct.mtx* %26, %struct.mtx** %6, align 8
  %27 = load %struct.mtx*, %struct.mtx** %6, align 8
  %28 = call i32 @mtx_lock(%struct.mtx* %27)
  %29 = load %struct.file*, %struct.file** %4, align 8
  %30 = getelementptr inbounds %struct.file, %struct.file* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = icmp ne %struct.TYPE_3__* %31, null
  br i1 %32, label %33, label %63

33:                                               ; preds = %23
  %34 = load %struct.uio*, %struct.uio** %5, align 8
  %35 = getelementptr inbounds %struct.uio, %struct.uio* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.file*, %struct.file** %4, align 8
  %38 = getelementptr inbounds %struct.file, %struct.file* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp sge i64 %36, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %33
  %44 = load %struct.uio*, %struct.uio** %5, align 8
  %45 = getelementptr inbounds %struct.uio, %struct.uio* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.uio*, %struct.uio** %5, align 8
  %48 = getelementptr inbounds %struct.uio, %struct.uio* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = load %struct.file*, %struct.file** %4, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 0
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp sle i64 %50, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %43
  %58 = load %struct.file*, %struct.file** %4, align 8
  %59 = getelementptr inbounds %struct.file, %struct.file* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %7, align 4
  br label %63

63:                                               ; preds = %57, %43, %33, %23
  %64 = load %struct.mtx*, %struct.mtx** %6, align 8
  %65 = call i32 @mtx_unlock(%struct.mtx* %64)
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %21
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.mtx* @mtx_pool_find(i32, %struct.file*) #1

declare dso_local i32 @mtx_lock(%struct.mtx*) #1

declare dso_local i32 @mtx_unlock(%struct.mtx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
