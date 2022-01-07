; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_aggregator_is_compatible.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_aggregator_is_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lacp_aggregator = type { %struct.TYPE_3__, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.lacp_port = type { i32, %struct.TYPE_4__, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@LACP_STATE_AGGREGATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lacp_aggregator*, %struct.lacp_port*)* @lacp_aggregator_is_compatible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lacp_aggregator_is_compatible(%struct.lacp_aggregator* %0, %struct.lacp_port* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.lacp_aggregator*, align 8
  %5 = alloca %struct.lacp_port*, align 8
  store %struct.lacp_aggregator* %0, %struct.lacp_aggregator** %4, align 8
  store %struct.lacp_port* %1, %struct.lacp_port** %5, align 8
  %6 = load %struct.lacp_port*, %struct.lacp_port** %5, align 8
  %7 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @LACP_STATE_AGGREGATION, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.lacp_port*, %struct.lacp_port** %5, align 8
  %14 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @LACP_STATE_AGGREGATION, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %12, %2
  store i32 0, i32* %3, align 4
  br label %47

21:                                               ; preds = %12
  %22 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %4, align 8
  %23 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @LACP_STATE_AGGREGATION, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %47

30:                                               ; preds = %21
  %31 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %4, align 8
  %32 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %31, i32 0, i32 1
  %33 = load %struct.lacp_port*, %struct.lacp_port** %5, align 8
  %34 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %33, i32 0, i32 2
  %35 = call i32 @lacp_peerinfo_is_compatible(%struct.TYPE_3__* %32, %struct.TYPE_4__* %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %47

38:                                               ; preds = %30
  %39 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %4, align 8
  %40 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %39, i32 0, i32 0
  %41 = load %struct.lacp_port*, %struct.lacp_port** %5, align 8
  %42 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %41, i32 0, i32 1
  %43 = call i32 @lacp_peerinfo_is_compatible(%struct.TYPE_3__* %40, %struct.TYPE_4__* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %47

46:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %45, %37, %29, %20
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @lacp_peerinfo_is_compatible(%struct.TYPE_3__*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
