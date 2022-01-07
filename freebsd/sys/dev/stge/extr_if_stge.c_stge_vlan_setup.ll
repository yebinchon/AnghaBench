; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_vlan_setup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/stge/extr_if_stge.c_stge_vlan_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stge_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@STGE_MACCtrl = common dso_local global i32 0, align 4
@MC_MASK = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@MC_AutoVLANuntagging = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stge_softc*)* @stge_vlan_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stge_vlan_setup(%struct.stge_softc* %0) #0 {
  %2 = alloca %struct.stge_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  store %struct.stge_softc* %0, %struct.stge_softc** %2, align 8
  %5 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %6 = getelementptr inbounds %struct.stge_softc, %struct.stge_softc* %5, i32 0, i32 0
  %7 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  store %struct.ifnet* %7, %struct.ifnet** %3, align 8
  %8 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %9 = load i32, i32* @STGE_MACCtrl, align 4
  %10 = call i32 @CSR_READ_4(%struct.stge_softc* %8, i32 %9)
  %11 = load i32, i32* @MC_MASK, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %4, align 4
  %13 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @MC_AutoVLANuntagging, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  br label %28

23:                                               ; preds = %1
  %24 = load i32, i32* @MC_AutoVLANuntagging, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %4, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %23, %19
  %29 = load %struct.stge_softc*, %struct.stge_softc** %2, align 8
  %30 = load i32, i32* @STGE_MACCtrl, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @CSR_WRITE_4(%struct.stge_softc* %29, i32 %30, i32 %31)
  ret void
}

declare dso_local i32 @CSR_READ_4(%struct.stge_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.stge_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
