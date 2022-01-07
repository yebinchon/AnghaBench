; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_unp_drop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_unp_drop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unpcb = type { %struct.unpcb*, %struct.socket* }
%struct.socket = type { i32 }

@ECONNRESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.unpcb*)* @unp_drop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unp_drop(%struct.unpcb* %0) #0 {
  %2 = alloca %struct.unpcb*, align 8
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.unpcb*, align 8
  %5 = alloca i32, align 4
  store %struct.unpcb* %0, %struct.unpcb** %2, align 8
  %6 = load %struct.unpcb*, %struct.unpcb** %2, align 8
  %7 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %6, i32 0, i32 1
  %8 = load %struct.socket*, %struct.socket** %7, align 8
  store %struct.socket* %8, %struct.socket** %3, align 8
  %9 = load %struct.unpcb*, %struct.unpcb** %2, align 8
  %10 = call i32 @UNP_PCB_LOCK(%struct.unpcb* %9)
  %11 = load %struct.socket*, %struct.socket** %3, align 8
  %12 = icmp ne %struct.socket* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32, i32* @ECONNRESET, align 4
  %15 = load %struct.socket*, %struct.socket** %3, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  br label %17

17:                                               ; preds = %13, %1
  %18 = load %struct.unpcb*, %struct.unpcb** %2, align 8
  %19 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %18, i32 0, i32 0
  %20 = load %struct.unpcb*, %struct.unpcb** %19, align 8
  store %struct.unpcb* %20, %struct.unpcb** %4, align 8
  %21 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %22 = load %struct.unpcb*, %struct.unpcb** %2, align 8
  %23 = icmp eq %struct.unpcb* %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load %struct.unpcb*, %struct.unpcb** %2, align 8
  %26 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %27 = call i32 @unp_disconnect(%struct.unpcb* %25, %struct.unpcb* %26)
  br label %49

28:                                               ; preds = %17
  %29 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %30 = icmp ne %struct.unpcb* %29, null
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %33 = call i32 @unp_pcb_hold(%struct.unpcb* %32)
  %34 = load %struct.unpcb*, %struct.unpcb** %2, align 8
  %35 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @unp_pcb_owned_lock2(%struct.unpcb* %34, %struct.unpcb* %35, i32 %36)
  %38 = load %struct.unpcb*, %struct.unpcb** %2, align 8
  %39 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %40 = call i32 @unp_disconnect(%struct.unpcb* %38, %struct.unpcb* %39)
  %41 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %42 = call i64 @unp_pcb_rele(%struct.unpcb* %41)
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %46 = call i32 @UNP_PCB_UNLOCK(%struct.unpcb* %45)
  br label %47

47:                                               ; preds = %44, %31
  br label %48

48:                                               ; preds = %47, %28
  br label %49

49:                                               ; preds = %48, %24
  %50 = load %struct.unpcb*, %struct.unpcb** %2, align 8
  %51 = call i64 @unp_pcb_rele(%struct.unpcb* %50)
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load %struct.unpcb*, %struct.unpcb** %2, align 8
  %55 = call i32 @UNP_PCB_UNLOCK(%struct.unpcb* %54)
  br label %56

56:                                               ; preds = %53, %49
  ret void
}

declare dso_local i32 @UNP_PCB_LOCK(%struct.unpcb*) #1

declare dso_local i32 @unp_disconnect(%struct.unpcb*, %struct.unpcb*) #1

declare dso_local i32 @unp_pcb_hold(%struct.unpcb*) #1

declare dso_local i32 @unp_pcb_owned_lock2(%struct.unpcb*, %struct.unpcb*, i32) #1

declare dso_local i64 @unp_pcb_rele(%struct.unpcb*) #1

declare dso_local i32 @UNP_PCB_UNLOCK(%struct.unpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
