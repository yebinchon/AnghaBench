; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_disable_distributing.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_ieee8023ad_lacp.c_lacp_disable_distributing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lacp_port = type { i32, %struct.lacp_softc*, %struct.lacp_aggregator* }
%struct.lacp_softc = type { %struct.lacp_aggregator*, %struct.lagg_softc* }
%struct.lagg_softc = type { i64, i32 }
%struct.lacp_aggregator = type { i64, i64, i32 }

@LACP_LAGIDSTR_MAX = common dso_local global i32 0, align 4
@LACP_STATE_DISTRIBUTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"no aggregator ports\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"nports invalid (%d)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"aggregator refcnt invalid\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"disable distributing on aggregator %s, nports %d -> %d\0A\00", align 1
@lp_dist_q = common dso_local global i32 0, align 4
@LINK_STATE_UP = common dso_local global i32 0, align 4
@LINK_STATE_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lacp_port*)* @lacp_disable_distributing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lacp_disable_distributing(%struct.lacp_port* %0) #0 {
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
  %25 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %3, align 8
  %26 = icmp eq %struct.lacp_aggregator* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %1
  %28 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %29 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @LACP_STATE_DISTRIBUTING, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27, %1
  store i32 1, i32* %8, align 4
  br label %123

35:                                               ; preds = %27
  %36 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %3, align 8
  %37 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %36, i32 0, i32 2
  %38 = call i32 @TAILQ_EMPTY(i32* %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @KASSERT(i32 %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %43 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %3, align 8
  %44 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %3, align 8
  %49 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @KASSERT(i32 %47, i8* %51)
  %53 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %3, align 8
  %54 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %3, align 8
  %57 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp sge i64 %55, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @KASSERT(i32 %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %62 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %63 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %3, align 8
  %64 = trunc i64 %20 to i32
  %65 = call i32 @lacp_format_lagid_aggregator(%struct.lacp_aggregator* %63, i8* %22, i32 %64)
  %66 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %3, align 8
  %67 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %3, align 8
  %70 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %71, 1
  %73 = inttoptr i64 %72 to %struct.lacp_port*
  %74 = call i32 @LACP_DPRINTF(%struct.lacp_port* %73)
  %75 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %3, align 8
  %76 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %75, i32 0, i32 2
  %77 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %78 = load i32, i32* @lp_dist_q, align 4
  %79 = call i32 @TAILQ_REMOVE(i32* %76, %struct.lacp_port* %77, i32 %78)
  %80 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %3, align 8
  %81 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, -1
  store i64 %83, i64* %81, align 8
  %84 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %3, align 8
  %85 = getelementptr inbounds %struct.lacp_aggregator, %struct.lacp_aggregator* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load %struct.lagg_softc*, %struct.lagg_softc** %5, align 8
  %88 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.lacp_softc*, %struct.lacp_softc** %4, align 8
  %90 = getelementptr inbounds %struct.lacp_softc, %struct.lacp_softc* %89, i32 0, i32 0
  %91 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %90, align 8
  %92 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %3, align 8
  %93 = icmp eq %struct.lacp_aggregator* %91, %92
  br i1 %93, label %94, label %102

94:                                               ; preds = %35
  %95 = load %struct.lacp_softc*, %struct.lacp_softc** %4, align 8
  %96 = load %struct.lacp_aggregator*, %struct.lacp_aggregator** %3, align 8
  %97 = call i32 @lacp_suppress_distributing(%struct.lacp_softc* %95, %struct.lacp_aggregator* %96)
  %98 = load %struct.lacp_softc*, %struct.lacp_softc** %4, align 8
  %99 = call i32 @lacp_select_active_aggregator(%struct.lacp_softc* %98)
  %100 = load %struct.lacp_softc*, %struct.lacp_softc** %4, align 8
  %101 = call i32 @lacp_update_portmap(%struct.lacp_softc* %100)
  br label %102

102:                                              ; preds = %94, %35
  %103 = load i32, i32* @LACP_STATE_DISTRIBUTING, align 4
  %104 = xor i32 %103, -1
  %105 = load %struct.lacp_port*, %struct.lacp_port** %2, align 8
  %106 = getelementptr inbounds %struct.lacp_port, %struct.lacp_port* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = and i32 %107, %104
  store i32 %108, i32* %106, align 8
  %109 = load %struct.lagg_softc*, %struct.lagg_softc** %5, align 8
  %110 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.lagg_softc*, %struct.lagg_softc** %5, align 8
  %113 = getelementptr inbounds %struct.lagg_softc, %struct.lagg_softc* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %102
  %117 = load i32, i32* @LINK_STATE_UP, align 4
  br label %120

118:                                              ; preds = %102
  %119 = load i32, i32* @LINK_STATE_DOWN, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  %122 = call i32 @if_link_state_change(i32 %111, i32 %121)
  store i32 0, i32* %8, align 4
  br label %123

123:                                              ; preds = %120, %34
  %124 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %124)
  %125 = load i32, i32* %8, align 4
  switch i32 %125, label %127 [
    i32 0, label %126
    i32 1, label %126
  ]

126:                                              ; preds = %123, %123
  ret void

127:                                              ; preds = %123
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LACP_LOCK_ASSERT(%struct.lacp_softc*) #2

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i32 @TAILQ_EMPTY(i32*) #2

declare dso_local i32 @LACP_DPRINTF(%struct.lacp_port*) #2

declare dso_local i32 @lacp_format_lagid_aggregator(%struct.lacp_aggregator*, i8*, i32) #2

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.lacp_port*, i32) #2

declare dso_local i32 @lacp_suppress_distributing(%struct.lacp_softc*, %struct.lacp_aggregator*) #2

declare dso_local i32 @lacp_select_active_aggregator(%struct.lacp_softc*) #2

declare dso_local i32 @lacp_update_portmap(%struct.lacp_softc*) #2

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
