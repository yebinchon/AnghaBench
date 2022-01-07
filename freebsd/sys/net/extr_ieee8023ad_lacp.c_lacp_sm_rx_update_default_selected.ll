; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_sm_rx_update_default_selected.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_sm_rx_update_default_selected.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lacp_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@lacp_partner_admin_strict = common dso_local global i32 0, align 4
@lacp_partner_admin_optimistic = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lacp_port*)* @lacp_sm_rx_update_default_selected to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lacp_sm_rx_update_default_selected(%struct.lacp_port* %0) #0 {
  %2 = alloca %struct.lacp_port*, align 8
  store %struct.lacp_port* %0, %struct.lacp_port** %2, align 8
  %3 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %4 = call i32 @LACP_TRACE(%struct.lacp_port* %3)
  %5 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %6 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %13 = call i32 @lacp_sm_rx_update_selected_from_peerinfo(%struct.lacp_port* %12, i32* @lacp_partner_admin_strict)
  br label %17

14:                                               ; preds = %1
  %15 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %16 = call i32 @lacp_sm_rx_update_selected_from_peerinfo(%struct.lacp_port* %15, i32* @lacp_partner_admin_optimistic)
  br label %17

17:                                               ; preds = %14, %11
  ret void
}

declare dso_local i32 @LACP_TRACE(%struct.lacp_port*) #1

declare dso_local i32 @lacp_sm_rx_update_selected_from_peerinfo(%struct.lacp_port*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
