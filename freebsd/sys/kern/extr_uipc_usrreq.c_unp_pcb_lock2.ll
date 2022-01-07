; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_unp_pcb_lock2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_unp_pcb_lock2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unpcb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unpcb*, %struct.unpcb*)* @unp_pcb_lock2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unp_pcb_lock2(%struct.unpcb* %0, %struct.unpcb* %1) #0 {
  %3 = alloca %struct.unpcb*, align 8
  %4 = alloca %struct.unpcb*, align 8
  store %struct.unpcb* %0, %struct.unpcb** %3, align 8
  store %struct.unpcb* %1, %struct.unpcb** %4, align 8
  %5 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %6 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %7 = icmp ne %struct.unpcb* %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i32 @MPASS(i32 %8)
  %10 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %11 = call i32 @UNP_PCB_UNLOCK_ASSERT(%struct.unpcb* %10)
  %12 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %13 = call i32 @UNP_PCB_UNLOCK_ASSERT(%struct.unpcb* %12)
  %14 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %15 = ptrtoint %struct.unpcb* %14 to i64
  %16 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %17 = ptrtoint %struct.unpcb* %16 to i64
  %18 = icmp ugt i64 %15, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %21 = call i32 @UNP_PCB_LOCK(%struct.unpcb* %20)
  %22 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %23 = call i32 @UNP_PCB_LOCK(%struct.unpcb* %22)
  br label %29

24:                                               ; preds = %2
  %25 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %26 = call i32 @UNP_PCB_LOCK(%struct.unpcb* %25)
  %27 = load %struct.unpcb*, %struct.unpcb** %3, align 8
  %28 = call i32 @UNP_PCB_LOCK(%struct.unpcb* %27)
  br label %29

29:                                               ; preds = %24, %19
  ret void
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @UNP_PCB_UNLOCK_ASSERT(%struct.unpcb*) #1

declare dso_local i32 @UNP_PCB_LOCK(%struct.unpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
