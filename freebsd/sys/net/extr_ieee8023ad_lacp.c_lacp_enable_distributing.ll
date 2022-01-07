; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_enable_distributing.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_enable_distributing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lacp_port = type { i32, %struct.lacp_softc*, %struct.lacp_aggregator* }
%struct.lacp_softc = type { %struct.lacp_aggregator*, %struct.lagg_softc* }
%struct.lagg_softc = type { i64, i32 }
%struct.lacp_aggregator = type { i64, i64, i32 }

@LACP_LAGIDSTR_MAX = common dso_local global i32 0, align 4
@LACP_STATE_DISTRIBUTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"enable distributing on aggregator %s, nports %d -> %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"aggregator refcnt invalid\00", align 1
@lp_dist_q = common dso_local global i32 0, align 4
@LINK_STATE_UP = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lacp_port*)* @lacp_enable_distributing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lacp_enable_distributing(%struct.lacp_port* %0) #0 {
  %2 = alloca %struct.lacp_port*, align 8
  %3 = alloca %struct.lacp_aggregator*, align 8
  %4 = alloca %struct.lacp_softc*, align 8
  %5 = alloca %struct.lagg_softc*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.lacp_port* %0, %struct.lacp_port** %2, align 8
  %9 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %10 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %9, i32 0, i32 2
  %11 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %10, align 8
  store %struct.lacp_aggregator* %11, %struct.lacp_aggregator** %3, align 8
  %12 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %13 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %12, i32 0, i32 1
  %14 = load %struct.lacp_softc*, %struct.lacp_softc** %13, align 8
  store %struct.lacp_softc* %14, %struct.lacp_softc** %4, align 8
  %15 = load %struct.lacp_softc*, %struct.lacp_softc** %4, align 8
  %16 = getelementptr inbounds %struct.lacp_softc, %struct.lacp_softc* %15, i32 0, i32 1
  %17 = load %struct.lagg_softc*, %struct.lagg_softc** %16, align 8
  store %struct.lagg_softc* %17, %struct.lagg_softc** %5, align 8
  %18 = load i32, i32* @LACP_LAGIDSTR_MAX, align 4
  %19 = add nsw i32 %18, 1
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %6, align 8
  %22 = alloca i8, i64 %20, align 16
  store i64 %20, i64* %7, align 8
  %23 = load %struct.lacp_softc*, %struct.lacp_softc** %4, align 8
  %24 = call i32 @LACP_LOCK_ASSERT(%struct.lacp_softc* %23)
  %25 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %26 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @LACP_STATE_DISTRIBUTING, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %1
  store i32 1, i32* %8, align 4
  br label %103

32:                                               ; preds = %1
  %33 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %34 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %3, align 8
  %35 = trunc i64 %20 to i32
  %36 = call i32 @lacp_format_lagid_aggregator(%struct.lacp_aggregator* %34, i8* %22, i32 %35)
  %37 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %3, align 8
  %38 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %3, align 8
  %41 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, 1
  %44 = inttoptr i64 %43 to %struct.lacp_port*
  %45 = call i32 @LACP_DPRINTF(%struct.lacp_port* %44)
  %46 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %3, align 8
  %47 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %3, align 8
  %50 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %48, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @KASSERT(i32 %53, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %55 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %3, align 8
  %56 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %55, i32 0, i32 2
  %57 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %58 = load i32, i32* @lp_dist_q, align 4
  %59 = call i32 @TAILQ_INSERT_HEAD(i32* %56, %struct.lacp_port* %57, i32 %58)
  %60 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %3, align 8
  %61 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  %64 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %3, align 8
  %65 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.lagg_softc*, %struct.lagg_softc** %5, align 8
  %68 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  %69 = load i32, i32* @LACP_STATE_DISTRIBUTING, align 4
  %70 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %71 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = or i32 %72, %69
  store i32 %73, i32* %71, align 8
  %74 = load %struct.lacp_softc*, %struct.lacp_softc** %4, align 8
  %75 = getelementptr inbounds %struct.lacp_softc, %struct.lacp_softc* %74, i32 0, i32 0
  %76 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %75, align 8
  %77 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %3, align 8
  %78 = icmp eq %struct.lacp_aggregator* %76, %77
  br i1 %78, label %79, label %85

79:                                               ; preds = %32
  %80 = load %struct.lacp_softc*, %struct.lacp_softc** %4, align 8
  %81 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %3, align 8
  %82 = call i32 @lacp_suppress_distributing(%struct.lacp_softc* %80, %struct.lacp_aggregator* %81)
  %83 = load %struct.lacp_softc*, %struct.lacp_softc** %4, align 8
  %84 = call i32 @lacp_update_portmap(%struct.lacp_softc* %83)
  br label %88

85:                                               ; preds = %32
  %86 = load %struct.lacp_softc*, %struct.lacp_softc** %4, align 8
  %87 = call i32 @lacp_select_active_aggregator(%struct.lacp_softc* %86)
  br label %88

88:                                               ; preds = %85, %79
  %89 = load %struct.lagg_softc*, %struct.lagg_softc** %5, align 8
  %90 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.lagg_softc*, %struct.lagg_softc** %5, align 8
  %93 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %88
  %97 = load i32, i32* @LINK_STATE_UP, align 4
  br label %100

98:                                               ; preds = %88
  %99 = load i32, i32* @LINK_STATE_DOWN, align 4
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi i32 [ %97, %96 ], [ %99, %98 ]
  %102 = call i32 @if_link_state_change(i32 %91, i32 %101)
  store i32 0, i32* %8, align 4
  br label %103

103:                                              ; preds = %100, %31
  %104 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %8, align 4
  switch i32 %105, label %107 [
    i32 0, label %106
    i32 1, label %106
  ]

106:                                              ; preds = %103, %103
  ret void

107:                                              ; preds = %103
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LACP_LOCK_ASSERT(%struct.lacp_softc*) #2

declare dso_local i32 @LACP_DPRINTF(%struct.lacp_port*) #2

declare dso_local i32 @lacp_format_lagid_aggregator(%struct.lacp_aggregator*, i8*, i32) #2

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i32 @TAILQ_INSERT_HEAD(i32*, %struct.lacp_port*, i32) #2

declare dso_local i32 @lacp_suppress_distributing(%struct.lacp_softc*, %struct.lacp_aggregator*) #2

declare dso_local i32 @lacp_update_portmap(%struct.lacp_softc*) #2

declare dso_local i32 @lacp_select_active_aggregator(%struct.lacp_softc*) #2

declare dso_local i32 @if_link_state_change(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
