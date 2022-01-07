; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_shm_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_shm_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.shmfd* }
%struct.shmfd = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.stat = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ucred = type { i32 }
%struct.thread = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@shm_timestamp_lock = common dso_local global i32 0, align 4
@S_IFREG = common dso_local global i32 0, align 4
@shm_dev_ino = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.stat*, %struct.ucred*, %struct.thread*)* @shm_stat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @shm_stat(%struct.file* %0, %struct.stat* %1, %struct.ucred* %2, %struct.thread* %3) #0 {
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.stat*, align 8
  %7 = alloca %struct.ucred*, align 8
  %8 = alloca %struct.thread*, align 8
  %9 = alloca %struct.shmfd*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.stat* %1, %struct.stat** %6, align 8
  store %struct.ucred* %2, %struct.ucred** %7, align 8
  store %struct.thread* %3, %struct.thread** %8, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 1
  %12 = load %struct.shmfd*, %struct.shmfd** %11, align 8
  store %struct.shmfd* %12, %struct.shmfd** %9, align 8
  %13 = load %struct.stat*, %struct.stat** %6, align 8
  %14 = call i32 @bzero(%struct.stat* %13, i32 52)
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = load %struct.stat*, %struct.stat** %6, align 8
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 10
  store i32 %15, i32* %17, align 4
  %18 = load %struct.shmfd*, %struct.shmfd** %9, align 8
  %19 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %18, i32 0, i32 9
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.stat*, %struct.stat** %6, align 8
  %22 = getelementptr inbounds %struct.stat, %struct.stat* %21, i32 0, i32 11
  store i32 %20, i32* %22, align 4
  %23 = load %struct.stat*, %struct.stat** %6, align 8
  %24 = getelementptr inbounds %struct.stat, %struct.stat* %23, i32 0, i32 11
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.stat*, %struct.stat** %6, align 8
  %27 = getelementptr inbounds %struct.stat, %struct.stat* %26, i32 0, i32 10
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @howmany(i32 %25, i32 %28)
  %30 = load %struct.stat*, %struct.stat** %6, align 8
  %31 = getelementptr inbounds %struct.stat, %struct.stat* %30, i32 0, i32 12
  store i32 %29, i32* %31, align 4
  %32 = call i32 @mtx_lock(i32* @shm_timestamp_lock)
  %33 = load %struct.shmfd*, %struct.shmfd** %9, align 8
  %34 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %33, i32 0, i32 8
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.stat*, %struct.stat** %6, align 8
  %37 = getelementptr inbounds %struct.stat, %struct.stat* %36, i32 0, i32 9
  store i32 %35, i32* %37, align 4
  %38 = load %struct.shmfd*, %struct.shmfd** %9, align 8
  %39 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %38, i32 0, i32 7
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.stat*, %struct.stat** %6, align 8
  %42 = getelementptr inbounds %struct.stat, %struct.stat* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 4
  %43 = load %struct.shmfd*, %struct.shmfd** %9, align 8
  %44 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.stat*, %struct.stat** %6, align 8
  %47 = getelementptr inbounds %struct.stat, %struct.stat* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 4
  %48 = load %struct.shmfd*, %struct.shmfd** %9, align 8
  %49 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.stat*, %struct.stat** %6, align 8
  %52 = getelementptr inbounds %struct.stat, %struct.stat* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @S_IFREG, align 4
  %54 = load %struct.shmfd*, %struct.shmfd** %9, align 8
  %55 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %53, %56
  %58 = load %struct.stat*, %struct.stat** %6, align 8
  %59 = getelementptr inbounds %struct.stat, %struct.stat* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  %60 = load %struct.shmfd*, %struct.shmfd** %9, align 8
  %61 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.stat*, %struct.stat** %6, align 8
  %64 = getelementptr inbounds %struct.stat, %struct.stat* %63, i32 0, i32 5
  store i32 %62, i32* %64, align 4
  %65 = load %struct.shmfd*, %struct.shmfd** %9, align 8
  %66 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.stat*, %struct.stat** %6, align 8
  %69 = getelementptr inbounds %struct.stat, %struct.stat* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 4
  %70 = call i32 @mtx_unlock(i32* @shm_timestamp_lock)
  %71 = load i32, i32* @shm_dev_ino, align 4
  %72 = load %struct.stat*, %struct.stat** %6, align 8
  %73 = getelementptr inbounds %struct.stat, %struct.stat* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  %74 = load %struct.shmfd*, %struct.shmfd** %9, align 8
  %75 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.stat*, %struct.stat** %6, align 8
  %78 = getelementptr inbounds %struct.stat, %struct.stat* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 4
  %79 = load %struct.shmfd*, %struct.shmfd** %9, align 8
  %80 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %79, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.stat*, %struct.stat** %6, align 8
  %85 = getelementptr inbounds %struct.stat, %struct.stat* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  ret i32 0
}

declare dso_local i32 @bzero(%struct.stat*, i32) #1

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
