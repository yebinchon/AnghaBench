; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_node_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_node_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wpi_softc* }
%struct.wpi_softc = type { i32 (%struct.ieee80211_node.0*)* }
%struct.ieee80211_node.0 = type opaque
%struct.wpi_node = type { i64 }

@WPI_ID_UNDEFINED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_node*)* @wpi_node_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpi_node_free(%struct.ieee80211_node* %0) #0 {
  %2 = alloca %struct.ieee80211_node*, align 8
  %3 = alloca %struct.wpi_softc*, align 8
  %4 = alloca %struct.wpi_node*, align 8
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %2, align 8
  %5 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.wpi_softc*, %struct.wpi_softc** %8, align 8
  store %struct.wpi_softc* %9, %struct.wpi_softc** %3, align 8
  %10 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %11 = call %struct.wpi_node* @WPI_NODE(%struct.ieee80211_node* %10)
  store %struct.wpi_node* %11, %struct.wpi_node** %4, align 8
  %12 = load %struct.wpi_node*, %struct.wpi_node** %4, align 8
  %13 = getelementptr inbounds %struct.wpi_node, %struct.wpi_node* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @WPI_ID_UNDEFINED, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %1
  %18 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %19 = call i32 @WPI_NT_LOCK(%struct.wpi_softc* %18)
  %20 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %21 = load %struct.wpi_node*, %struct.wpi_node** %4, align 8
  %22 = getelementptr inbounds %struct.wpi_node, %struct.wpi_node* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = call i64 @wpi_check_node_entry(%struct.wpi_softc* %20, i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %17
  %27 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %28 = load %struct.wpi_node*, %struct.wpi_node** %4, align 8
  %29 = getelementptr inbounds %struct.wpi_node, %struct.wpi_node* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @wpi_del_node_entry(%struct.wpi_softc* %27, i64 %30)
  %32 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %33 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %34 = call i32 @wpi_del_node(%struct.wpi_softc* %32, %struct.ieee80211_node* %33)
  br label %35

35:                                               ; preds = %26, %17
  %36 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %37 = call i32 @WPI_NT_UNLOCK(%struct.wpi_softc* %36)
  br label %38

38:                                               ; preds = %35, %1
  %39 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %40 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %39, i32 0, i32 0
  %41 = load i32 (%struct.ieee80211_node.0*)*, i32 (%struct.ieee80211_node.0*)** %40, align 8
  %42 = load %struct.ieee80211_node*, %struct.ieee80211_node** %2, align 8
  %43 = bitcast %struct.ieee80211_node* %42 to %struct.ieee80211_node.0*
  %44 = call i32 %41(%struct.ieee80211_node.0* %43)
  ret void
}

declare dso_local %struct.wpi_node* @WPI_NODE(%struct.ieee80211_node*) #1

declare dso_local i32 @WPI_NT_LOCK(%struct.wpi_softc*) #1

declare dso_local i64 @wpi_check_node_entry(%struct.wpi_softc*, i64) #1

declare dso_local i32 @wpi_del_node_entry(%struct.wpi_softc*, i64) #1

declare dso_local i32 @wpi_del_node(%struct.wpi_softc*, %struct.ieee80211_node*) #1

declare dso_local i32 @WPI_NT_UNLOCK(%struct.wpi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
