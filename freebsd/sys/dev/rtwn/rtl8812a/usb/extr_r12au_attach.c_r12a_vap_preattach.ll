; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/usb/extr_r12au_attach.c_r12a_vap_preattach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/usb/extr_r12au_attach.c_r12a_vap_preattach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { %struct.r12a_softc* }
%struct.r12a_softc = type { i32 }
%struct.ieee80211vap = type { %struct.ifnet* }
%struct.ifnet = type { i32, i32 }

@IFCAP_RXCSUM = common dso_local global i32 0, align 4
@IFCAP_RXCSUM_IPV6 = common dso_local global i32 0, align 4
@R12A_RXCKSUM_EN = common dso_local global i32 0, align 4
@R12A_RXCKSUM6_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r12a_vap_preattach(%struct.rtwn_softc* %0, %struct.ieee80211vap* %1) #0 {
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca %struct.ieee80211vap*, align 8
  %5 = alloca %struct.r12a_softc*, align 8
  %6 = alloca %struct.ifnet*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store %struct.ieee80211vap* %1, %struct.ieee80211vap** %4, align 8
  %7 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %8 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %7, i32 0, i32 0
  %9 = load %struct.r12a_softc*, %struct.r12a_softc** %8, align 8
  store %struct.r12a_softc* %9, %struct.r12a_softc** %5, align 8
  %10 = load %struct.ieee80211vap*, %struct.ieee80211vap** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %10, i32 0, i32 0
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %6, align 8
  %13 = load i32, i32* @IFCAP_RXCSUM, align 4
  %14 = load i32, i32* @IFCAP_RXCSUM_IPV6, align 4
  %15 = or i32 %13, %14
  %16 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %19 = call i32 @RTWN_LOCK(%struct.rtwn_softc* %18)
  %20 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %21 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @R12A_RXCKSUM_EN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %2
  %27 = load i32, i32* @IFCAP_RXCSUM, align 4
  %28 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %2
  %33 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %34 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @R12A_RXCKSUM6_EN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %32
  %40 = load i32, i32* @IFCAP_RXCSUM_IPV6, align 4
  %41 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %42 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %32
  %46 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %47 = call i32 @RTWN_UNLOCK(%struct.rtwn_softc* %46)
  ret void
}

declare dso_local i32 @RTWN_LOCK(%struct.rtwn_softc*) #1

declare dso_local i32 @RTWN_UNLOCK(%struct.rtwn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
