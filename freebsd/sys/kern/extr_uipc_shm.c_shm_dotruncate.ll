; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_shm_dotruncate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_shm_dotruncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shmfd = type { i32, i32, i32 }

@OFF_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @shm_dotruncate(%struct.shmfd* %0, i32 %1) #0 {
  %3 = alloca %struct.shmfd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.shmfd* %0, %struct.shmfd** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.shmfd*, %struct.shmfd** %3, align 8
  %8 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %7, i32 0, i32 1
  %9 = load i32, i32* @OFF_MAX, align 4
  %10 = load %struct.shmfd*, %struct.shmfd** %3, align 8
  %11 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %10, i32 0, i32 0
  %12 = call i8* @rangelock_wlock(i32* %8, i32 0, i32 %9, i32* %11)
  store i8* %12, i8** %5, align 8
  %13 = load %struct.shmfd*, %struct.shmfd** %3, align 8
  %14 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @VM_OBJECT_WLOCK(i32 %15)
  %17 = load %struct.shmfd*, %struct.shmfd** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i8*, i8** %5, align 8
  %20 = call i32 @shm_dotruncate_locked(%struct.shmfd* %17, i32 %18, i8* %19)
  store i32 %20, i32* %6, align 4
  %21 = load %struct.shmfd*, %struct.shmfd** %3, align 8
  %22 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @VM_OBJECT_WUNLOCK(i32 %23)
  %25 = load %struct.shmfd*, %struct.shmfd** %3, align 8
  %26 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %25, i32 0, i32 1
  %27 = load i8*, i8** %5, align 8
  %28 = load %struct.shmfd*, %struct.shmfd** %3, align 8
  %29 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %28, i32 0, i32 0
  %30 = call i32 @rangelock_unlock(i32* %26, i8* %27, i32* %29)
  %31 = load i32, i32* %6, align 4
  ret i32 %31
}

declare dso_local i8* @rangelock_wlock(i32*, i32, i32, i32*) #1

declare dso_local i32 @VM_OBJECT_WLOCK(i32) #1

declare dso_local i32 @shm_dotruncate_locked(%struct.shmfd*, i32, i8*) #1

declare dso_local i32 @VM_OBJECT_WUNLOCK(i32) #1

declare dso_local i32 @rangelock_unlock(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
