; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_restore_node_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/wpi/extr_if_wpi.c_wpi_restore_node_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpi_softc = type { %struct.ieee80211com }
%struct.ieee80211com = type { i32 }
%struct.wpi_vap = type { i64 }

@wpi_restore_node = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpi_softc*, %struct.wpi_vap*)* @wpi_restore_node_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpi_restore_node_table(%struct.wpi_softc* %0, %struct.wpi_vap* %1) #0 {
  %3 = alloca %struct.wpi_softc*, align 8
  %4 = alloca %struct.wpi_vap*, align 8
  %5 = alloca %struct.ieee80211com*, align 8
  store %struct.wpi_softc* %0, %struct.wpi_softc** %3, align 8
  store %struct.wpi_vap* %1, %struct.wpi_vap** %4, align 8
  %6 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %7 = getelementptr inbounds %struct.wpi_softc, %struct.wpi_softc* %6, i32 0, i32 0
  store %struct.ieee80211com* %7, %struct.ieee80211com** %5, align 8
  %8 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %9 = call i32 @WPI_NT_LOCK(%struct.wpi_softc* %8)
  %10 = load %struct.wpi_vap*, %struct.wpi_vap** %4, align 8
  %11 = getelementptr inbounds %struct.wpi_vap, %struct.wpi_vap* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  %12 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %13 = call i32 @WPI_NT_UNLOCK(%struct.wpi_softc* %12)
  %14 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %14, i32 0, i32 0
  %16 = load i32, i32* @wpi_restore_node, align 4
  %17 = load %struct.wpi_softc*, %struct.wpi_softc** %3, align 8
  %18 = call i32 @ieee80211_iterate_nodes(i32* %15, i32 %16, %struct.wpi_softc* %17)
  %19 = load %struct.ieee80211com*, %struct.ieee80211com** %5, align 8
  %20 = call i32 @ieee80211_crypto_reload_keys(%struct.ieee80211com* %19)
  ret void
}

declare dso_local i32 @WPI_NT_LOCK(%struct.wpi_softc*) #1

declare dso_local i32 @WPI_NT_UNLOCK(%struct.wpi_softc*) #1

declare dso_local i32 @ieee80211_iterate_nodes(i32*, i32, %struct.wpi_softc*) #1

declare dso_local i32 @ieee80211_crypto_reload_keys(%struct.ieee80211com*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
