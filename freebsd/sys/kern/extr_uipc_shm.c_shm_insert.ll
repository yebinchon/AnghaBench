; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_shm_insert.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_shm_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shmfd = type { i8* }
%struct.shm_mapping = type { i8*, i32, i32 }

@M_SHMFD = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@sm_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, %struct.shmfd*)* @shm_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shm_insert(i8* %0, i32 %1, %struct.shmfd* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.shmfd*, align 8
  %7 = alloca %struct.shm_mapping*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.shmfd* %2, %struct.shmfd** %6, align 8
  %8 = load i32, i32* @M_SHMFD, align 4
  %9 = load i32, i32* @M_WAITOK, align 4
  %10 = call %struct.shm_mapping* @malloc(i32 16, i32 %8, i32 %9)
  store %struct.shm_mapping* %10, %struct.shm_mapping** %7, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load %struct.shm_mapping*, %struct.shm_mapping** %7, align 8
  %13 = getelementptr inbounds %struct.shm_mapping, %struct.shm_mapping* %12, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.shm_mapping*, %struct.shm_mapping** %7, align 8
  %16 = getelementptr inbounds %struct.shm_mapping, %struct.shm_mapping* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 4
  %17 = load %struct.shmfd*, %struct.shmfd** %6, align 8
  %18 = call i32 @shm_hold(%struct.shmfd* %17)
  %19 = load %struct.shm_mapping*, %struct.shm_mapping** %7, align 8
  %20 = getelementptr inbounds %struct.shm_mapping, %struct.shm_mapping* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load i8*, i8** %4, align 8
  %22 = load %struct.shmfd*, %struct.shmfd** %6, align 8
  %23 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %22, i32 0, i32 0
  store i8* %21, i8** %23, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @SHM_HASH(i32 %24)
  %26 = load %struct.shm_mapping*, %struct.shm_mapping** %7, align 8
  %27 = load i32, i32* @sm_link, align 4
  %28 = call i32 @LIST_INSERT_HEAD(i32 %25, %struct.shm_mapping* %26, i32 %27)
  ret void
}

declare dso_local %struct.shm_mapping* @malloc(i32, i32, i32) #1

declare dso_local i32 @shm_hold(%struct.shmfd*) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32, %struct.shm_mapping*, i32) #1

declare dso_local i32 @SHM_HASH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
