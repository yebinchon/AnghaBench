; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_port_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_port_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lagg_port = type { i32 }
%struct.lacp_port = type { i32, %struct.lacp_softc* }
%struct.lacp_softc = type { i32 }

@LACP_NTIMER = common dso_local global i32 0, align 4
@lp_next = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lacp_port_destroy(%struct.lagg_port* %0) #0 {
  %2 = alloca %struct.lagg_port*, align 8
  %3 = alloca %struct.lacp_port*, align 8
  %4 = alloca %struct.lacp_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.lagg_port* %0, %struct.lagg_port** %2, align 8
  %6 = load %struct.lagg_port*, %struct.lagg_port** %2, align 8
  %7 = call %struct.lacp_port* @LACP_PORT(%struct.lagg_port* %6)
  store %struct.lacp_port* %7, %struct.lacp_port** %3, align 8
  %8 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %9 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %8, i32 0, i32 1
  %10 = load %struct.lacp_softc*, %struct.lacp_softc** %9, align 8
  store %struct.lacp_softc* %10, %struct.lacp_softc** %4, align 8
  %11 = load %struct.lacp_softc*, %struct.lacp_softc** %4, align 8
  %12 = call i32 @LACP_LOCK(%struct.lacp_softc* %11)
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %21, %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @LACP_NTIMER, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %13
  %18 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @LACP_TIMER_DISARM(%struct.lacp_port* %18, i32 %19)
  br label %21

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %5, align 4
  br label %13

24:                                               ; preds = %13
  %25 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %26 = call i32 @lacp_disable_collecting(%struct.lacp_port* %25)
  %27 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %28 = call i32 @lacp_disable_distributing(%struct.lacp_port* %27)
  %29 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %30 = call i32 @lacp_unselect(%struct.lacp_port* %29)
  %31 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %32 = load i32, i32* @lp_next, align 4
  %33 = call i32 @LIST_REMOVE(%struct.lacp_port* %31, i32 %32)
  %34 = load %struct.lacp_softc*, %struct.lacp_softc** %4, align 8
  %35 = call i32 @LACP_UNLOCK(%struct.lacp_softc* %34)
  %36 = load %struct.lagg_port*, %struct.lagg_port** %2, align 8
  %37 = getelementptr inbounds %struct.lagg_port, %struct.lagg_port* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %24
  %41 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %42 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @if_delmulti_ifma(i32 %43)
  br label %45

45:                                               ; preds = %40, %24
  %46 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %47 = load i32, i32* @M_DEVBUF, align 4
  %48 = call i32 @free(%struct.lacp_port* %46, i32 %47)
  ret void
}

declare dso_local %struct.lacp_port* @LACP_PORT(%struct.lagg_port*) #1

declare dso_local i32 @LACP_LOCK(%struct.lacp_softc*) #1

declare dso_local i32 @LACP_TIMER_DISARM(%struct.lacp_port*, i32) #1

declare dso_local i32 @lacp_disable_collecting(%struct.lacp_port*) #1

declare dso_local i32 @lacp_disable_distributing(%struct.lacp_port*) #1

declare dso_local i32 @lacp_unselect(%struct.lacp_port*) #1

declare dso_local i32 @LIST_REMOVE(%struct.lacp_port*, i32) #1

declare dso_local i32 @LACP_UNLOCK(%struct.lacp_softc*) #1

declare dso_local i32 @if_delmulti_ifma(i32) #1

declare dso_local i32 @free(%struct.lacp_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
