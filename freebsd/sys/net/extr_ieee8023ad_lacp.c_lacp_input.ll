; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_input.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lagg_port = type { i32 }
%struct.mbuf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lacp_port = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mbuf* @lacp_input(%struct.lagg_port* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.mbuf*, align 8
  %4 = alloca %struct.lagg_port*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.lacp_port*, align 8
  %7 = alloca i32, align 4
  store %struct.lagg_port* %0, %struct.lagg_port** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %8 = load %struct.lagg_port*, %struct.lagg_port** %4, align 8
  %9 = call %struct.lacp_port* @LACP_PORT(%struct.lagg_port* %8)
  store %struct.lacp_port* %9, %struct.lacp_port** %6, align 8
  %10 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %11 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %14, 8
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %18 = call i32 @m_freem(%struct.mbuf* %17)
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  br label %33

19:                                               ; preds = %2
  %20 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %21 = call i32 @m_copydata(%struct.mbuf* %20, i32 4, i32 4, i32* %7)
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %31 [
    i32 129, label %23
    i32 128, label %27
  ]

23:                                               ; preds = %19
  %24 = load %struct.lacp_port*, %struct.lacp_port** %6, align 8
  %25 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %26 = call i32 @lacp_pdu_input(%struct.lacp_port* %24, %struct.mbuf* %25)
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  br label %33

27:                                               ; preds = %19
  %28 = load %struct.lacp_port*, %struct.lacp_port** %6, align 8
  %29 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %30 = call i32 @lacp_marker_input(%struct.lacp_port* %28, %struct.mbuf* %29)
  store %struct.mbuf* null, %struct.mbuf** %3, align 8
  br label %33

31:                                               ; preds = %19
  %32 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %32, %struct.mbuf** %3, align 8
  br label %33

33:                                               ; preds = %31, %27, %23, %16
  %34 = load %struct.mbuf*, %struct.mbuf** %3, align 8
  ret %struct.mbuf* %34
}

declare dso_local %struct.lacp_port* @LACP_PORT(%struct.lagg_port*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @m_copydata(%struct.mbuf*, i32, i32, i32*) #1

declare dso_local i32 @lacp_pdu_input(%struct.lacp_port*, %struct.mbuf*) #1

declare dso_local i32 @lacp_marker_input(%struct.lacp_port*, %struct.mbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
