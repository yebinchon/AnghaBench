; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_opmode_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_opmode_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { i32, %struct.bwi_softc* }
%struct.bwi_softc = type { i64, i32, %struct.ieee80211com }
%struct.ieee80211com = type { i32, i64 }

@BWI_MAC_STATUS = common dso_local global i32 0, align 4
@BWI_MAC_STATUS_INFRA = common dso_local global i32 0, align 4
@BWI_COMM_MOBJ = common dso_local global i32 0, align 4
@BWI_COMM_MOBJ_PROBE_RESP_TO = common dso_local global i32 0, align 4
@BWI_MAC_STATUS_OPMODE_HOSTAP = common dso_local global i32 0, align 4
@BWI_MAC_STATUS_PASS_CTL = common dso_local global i32 0, align 4
@BWI_MAC_STATUS_PASS_BCN = common dso_local global i32 0, align 4
@BWI_MAC_STATUS_PASS_BADPLCP = common dso_local global i32 0, align 4
@BWI_MAC_STATUS_PASS_BADFCS = common dso_local global i32 0, align 4
@BWI_MAC_STATUS_PROMISC = common dso_local global i32 0, align 4
@BWI_BBPID_BCM4306 = common dso_local global i64 0, align 8
@BWI_MAC_PRE_TBTT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwi_mac*)* @bwi_mac_opmode_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwi_mac_opmode_init(%struct.bwi_mac* %0) #0 {
  %2 = alloca %struct.bwi_mac*, align 8
  %3 = alloca %struct.bwi_softc*, align 8
  %4 = alloca %struct.ieee80211com*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %2, align 8
  %7 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %8 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %7, i32 0, i32 1
  %9 = load %struct.bwi_softc*, %struct.bwi_softc** %8, align 8
  store %struct.bwi_softc* %9, %struct.bwi_softc** %3, align 8
  %10 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %11 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %10, i32 0, i32 2
  store %struct.ieee80211com* %11, %struct.ieee80211com** %4, align 8
  %12 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %13 = load i32, i32* @BWI_MAC_STATUS, align 4
  %14 = load i32, i32* @BWI_MAC_STATUS_INFRA, align 4
  %15 = call i32 @CSR_CLRBITS_4(%struct.bwi_softc* %12, i32 %13, i32 %14)
  %16 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %17 = load i32, i32* @BWI_MAC_STATUS, align 4
  %18 = load i32, i32* @BWI_MAC_STATUS_INFRA, align 4
  %19 = call i32 @CSR_SETBITS_4(%struct.bwi_softc* %16, i32 %17, i32 %18)
  %20 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %21 = load i32, i32* @BWI_COMM_MOBJ, align 4
  %22 = load i32, i32* @BWI_COMM_MOBJ_PROBE_RESP_TO, align 4
  %23 = call i32 @MOBJ_WRITE_2(%struct.bwi_mac* %20, i32 %21, i32 %22, i32 0)
  %24 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %25 = load i32, i32* @BWI_MAC_STATUS, align 4
  %26 = call i32 @CSR_READ_4(%struct.bwi_softc* %24, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @BWI_MAC_STATUS_OPMODE_HOSTAP, align 4
  %28 = load i32, i32* @BWI_MAC_STATUS_PASS_CTL, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @BWI_MAC_STATUS_PASS_BCN, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @BWI_MAC_STATUS_PASS_BADPLCP, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @BWI_MAC_STATUS_PASS_BADFCS, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @BWI_MAC_STATUS_PROMISC, align 4
  %37 = or i32 %35, %36
  %38 = xor i32 %37, -1
  %39 = load i32, i32* %5, align 4
  %40 = and i32 %39, %38
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @BWI_MAC_STATUS_INFRA, align 4
  %42 = load i32, i32* %5, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %5, align 4
  %44 = load %struct.bwi_mac*, %struct.bwi_mac** %2, align 8
  %45 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %46, 5
  br i1 %47, label %48, label %52

48:                                               ; preds = %1
  %49 = load i32, i32* @BWI_MAC_STATUS_PROMISC, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %48, %1
  %53 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %54 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  switch i32 %55, label %69 [
    i32 129, label %56
    i32 130, label %61
    i32 128, label %65
  ]

56:                                               ; preds = %52
  %57 = load i32, i32* @BWI_MAC_STATUS_INFRA, align 4
  %58 = xor i32 %57, -1
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %5, align 4
  br label %70

61:                                               ; preds = %52
  %62 = load i32, i32* @BWI_MAC_STATUS_OPMODE_HOSTAP, align 4
  %63 = load i32, i32* %5, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %5, align 4
  br label %70

65:                                               ; preds = %52
  %66 = load i32, i32* @BWI_MAC_STATUS_PASS_CTL, align 4
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  br label %70

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69, %65, %61, %56
  %71 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %72 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp sgt i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* @BWI_MAC_STATUS_PROMISC, align 4
  %77 = load i32, i32* %5, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %5, align 4
  br label %79

79:                                               ; preds = %75, %70
  %80 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %81 = load i32, i32* @BWI_MAC_STATUS, align 4
  %82 = load i32, i32* %5, align 4
  %83 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %80, i32 %81, i32 %82)
  %84 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %85 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 129
  br i1 %87, label %88, label %107

88:                                               ; preds = %79
  %89 = load %struct.ieee80211com*, %struct.ieee80211com** %4, align 8
  %90 = getelementptr inbounds %struct.ieee80211com, %struct.ieee80211com* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 130
  br i1 %92, label %93, label %107

93:                                               ; preds = %88
  %94 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %95 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @BWI_BBPID_BCM4306, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %101 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp eq i32 %102, 3
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store i32 100, i32* %6, align 4
  br label %106

105:                                              ; preds = %99, %93
  store i32 50, i32* %6, align 4
  br label %106

106:                                              ; preds = %105, %104
  br label %108

107:                                              ; preds = %88, %79
  store i32 2, i32* %6, align 4
  br label %108

108:                                              ; preds = %107, %106
  %109 = load %struct.bwi_softc*, %struct.bwi_softc** %3, align 8
  %110 = load i32, i32* @BWI_MAC_PRE_TBTT, align 4
  %111 = load i32, i32* %6, align 4
  %112 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %109, i32 %110, i32 %111)
  ret void
}

declare dso_local i32 @CSR_CLRBITS_4(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @CSR_SETBITS_4(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @MOBJ_WRITE_2(%struct.bwi_mac*, i32, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.bwi_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.bwi_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
