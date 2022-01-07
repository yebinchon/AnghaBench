; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_unp_connect2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_uipc_usrreq.c_unp_connect2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.unpcb = type { i32, %struct.unpcb*, i32 }

@.str = private unnamed_addr constant [26 x i8] c"unp_connect2: unp == NULL\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"unp_connect2: unp2 == NULL\00", align 1
@EPROTOTYPE = common dso_local global i32 0, align 4
@UNP_NASCENT = common dso_local global i32 0, align 4
@unp_reflink = common dso_local global i32 0, align 4
@PRU_CONNECT = common dso_local global i32 0, align 4
@UNP_CONNWAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"unp_connect2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.socket*, i32)* @unp_connect2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unp_connect2(%struct.socket* %0, %struct.socket* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.unpcb*, align 8
  %9 = alloca %struct.unpcb*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.socket* %1, %struct.socket** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.socket*, %struct.socket** %5, align 8
  %11 = call %struct.unpcb* @sotounpcb(%struct.socket* %10)
  store %struct.unpcb* %11, %struct.unpcb** %8, align 8
  %12 = load %struct.unpcb*, %struct.unpcb** %8, align 8
  %13 = icmp ne %struct.unpcb* %12, null
  %14 = zext i1 %13 to i32
  %15 = call i32 @KASSERT(i32 %14, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.socket*, %struct.socket** %6, align 8
  %17 = call %struct.unpcb* @sotounpcb(%struct.socket* %16)
  store %struct.unpcb* %17, %struct.unpcb** %9, align 8
  %18 = load %struct.unpcb*, %struct.unpcb** %9, align 8
  %19 = icmp ne %struct.unpcb* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @KASSERT(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %22 = load %struct.unpcb*, %struct.unpcb** %8, align 8
  %23 = call i32 @UNP_PCB_LOCK_ASSERT(%struct.unpcb* %22)
  %24 = load %struct.unpcb*, %struct.unpcb** %9, align 8
  %25 = call i32 @UNP_PCB_LOCK_ASSERT(%struct.unpcb* %24)
  %26 = load %struct.socket*, %struct.socket** %6, align 8
  %27 = getelementptr inbounds %struct.socket, %struct.socket* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.socket*, %struct.socket** %5, align 8
  %30 = getelementptr inbounds %struct.socket, %struct.socket* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %3
  %34 = load i32, i32* @EPROTOTYPE, align 4
  store i32 %34, i32* %4, align 4
  br label %92

35:                                               ; preds = %3
  %36 = load i32, i32* @UNP_NASCENT, align 4
  %37 = xor i32 %36, -1
  %38 = load %struct.unpcb*, %struct.unpcb** %9, align 8
  %39 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  %42 = load %struct.unpcb*, %struct.unpcb** %9, align 8
  %43 = load %struct.unpcb*, %struct.unpcb** %8, align 8
  %44 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %43, i32 0, i32 1
  store %struct.unpcb* %42, %struct.unpcb** %44, align 8
  %45 = load %struct.unpcb*, %struct.unpcb** %9, align 8
  %46 = call i32 @unp_pcb_hold(%struct.unpcb* %45)
  %47 = load %struct.unpcb*, %struct.unpcb** %8, align 8
  %48 = call i32 @unp_pcb_hold(%struct.unpcb* %47)
  %49 = load %struct.socket*, %struct.socket** %5, align 8
  %50 = getelementptr inbounds %struct.socket, %struct.socket* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  switch i32 %51, label %89 [
    i32 130, label %52
    i32 128, label %62
    i32 129, label %62
  ]

52:                                               ; preds = %35
  %53 = call i32 (...) @UNP_REF_LIST_LOCK()
  %54 = load %struct.unpcb*, %struct.unpcb** %9, align 8
  %55 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %54, i32 0, i32 2
  %56 = load %struct.unpcb*, %struct.unpcb** %8, align 8
  %57 = load i32, i32* @unp_reflink, align 4
  %58 = call i32 @LIST_INSERT_HEAD(i32* %55, %struct.unpcb* %56, i32 %57)
  %59 = call i32 (...) @UNP_REF_LIST_UNLOCK()
  %60 = load %struct.socket*, %struct.socket** %5, align 8
  %61 = call i32 @soisconnected(%struct.socket* %60)
  br label %91

62:                                               ; preds = %35, %35
  %63 = load %struct.unpcb*, %struct.unpcb** %8, align 8
  %64 = load %struct.unpcb*, %struct.unpcb** %9, align 8
  %65 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %64, i32 0, i32 1
  store %struct.unpcb* %63, %struct.unpcb** %65, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @PRU_CONNECT, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %62
  %70 = load %struct.unpcb*, %struct.unpcb** %8, align 8
  %71 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.unpcb*, %struct.unpcb** %9, align 8
  %74 = getelementptr inbounds %struct.unpcb, %struct.unpcb* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %72, %75
  %77 = load i32, i32* @UNP_CONNWAIT, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %69
  %81 = load %struct.socket*, %struct.socket** %5, align 8
  %82 = call i32 @soisconnecting(%struct.socket* %81)
  br label %86

83:                                               ; preds = %69, %62
  %84 = load %struct.socket*, %struct.socket** %5, align 8
  %85 = call i32 @soisconnected(%struct.socket* %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load %struct.socket*, %struct.socket** %6, align 8
  %88 = call i32 @soisconnected(%struct.socket* %87)
  br label %91

89:                                               ; preds = %35
  %90 = call i32 @panic(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %86, %52
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %33
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.unpcb* @sotounpcb(%struct.socket*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @UNP_PCB_LOCK_ASSERT(%struct.unpcb*) #1

declare dso_local i32 @unp_pcb_hold(%struct.unpcb*) #1

declare dso_local i32 @UNP_REF_LIST_LOCK(...) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.unpcb*, i32) #1

declare dso_local i32 @UNP_REF_LIST_UNLOCK(...) #1

declare dso_local i32 @soisconnected(%struct.socket*) #1

declare dso_local i32 @soisconnecting(%struct.socket*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
