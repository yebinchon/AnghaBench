; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_shm_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_shm_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.shmfd* }
%struct.shmfd = type { i32, i32, i32, i32 }
%struct.uio = type { i64, i64 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.uio*, %struct.ucred*, i32, %struct.thread*)* @shm_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shm_read(%struct.file* %0, %struct.uio* %1, %struct.ucred* %2, i32 %3, %struct.thread* %4) #0 {
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
  %21 = load %struct.shmfd*, %struct.shmfd** %11, align 8
  %22 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %21, i32 0, i32 1
  %23 = load %struct.uio*, %struct.uio** %7, align 8
  %24 = getelementptr inbounds %struct.uio, %struct.uio* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.uio*, %struct.uio** %7, align 8
  %27 = getelementptr inbounds %struct.uio, %struct.uio* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.uio*, %struct.uio** %7, align 8
  %30 = getelementptr inbounds %struct.uio, %struct.uio* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load %struct.shmfd*, %struct.shmfd** %11, align 8
  %34 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %33, i32 0, i32 0
  %35 = call i8* @rangelock_rlock(i32* %22, i64 %25, i64 %32, i32* %34)
  store i8* %35, i8** %12, align 8
  %36 = load %struct.shmfd*, %struct.shmfd** %11, align 8
  %37 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.shmfd*, %struct.shmfd** %11, align 8
  %40 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.uio*, %struct.uio** %7, align 8
  %43 = call i32 @uiomove_object(i32 %38, i32 %41, %struct.uio* %42)
  store i32 %43, i32* %13, align 4
  %44 = load %struct.shmfd*, %struct.shmfd** %11, align 8
  %45 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %44, i32 0, i32 1
  %46 = load i8*, i8** %12, align 8
  %47 = load %struct.shmfd*, %struct.shmfd** %11, align 8
  %48 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %47, i32 0, i32 0
  %49 = call i32 @rangelock_unlock(i32* %45, i8* %46, i32* %48)
  %50 = load %struct.file*, %struct.file** %6, align 8
  %51 = load %struct.uio*, %struct.uio** %7, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @foffset_unlock_uio(%struct.file* %50, %struct.uio* %51, i32 %52)
  %54 = load i32, i32* %13, align 4
  ret i32 %54
}

declare dso_local i32 @foffset_lock_uio(%struct.file*, %struct.uio*, i32) #1

declare dso_local i8* @rangelock_rlock(i32*, i64, i64, i32*) #1

declare dso_local i32 @uiomove_object(i32, i32, %struct.uio*) #1

declare dso_local i32 @rangelock_unlock(i32*, i8*, i32*) #1

declare dso_local i32 @foffset_unlock_uio(%struct.file*, %struct.uio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
