; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_posix_shm.c_mac_posixshm_check_mmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_posix_shm.c_mac_posixshm_check_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.shmfd = type { i32 }

@posixshm_check_mmap = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_posixshm_check_mmap(%struct.ucred* %0, %struct.shmfd* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ucred*, align 8
  %6 = alloca %struct.shmfd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %5, align 8
  store %struct.shmfd* %1, %struct.shmfd** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @posixshm_check_mmap, align 4
  %11 = load %struct.ucred*, %struct.ucred** %5, align 8
  %12 = load %struct.shmfd*, %struct.shmfd** %6, align 8
  %13 = load %struct.shmfd*, %struct.shmfd** %6, align 8
  %14 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @MAC_POLICY_CHECK_NOSLEEP(i32 %10, %struct.ucred* %11, %struct.shmfd* %12, i32 %15, i32 %16, i32 %17)
  %19 = load i32, i32* @posixshm_check_mmap, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.ucred*, %struct.ucred** %5, align 8
  %22 = load %struct.shmfd*, %struct.shmfd** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @MAC_CHECK_PROBE4(i32 %19, i32 %20, %struct.ucred* %21, %struct.shmfd* %22, i32 %23, i32 %24)
  %26 = load i32, i32* %9, align 4
  ret i32 %26
}

declare dso_local i32 @MAC_POLICY_CHECK_NOSLEEP(i32, %struct.ucred*, %struct.shmfd*, i32, i32, i32) #1

declare dso_local i32 @MAC_CHECK_PROBE4(i32, i32, %struct.ucred*, %struct.shmfd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
