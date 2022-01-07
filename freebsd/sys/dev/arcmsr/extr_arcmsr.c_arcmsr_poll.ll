; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%struct.AdapterControlBlock = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*)* @arcmsr_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_poll(%struct.cam_sim* %0) #0 {
  %2 = alloca %struct.cam_sim*, align 8
  %3 = alloca %struct.AdapterControlBlock*, align 8
  %4 = alloca i32, align 4
  store %struct.cam_sim* %0, %struct.cam_sim** %2, align 8
  %5 = load %struct.cam_sim*, %struct.cam_sim** %2, align 8
  %6 = call i64 @cam_sim_softc(%struct.cam_sim* %5)
  %7 = inttoptr i64 %6 to %struct.AdapterControlBlock*
  store %struct.AdapterControlBlock* %7, %struct.AdapterControlBlock** %3, align 8
  %8 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %9 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %8, i32 0, i32 0
  %10 = call i32 @mtx_owned(i32* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %15 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %14, i32 0, i32 0
  %16 = call i32 @ARCMSR_LOCK_ACQUIRE(i32* %15)
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %19 = call i32 @arcmsr_interrupt(%struct.AdapterControlBlock* %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %3, align 8
  %24 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %23, i32 0, i32 0
  %25 = call i32 @ARCMSR_LOCK_RELEASE(i32* %24)
  br label %26

26:                                               ; preds = %22, %17
  ret void
}

declare dso_local i64 @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @mtx_owned(i32*) #1

declare dso_local i32 @ARCMSR_LOCK_ACQUIRE(i32*) #1

declare dso_local i32 @arcmsr_interrupt(%struct.AdapterControlBlock*) #1

declare dso_local i32 @ARCMSR_LOCK_RELEASE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
