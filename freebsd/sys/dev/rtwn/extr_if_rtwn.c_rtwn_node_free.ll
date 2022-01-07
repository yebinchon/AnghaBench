; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_node_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_node_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.rtwn_softc* }
%struct.rtwn_softc = type { i32 (%struct.ieee80211_node.0*)*, i32** }
%struct.ieee80211_node.0 = type opaque
%struct.rtwn_node = type { i64 }

@RTWN_MACID_UNDEFINED = common dso_local global i64 0, align 8
@rtwn_set_media_status = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_node*)* @rtwn_node_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_node_free(%struct.ieee80211_node* %0) #0 {
  %2 = alloca %struct.ieee80211_node*, align 8
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca %struct.rtwn_node*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %2, align 8
  %5 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.rtwn_softc*, %struct.rtwn_softc** %8, align 8
  store %struct.rtwn_softc* %9, %struct.rtwn_softc** %3, align 8
  %10 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %11 = call %struct.rtwn_node* @RTWN_NODE(%struct.ieee80211_node* %10)
  store %struct.rtwn_node* %11, %struct.rtwn_node** %4, align 8
  %12 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %13 = call i32 @RTWN_NT_LOCK(%struct.rtwn_softc* %12)
  %14 = load %struct.rtwn_node*, %struct.rtwn_node** %4, align 8
  %15 = getelementptr inbounds %struct.rtwn_node, %struct.rtwn_node* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RTWN_MACID_UNDEFINED, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %1
  %20 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %21 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %20, i32 0, i32 1
  %22 = load i32**, i32*** %21, align 8
  %23 = load %struct.rtwn_node*, %struct.rtwn_node** %4, align 8
  %24 = getelementptr inbounds %struct.rtwn_node, %struct.rtwn_node* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds i32*, i32** %22, i64 %25
  store i32* null, i32** %26, align 8
  %27 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %28 = load %struct.rtwn_node*, %struct.rtwn_node** %4, align 8
  %29 = getelementptr inbounds %struct.rtwn_node, %struct.rtwn_node* %28, i32 0, i32 0
  %30 = load i32, i32* @rtwn_set_media_status, align 4
  %31 = call i32 @rtwn_cmd_sleepable(%struct.rtwn_softc* %27, i64* %29, i32 8, i32 %30)
  br label %32

32:                                               ; preds = %19, %1
  %33 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %34 = call i32 @RTWN_NT_UNLOCK(%struct.rtwn_softc* %33)
  %35 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %36 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %35, i32 0, i32 0
  %37 = load i32 (%struct.ieee80211_node.0*)*, i32 (%struct.ieee80211_node.0*)** %36, align 8
  %38 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %39 = bitcast %struct.ieee80211_node* %38 to %struct.ieee80211_node.0*
  %40 = call i32 %37(%struct.ieee80211_node.0* %39)
  ret void
}

declare dso_local %struct.rtwn_node* @RTWN_NODE(%struct.ieee80211_node*) #1

declare dso_local i32 @RTWN_NT_LOCK(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_cmd_sleepable(%struct.rtwn_softc*, i64*, i32, i32) #1

declare dso_local i32 @RTWN_NT_UNLOCK(%struct.rtwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
