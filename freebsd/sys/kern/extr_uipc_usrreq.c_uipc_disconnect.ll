; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_uipc_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_uipc_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.unpcb = type { %struct.unpcb* }

@.str = private unnamed_addr constant [29 x i8] c"uipc_disconnect: unp == NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*)* @uipc_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uipc_disconnect(%struct.socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.unpcb*, align 8
  %5 = alloca %struct.unpcb*, align 8
  %6 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  %7 = load %struct.socket*, %struct.socket** %3, align 8
  %8 = call %struct.unpcb* @sotounpcb(%struct.socket* %7)
  store %struct.unpcb* %8, %struct.unpcb** %4, align 8
  %9 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %10 = icmp ne %struct.unpcb* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @KASSERT(i32 %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %14 = call i32 @UNP_PCB_LOCK(%struct.unpcb* %13)
  %15 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %16 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %15, i32 0, i32 0
  %17 = load %struct.unpcb*, %struct.unpcb** %16, align 8
  store %struct.unpcb* %17, %struct.unpcb** %5, align 8
  %18 = icmp eq %struct.unpcb* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %21 = call i32 @UNP_PCB_UNLOCK(%struct.unpcb* %20)
  store i32 0, i32* %2, align 4
  br label %67

22:                                               ; preds = %1
  %23 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %24 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %25 = icmp ne %struct.unpcb* %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @__predict_true(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %22
  %30 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %31 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @unp_pcb_owned_lock2(%struct.unpcb* %30, %struct.unpcb* %31, i32 %32)
  %34 = load i32, i32* %6, align 4
  %35 = call i64 @__predict_false(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %29
  %38 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %39 = call i32 @UNP_PCB_UNLOCK(%struct.unpcb* %38)
  store i32 0, i32* %2, align 4
  br label %67

40:                                               ; preds = %29
  %41 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %42 = call i32 @unp_pcb_hold(%struct.unpcb* %41)
  br label %43

43:                                               ; preds = %40, %22
  %44 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %45 = call i32 @unp_pcb_hold(%struct.unpcb* %44)
  %46 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %47 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %48 = call i32 @unp_disconnect(%struct.unpcb* %46, %struct.unpcb* %47)
  %49 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %50 = call i64 @unp_pcb_rele(%struct.unpcb* %49)
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %43
  %53 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %54 = call i32 @UNP_PCB_UNLOCK(%struct.unpcb* %53)
  br label %55

55:                                               ; preds = %52, %43
  %56 = load %struct.unpcb*, %struct.unpcb** %4, align 8
  %57 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %58 = icmp ne %struct.unpcb* %56, %57
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %61 = call i64 @unp_pcb_rele(%struct.unpcb* %60)
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %65 = call i32 @UNP_PCB_UNLOCK(%struct.unpcb* %64)
  br label %66

66:                                               ; preds = %63, %59, %55
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %37, %19
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local %struct.unpcb* @sotounpcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @UNP_PCB_LOCK(%struct.unpcb*) #1

declare dso_local i32 @UNP_PCB_UNLOCK(%struct.unpcb*) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @unp_pcb_owned_lock2(%struct.unpcb*, %struct.unpcb*, i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @unp_pcb_hold(%struct.unpcb*) #1

declare dso_local i32 @unp_disconnect(%struct.unpcb*, %struct.unpcb*) #1

declare dso_local i64 @unp_pcb_rele(%struct.unpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
