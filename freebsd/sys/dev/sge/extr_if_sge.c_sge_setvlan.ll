; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_setvlan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_setvlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32, i32 }

@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@RxMacControl = common dso_local global i32 0, align 4
@RXMAC_STRIP_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge_softc*)* @sge_setvlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sge_setvlan(%struct.sge_softc* %0) #0 {
  %2 = alloca %struct.sge_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  store %struct.sge_softc* %0, %struct.sge_softc** %2, align 8
  %5 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %6 = call i32 @SGE_LOCK_ASSERT(%struct.sge_softc* %5)
  %7 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %8 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %7, i32 0, i32 0
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %3, align 8
  %10 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %11 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %41

17:                                               ; preds = %1
  %18 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %19 = load i32, i32* @RxMacControl, align 4
  %20 = call i32 @CSR_READ_2(%struct.sge_softc* %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %22 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %17
  %28 = load i32, i32* @RXMAC_STRIP_VLAN, align 4
  %29 = load i32, i32* %4, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %4, align 4
  br label %36

31:                                               ; preds = %17
  %32 = load i32, i32* @RXMAC_STRIP_VLAN, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %4, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %31, %27
  %37 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %38 = load i32, i32* @RxMacControl, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @CSR_WRITE_2(%struct.sge_softc* %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %16
  ret void
}

declare dso_local i32 @SGE_LOCK_ASSERT(%struct.sge_softc*) #1

declare dso_local i32 @CSR_READ_2(%struct.sge_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.sge_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
