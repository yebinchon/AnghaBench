; ModuleID = '/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_sysv_shm.c_mac_sysvshm_check_shmdt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/security/mac/extr_mac_sysv_shm.c_mac_sysvshm_check_shmdt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucred = type { i32 }
%struct.shmid_kernel = type { i32 }

@sysvshm_check_shmdt = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mac_sysvshm_check_shmdt(%struct.ucred* %0, %struct.shmid_kernel* %1) #0 {
  %3 = alloca %struct.ucred*, align 8
  %4 = alloca %struct.shmid_kernel*, align 8
  %5 = alloca i32, align 4
  store %struct.ucred* %0, %struct.ucred** %3, align 8
  store %struct.shmid_kernel* %1, %struct.shmid_kernel** %4, align 8
  %6 = load i32, i32* @sysvshm_check_shmdt, align 4
  %7 = load %struct.ucred*, %struct.ucred** %3, align 8
  %8 = load %struct.shmid_kernel*, %struct.shmid_kernel** %4, align 8
  %9 = load %struct.shmid_kernel*, %struct.shmid_kernel** %4, align 8
  %10 = getelementptr inbounds %struct.shmid_kernel, %struct.shmid_kernel* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @MAC_POLICY_CHECK_NOSLEEP(i32 %6, %struct.ucred* %7, %struct.shmid_kernel* %8, i32 %11)
  %13 = load i32, i32* @sysvshm_check_shmdt, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.ucred*, %struct.ucred** %3, align 8
  %16 = load %struct.shmid_kernel*, %struct.shmid_kernel** %4, align 8
  %17 = call i32 @MAC_CHECK_PROBE2(i32 %13, i32 %14, %struct.ucred* %15, %struct.shmid_kernel* %16)
  %18 = load i32, i32* %5, align 4
  ret i32 %18
}

declare dso_local i32 @MAC_POLICY_CHECK_NOSLEEP(i32, %struct.ucred*, %struct.shmid_kernel*, i32) #1

declare dso_local i32 @MAC_CHECK_PROBE2(i32, i32, %struct.ucred*, %struct.shmid_kernel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
