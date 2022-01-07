; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_shm_find_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_umtx_shm_find_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umtx_shm_reg = type { i32 }
%struct.umtx_key = type { i32 }

@umtx_shm_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.umtx_shm_reg* (%struct.umtx_key*)* @umtx_shm_find_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.umtx_shm_reg* @umtx_shm_find_reg(%struct.umtx_key* %0) #0 {
  %2 = alloca %struct.umtx_key*, align 8
  %3 = alloca %struct.umtx_shm_reg*, align 8
  store %struct.umtx_key* %0, %struct.umtx_key** %2, align 8
  %4 = call i32 @mtx_lock(i32* @umtx_shm_lock)
  %5 = load %struct.umtx_key*, %struct.umtx_key** %2, align 8
  %6 = call %struct.umtx_shm_reg* @umtx_shm_find_reg_locked(%struct.umtx_key* %5)
  store %struct.umtx_shm_reg* %6, %struct.umtx_shm_reg** %3, align 8
  %7 = call i32 @mtx_unlock(i32* @umtx_shm_lock)
  %8 = load %struct.umtx_shm_reg*, %struct.umtx_shm_reg** %3, align 8
  ret %struct.umtx_shm_reg* %8
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.umtx_shm_reg* @umtx_shm_find_reg_locked(%struct.umtx_key*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
