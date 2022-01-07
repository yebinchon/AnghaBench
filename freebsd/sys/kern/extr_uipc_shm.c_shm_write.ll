; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_shm_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_shm_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.shmfd* }
%struct.shmfd = type { i32, i32, i32, i32, i32 }
%struct.uio = type { i64, i64 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

@FOF_OFFSET = common dso_local global i32 0, align 4
@OFF_MAX = common dso_local global i64 0, align 8
@F_SEAL_WRITE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.uio*, %struct.ucred*, i32, %struct.thread*)* @shm_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shm_write(%struct.file* %0, %struct.uio* %1, %struct.ucred* %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.uio*, align 8
  %8 = alloca %struct.ucred*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.thread*, align 8
  %11 = alloca %struct.shmfd*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %6, align 8
  store %struct.uio* %1, %struct.uio** %7, align 8
  store %struct.ucred* %2, %struct.ucred** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.thread* %4, %struct.thread** %10, align 8
  %14 = load %struct.file*, %struct.file** %6, align 8
  %15 = getelementptr inbounds %struct.file, %struct.file* %14, i32 0, i32 1
  %16 = load %struct.shmfd*, %struct.shmfd** %15, align 8
  store %struct.shmfd* %16, %struct.shmfd** %11, align 8
  %17 = load %struct.file*, %struct.file** %6, align 8
  %18 = load %struct.uio*, %struct.uio** %7, align 8
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @foffset_lock_uio(%struct.file* %17, %struct.uio* %18, i32 %19)
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @FOF_OFFSET, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %5
  %26 = load %struct.shmfd*, %struct.shmfd** %11, align 8
  %27 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %26, i32 0, i32 2
  %28 = load i64, i64* @OFF_MAX, align 8
  %29 = load %struct.shmfd*, %struct.shmfd** %11, align 8
  %30 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %29, i32 0, i32 1
  %31 = call i8* @rangelock_wlock(i32* %27, i64 0, i64 %28, i32* %30)
  store i8* %31, i8** %12, align 8
  br label %48

32:                                               ; preds = %5
  %33 = load %struct.shmfd*, %struct.shmfd** %11, align 8
  %34 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %33, i32 0, i32 2
  %35 = load %struct.uio*, %struct.uio** %7, align 8
  %36 = getelementptr inbounds %struct.uio, %struct.uio* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.uio*, %struct.uio** %7, align 8
  %39 = getelementptr inbounds %struct.uio, %struct.uio* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.uio*, %struct.uio** %7, align 8
  %42 = getelementptr inbounds %struct.uio, %struct.uio* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %40, %43
  %45 = load %struct.shmfd*, %struct.shmfd** %11, align 8
  %46 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %45, i32 0, i32 1
  %47 = call i8* @rangelock_wlock(i32* %34, i64 %37, i64 %44, i32* %46)
  store i8* %47, i8** %12, align 8
  br label %48

48:                                               ; preds = %32, %25
  %49 = load %struct.shmfd*, %struct.shmfd** %11, align 8
  %50 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @F_SEAL_WRITE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @EPERM, align 4
  store i32 %56, i32* %13, align 4
  br label %66

57:                                               ; preds = %48
  %58 = load %struct.shmfd*, %struct.shmfd** %11, align 8
  %59 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.shmfd*, %struct.shmfd** %11, align 8
  %62 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.uio*, %struct.uio** %7, align 8
  %65 = call i32 @uiomove_object(i32 %60, i32 %63, %struct.uio* %64)
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %57, %55
  %67 = load %struct.shmfd*, %struct.shmfd** %11, align 8
  %68 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %67, i32 0, i32 2
  %69 = load i8*, i8** %12, align 8
  %70 = load %struct.shmfd*, %struct.shmfd** %11, align 8
  %71 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %70, i32 0, i32 1
  %72 = call i32 @rangelock_unlock(i32* %68, i8* %69, i32* %71)
  %73 = load %struct.file*, %struct.file** %6, align 8
  %74 = load %struct.uio*, %struct.uio** %7, align 8
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @foffset_unlock_uio(%struct.file* %73, %struct.uio* %74, i32 %75)
  %77 = load i32, i32* %13, align 4
  ret i32 %77
}

declare dso_local i32 @foffset_lock_uio(%struct.file*, %struct.uio*, i32) #1

declare dso_local i8* @rangelock_wlock(i32*, i64, i64, i32*) #1

declare dso_local i32 @uiomove_object(i32, i32, %struct.uio*) #1

declare dso_local i32 @rangelock_unlock(i32*, i8*, i32*) #1

declare dso_local i32 @foffset_unlock_uio(%struct.file*, %struct.uio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
