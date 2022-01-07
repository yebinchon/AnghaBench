; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_aggregator_bandwidth.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_aggregator_bandwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lacp_aggregator = type { i32, i32 }
%struct.lacp_port = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"speed 0? media=0x%x nports=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lacp_aggregator*)* @lacp_aggregator_bandwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lacp_aggregator_bandwidth(%struct.lacp_aggregator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lacp_aggregator*, align 8
  %4 = alloca %struct.lacp_port*, align 8
  %5 = alloca i32, align 4
  store %struct.lacp_aggregator* %0, %struct.lacp_aggregator** %3, align 8
  %6 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %3, align 8
  %7 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %6, i32 0, i32 1
  %8 = call %struct.lacp_port* @TAILQ_FIRST(i32* %7)
  store %struct.lacp_port* %8, %struct.lacp_port** %4, align 8
  %9 = load %struct.lacp_port*, %struct.lacp_port** %4, align 8
  %10 = icmp eq %struct.lacp_port* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %37

12:                                               ; preds = %1
  %13 = load %struct.lacp_port*, %struct.lacp_port** %4, align 8
  %14 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ifmedia_baudrate(i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %3, align 8
  %18 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = mul nsw i32 %20, %19
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %12
  %25 = load %struct.lacp_port*, %struct.lacp_port** %4, align 8
  %26 = load %struct.lacp_port*, %struct.lacp_port** %4, align 8
  %27 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %3, align 8
  %30 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to %struct.lacp_port*
  %34 = call i32 @LACP_DPRINTF(%struct.lacp_port* %33)
  br label %35

35:                                               ; preds = %24, %12
  %36 = load i32, i32* %5, align 4
  store i32 %36, i32* %2, align 4
  br label %37

37:                                               ; preds = %35, %11
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local %struct.lacp_port* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @ifmedia_baudrate(i32) #1

declare dso_local i32 @LACP_DPRINTF(%struct.lacp_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
