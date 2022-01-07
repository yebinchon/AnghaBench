; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_setvlan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_setvlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_if_softc = type { i32, %struct.msk_softc* }
%struct.msk_softc = type { i32 }
%struct.ifnet = type { i32 }

@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@RX_GMF_CTRL_T = common dso_local global i32 0, align 4
@RX_VLAN_STRIP_ON = common dso_local global i32 0, align 4
@TX_GMF_CTRL_T = common dso_local global i32 0, align 4
@TX_VLAN_TAG_ON = common dso_local global i32 0, align 4
@RX_VLAN_STRIP_OFF = common dso_local global i32 0, align 4
@TX_VLAN_TAG_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msk_if_softc*, %struct.ifnet*)* @msk_setvlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msk_setvlan(%struct.msk_if_softc* %0, %struct.ifnet* %1) #0 {
  %3 = alloca %struct.msk_if_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.msk_softc*, align 8
  store %struct.msk_if_softc* %0, %struct.msk_if_softc** %3, align 8
  store %struct.ifnet* %1, %struct.ifnet** %4, align 8
  %6 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %7 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %6, i32 0, i32 1
  %8 = load %struct.msk_softc*, %struct.msk_softc** %7, align 8
  store %struct.msk_softc* %8, %struct.msk_softc** %5, align 8
  %9 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %10 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %2
  %16 = load %struct.msk_softc*, %struct.msk_softc** %5, align 8
  %17 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %18 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @RX_GMF_CTRL_T, align 4
  %21 = call i32 @MR_ADDR(i32 %19, i32 %20)
  %22 = load i32, i32* @RX_VLAN_STRIP_ON, align 4
  %23 = call i32 @CSR_WRITE_4(%struct.msk_softc* %16, i32 %21, i32 %22)
  %24 = load %struct.msk_softc*, %struct.msk_softc** %5, align 8
  %25 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %26 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @TX_GMF_CTRL_T, align 4
  %29 = call i32 @MR_ADDR(i32 %27, i32 %28)
  %30 = load i32, i32* @TX_VLAN_TAG_ON, align 4
  %31 = call i32 @CSR_WRITE_4(%struct.msk_softc* %24, i32 %29, i32 %30)
  br label %49

32:                                               ; preds = %2
  %33 = load %struct.msk_softc*, %struct.msk_softc** %5, align 8
  %34 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %35 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @RX_GMF_CTRL_T, align 4
  %38 = call i32 @MR_ADDR(i32 %36, i32 %37)
  %39 = load i32, i32* @RX_VLAN_STRIP_OFF, align 4
  %40 = call i32 @CSR_WRITE_4(%struct.msk_softc* %33, i32 %38, i32 %39)
  %41 = load %struct.msk_softc*, %struct.msk_softc** %5, align 8
  %42 = load %struct.msk_if_softc*, %struct.msk_if_softc** %3, align 8
  %43 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @TX_GMF_CTRL_T, align 4
  %46 = call i32 @MR_ADDR(i32 %44, i32 %45)
  %47 = load i32, i32* @TX_VLAN_TAG_OFF, align 4
  %48 = call i32 @CSR_WRITE_4(%struct.msk_softc* %41, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %32, %15
  ret void
}

declare dso_local i32 @CSR_WRITE_4(%struct.msk_softc*, i32, i32) #1

declare dso_local i32 @MR_ADDR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
