; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_sm_rx_update_selected_from_peerinfo.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_sm_rx_update_selected_from_peerinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lacp_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.lacp_peerinfo = type { i32 }

@LACP_STATE_AGGREGATION = common dso_local global i32 0, align 4
@LACP_UNSELECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lacp_port*, %struct.lacp_peerinfo*)* @lacp_sm_rx_update_selected_from_peerinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lacp_sm_rx_update_selected_from_peerinfo(%struct.lacp_port* %0, %struct.lacp_peerinfo* %1) #0 {
  %3 = alloca %struct.lacp_port*, align 8
  %4 = alloca %struct.lacp_peerinfo*, align 8
  store %struct.lacp_port* %0, %struct.lacp_port** %3, align 8
  store %struct.lacp_peerinfo* %1, %struct.lacp_peerinfo** %4, align 8
  %5 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %6 = call i32 @LACP_TRACE(%struct.lacp_port* %5)
  %7 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %8 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %7, i32 0, i32 1
  %9 = load %struct.lacp_peerinfo*, %struct.lacp_peerinfo** %4, align 8
  %10 = call i64 @lacp_compare_peerinfo(%struct.TYPE_2__* %8, %struct.lacp_peerinfo* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %2
  %13 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %14 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.lacp_peerinfo*, %struct.lacp_peerinfo** %4, align 8
  %18 = getelementptr inbounds %struct.lacp_peerinfo, %struct.lacp_peerinfo* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @LACP_STATE_AGGREGATION, align 4
  %21 = call i32 @LACP_STATE_EQ(i32 %16, i32 %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %12, %2
  %24 = load i32, i32* @LACP_UNSELECTED, align 4
  %25 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %26 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %12
  ret void
}

declare dso_local i32 @LACP_TRACE(%struct.lacp_port*) #1

declare dso_local i64 @lacp_compare_peerinfo(%struct.TYPE_2__*, %struct.lacp_peerinfo*) #1

declare dso_local i32 @LACP_STATE_EQ(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
