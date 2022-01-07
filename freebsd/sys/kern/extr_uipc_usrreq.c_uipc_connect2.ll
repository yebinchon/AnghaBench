; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_uipc_connect2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_uipc_connect2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.unpcb* }
%struct.unpcb = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"uipc_connect2: unp == NULL\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"uipc_connect2: unp2 == NULL\00", align 1
@PRU_CONNECT2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*)* @uipc_connect2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uipc_connect2(%struct.socket* %0, %struct.socket* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca %struct.unpcb*, align 8
  %6 = alloca %struct.unpcb*, align 8
  %7 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %3, align 8
  store %struct.socket* %1, %struct.socket** %4, align 8
  %8 = load %struct.socket*, %struct.socket** %3, align 8
  %9 = getelementptr inbounds %struct.socket, %struct.socket* %8, i32 0, i32 0
  %10 = load %struct.unpcb*, %struct.unpcb** %9, align 8
  store %struct.unpcb* %10, %struct.unpcb** %5, align 8
  %11 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %12 = icmp ne %struct.unpcb* %11, null
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.socket*, %struct.socket** %4, align 8
  %16 = getelementptr inbounds %struct.socket, %struct.socket* %15, i32 0, i32 0
  %17 = load %struct.unpcb*, %struct.unpcb** %16, align 8
  store %struct.unpcb* %17, %struct.unpcb** %6, align 8
  %18 = load %struct.unpcb*, %struct.unpcb** %6, align 8
  %19 = icmp ne %struct.unpcb* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %23 = load %struct.unpcb*, %struct.unpcb** %6, align 8
  %24 = icmp ne %struct.unpcb* %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %27 = load %struct.unpcb*, %struct.unpcb** %6, align 8
  %28 = call i32 @unp_pcb_lock2(%struct.unpcb* %26, %struct.unpcb* %27)
  br label %32

29:                                               ; preds = %2
  %30 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %31 = call i32 @UNP_PCB_LOCK(%struct.unpcb* %30)
  br label %32

32:                                               ; preds = %29, %25
  %33 = load %struct.socket*, %struct.socket** %3, align 8
  %34 = load %struct.socket*, %struct.socket** %4, align 8
  %35 = load i32, i32* @PRU_CONNECT2, align 4
  %36 = call i32 @unp_connect2(%struct.socket* %33, %struct.socket* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %38 = load %struct.unpcb*, %struct.unpcb** %6, align 8
  %39 = icmp ne %struct.unpcb* %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %32
  %41 = load %struct.unpcb*, %struct.unpcb** %6, align 8
  %42 = call i32 @UNP_PCB_UNLOCK(%struct.unpcb* %41)
  br label %43

43:                                               ; preds = %40, %32
  %44 = load %struct.unpcb*, %struct.unpcb** %5, align 8
  %45 = call i32 @UNP_PCB_UNLOCK(%struct.unpcb* %44)
  %46 = load i32, i32* %7, align 4
  ret i32 %46
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @unp_pcb_lock2(%struct.unpcb*, %struct.unpcb*) #1

declare dso_local i32 @UNP_PCB_LOCK(%struct.unpcb*) #1

declare dso_local i32 @unp_connect2(%struct.socket*, %struct.socket*, i32) #1

declare dso_local i32 @UNP_PCB_UNLOCK(%struct.unpcb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
