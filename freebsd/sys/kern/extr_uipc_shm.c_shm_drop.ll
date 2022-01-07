; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_shm_drop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_shm.c_shm_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.shmfd = type { i32, i32, i32, i32 }

@M_SHMFD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @shm_drop(%struct.shmfd* %0) #0 {
  %2 = alloca %struct.shmfd*, align 8
  store %struct.shmfd* %0, %struct.shmfd** %2, align 8
  %3 = load %struct.shmfd*, %struct.shmfd** %2, align 8
  %4 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %3, i32 0, i32 3
  %5 = call i64 @refcount_release(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %21

7:                                                ; preds = %1
  %8 = load %struct.shmfd*, %struct.shmfd** %2, align 8
  %9 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %8, i32 0, i32 2
  %10 = call i32 @rangelock_destroy(i32* %9)
  %11 = load %struct.shmfd*, %struct.shmfd** %2, align 8
  %12 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %11, i32 0, i32 1
  %13 = call i32 @mtx_destroy(i32* %12)
  %14 = load %struct.shmfd*, %struct.shmfd** %2, align 8
  %15 = getelementptr inbounds %struct.shmfd, %struct.shmfd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @vm_object_deallocate(i32 %16)
  %18 = load %struct.shmfd*, %struct.shmfd** %2, align 8
  %19 = load i32, i32* @M_SHMFD, align 4
  %20 = call i32 @free(%struct.shmfd* %18, i32 %19)
  br label %21

21:                                               ; preds = %7, %1
  ret void
}

declare dso_local i64 @refcount_release(i32*) #1

declare dso_local i32 @rangelock_destroy(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @vm_object_deallocate(i32) #1

declare dso_local i32 @free(%struct.shmfd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
