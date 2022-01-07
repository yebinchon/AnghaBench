; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_llan.c_llan_set_multicast.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/pseries/extr_phyp_llan.c_llan_set_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llan_softc = type { i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@H_MULTICAST_CTRL = common dso_local global i32 0, align 4
@LLAN_CLEAR_MULTICAST = common dso_local global i32 0, align 4
@llan_set_maddr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.llan_softc*)* @llan_set_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llan_set_multicast(%struct.llan_softc* %0) #0 {
  %2 = alloca %struct.llan_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.llan_softc* %0, %struct.llan_softc** %2, align 8
  %4 = load %struct.llan_softc*, %struct.llan_softc** %2, align 8
  %5 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %4, i32 0, i32 2
  %6 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  store %struct.ifnet* %6, %struct.ifnet** %3, align 8
  %7 = load %struct.llan_softc*, %struct.llan_softc** %2, align 8
  %8 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %7, i32 0, i32 1
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @mtx_assert(i32* %8, i32 %9)
  %11 = load i32, i32* @H_MULTICAST_CTRL, align 4
  %12 = load %struct.llan_softc*, %struct.llan_softc** %2, align 8
  %13 = getelementptr inbounds %struct.llan_softc, %struct.llan_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @LLAN_CLEAR_MULTICAST, align 4
  %16 = call i32 @phyp_hcall(i32 %11, i32 %14, i32 %15, i32 0)
  %17 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %18 = load i32, i32* @llan_set_maddr, align 4
  %19 = load %struct.llan_softc*, %struct.llan_softc** %2, align 8
  %20 = call i32 @if_foreach_llmaddr(%struct.ifnet* %17, i32 %18, %struct.llan_softc* %19)
  ret i32 0
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @phyp_hcall(i32, i32, i32, i32) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, %struct.llan_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
