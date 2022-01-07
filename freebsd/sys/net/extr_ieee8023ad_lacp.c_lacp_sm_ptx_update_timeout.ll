; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_sm_ptx_update_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_sm_ptx_update_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lacp_port = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@LACP_STATE_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"partner timeout changed\0A\00", align 1
@LACP_TIMER_PERIODIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lacp_port*, i32)* @lacp_sm_ptx_update_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lacp_sm_ptx_update_timeout(%struct.lacp_port* %0, i32 %1) #0 {
  %3 = alloca %struct.lacp_port*, align 8
  %4 = alloca i32, align 4
  store %struct.lacp_port* %0, %struct.lacp_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %7 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @LACP_STATE_TIMEOUT, align 4
  %11 = call i64 @LACP_STATE_EQ(i32 %5, i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %30

14:                                               ; preds = %2
  %15 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %16 = call i32 @LACP_DPRINTF(%struct.lacp_port* bitcast ([25 x i8]* @.str to %struct.lacp_port*))
  %17 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %18 = load i32, i32* @LACP_TIMER_PERIODIC, align 4
  %19 = call i32 @LACP_TIMER_DISARM(%struct.lacp_port* %17, i32 %18)
  %20 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %21 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @LACP_STATE_TIMEOUT, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %14
  %28 = load %struct.lacp_port*, %struct.lacp_port** %3, align 8
  %29 = call i32 @lacp_sm_assert_ntt(%struct.lacp_port* %28)
  br label %30

30:                                               ; preds = %13, %27, %14
  ret void
}

declare dso_local i64 @LACP_STATE_EQ(i32, i32, i32) #1

declare dso_local i32 @LACP_DPRINTF(%struct.lacp_port*) #1

declare dso_local i32 @LACP_TIMER_DISARM(%struct.lacp_port*, i32) #1

declare dso_local i32 @lacp_sm_assert_ntt(%struct.lacp_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
