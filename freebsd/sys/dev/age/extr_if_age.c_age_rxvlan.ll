; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_rxvlan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/age/extr_if_age.c_age_rxvlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.age_softc = type { %struct.ifnet* }
%struct.ifnet = type { i32 }

@AGE_MAC_CFG = common dso_local global i32 0, align 4
@MAC_CFG_VLAN_TAG_STRIP = common dso_local global i32 0, align 4
@IFCAP_VLAN_HWTAGGING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.age_softc*)* @age_rxvlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @age_rxvlan(%struct.age_softc* %0) #0 {
  %2 = alloca %struct.age_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  store %struct.age_softc* %0, %struct.age_softc** %2, align 8
  %5 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %6 = call i32 @AGE_LOCK_ASSERT(%struct.age_softc* %5)
  %7 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %8 = getelementptr inbounds %struct.age_softc, %struct.age_softc* %7, i32 0, i32 0
  %9 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  store %struct.ifnet* %9, %struct.ifnet** %3, align 8
  %10 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %11 = load i32, i32* @AGE_MAC_CFG, align 4
  %12 = call i32 @CSR_READ_4(%struct.age_softc* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* @MAC_CFG_VLAN_TAG_STRIP, align 4
  %14 = xor i32 %13, -1
  %15 = load i32, i32* %4, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %18 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IFCAP_VLAN_HWTAGGING, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @MAC_CFG_VLAN_TAG_STRIP, align 4
  %25 = load i32, i32* %4, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %1
  %28 = load %struct.age_softc*, %struct.age_softc** %2, align 8
  %29 = load i32, i32* @AGE_MAC_CFG, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @CSR_WRITE_4(%struct.age_softc* %28, i32 %29, i32 %30)
  ret void
}

declare dso_local i32 @AGE_LOCK_ASSERT(%struct.age_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.age_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.age_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
