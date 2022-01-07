; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_muge_setmulti.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/net/extr_if_muge.c_muge_setmulti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ether = type { i32 }
%struct.muge_softc = type { i32, i64**, i64* }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@ETH_RFE_CTL_UCAST_EN_ = common dso_local global i32 0, align 4
@ETH_RFE_CTL_MCAST_EN_ = common dso_local global i32 0, align 4
@ETH_RFE_CTL_DA_PERFECT_ = common dso_local global i32 0, align 4
@ETH_RFE_CTL_MCAST_HASH_ = common dso_local global i32 0, align 4
@ETH_DP_SEL_VHF_HASH_LEN = common dso_local global i64 0, align 8
@MUGE_NUM_PFILTER_ADDRS_ = common dso_local global i64 0, align 8
@ETH_RFE_CTL_BCAST_EN_ = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"promiscuous mode enabled\0A\00", align 1
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"receive all multicast enabled\0A\00", align 1
@muge_hash_maddr = common dso_local global i32 0, align 4
@ETH_RFE_CTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ether*)* @muge_setmulti to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @muge_setmulti(%struct.usb_ether* %0) #0 {
  %2 = alloca %struct.usb_ether*, align 8
  %3 = alloca %struct.muge_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i64, align 8
  store %struct.usb_ether* %0, %struct.usb_ether** %2, align 8
  %6 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %7 = call %struct.muge_softc* @uether_getsc(%struct.usb_ether* %6)
  store %struct.muge_softc* %7, %struct.muge_softc** %3, align 8
  %8 = load %struct.usb_ether*, %struct.usb_ether** %2, align 8
  %9 = call %struct.ifnet* @uether_getifp(%struct.usb_ether* %8)
  store %struct.ifnet* %9, %struct.ifnet** %4, align 8
  %10 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @MUGE_LOCK_ASSERT(%struct.muge_softc* %10, i32 %11)
  %13 = load i32, i32* @ETH_RFE_CTL_UCAST_EN_, align 4
  %14 = load i32, i32* @ETH_RFE_CTL_MCAST_EN_, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @ETH_RFE_CTL_DA_PERFECT_, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @ETH_RFE_CTL_MCAST_HASH_, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %22 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  store i64 0, i64* %5, align 8
  br label %25

25:                                               ; preds = %35, %1
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @ETH_DP_SEL_VHF_HASH_LEN, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %31 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %30, i32 0, i32 2
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %5, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %29
  %36 = load i64, i64* %5, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %5, align 8
  br label %25

38:                                               ; preds = %25
  store i64 1, i64* %5, align 8
  br label %39

39:                                               ; preds = %58, %38
  %40 = load i64, i64* %5, align 8
  %41 = load i64, i64* @MUGE_NUM_PFILTER_ADDRS_, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %39
  %44 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %45 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %44, i32 0, i32 1
  %46 = load i64**, i64*** %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds i64*, i64** %46, i64 %47
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %52 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %51, i32 0, i32 1
  %53 = load i64**, i64*** %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds i64*, i64** %53, i64 %54
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %43
  %59 = load i64, i64* %5, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %5, align 8
  br label %39

61:                                               ; preds = %39
  %62 = load i32, i32* @ETH_RFE_CTL_BCAST_EN_, align 4
  %63 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %64 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %68 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @IFF_PROMISC, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %83

73:                                               ; preds = %61
  %74 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %75 = call i32 @muge_dbg_printf(%struct.muge_softc* %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* @ETH_RFE_CTL_MCAST_EN_, align 4
  %77 = load i32, i32* @ETH_RFE_CTL_UCAST_EN_, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %80 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %106

83:                                               ; preds = %61
  %84 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %85 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @IFF_ALLMULTI, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %83
  %91 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %92 = call i32 @muge_dbg_printf(%struct.muge_softc* %91, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i32, i32* @ETH_RFE_CTL_MCAST_EN_, align 4
  %94 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %95 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 8
  br label %105

98:                                               ; preds = %83
  %99 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %100 = load i32, i32* @muge_hash_maddr, align 4
  %101 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %102 = call i32 @if_foreach_llmaddr(%struct.ifnet* %99, i32 %100, %struct.muge_softc* %101)
  %103 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %104 = call i32 @muge_multicast_write(%struct.muge_softc* %103)
  br label %105

105:                                              ; preds = %98, %90
  br label %106

106:                                              ; preds = %105, %73
  %107 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %108 = load i32, i32* @ETH_RFE_CTL, align 4
  %109 = load %struct.muge_softc*, %struct.muge_softc** %3, align 8
  %110 = getelementptr inbounds %struct.muge_softc, %struct.muge_softc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @lan78xx_write_reg(%struct.muge_softc* %107, i32 %108, i32 %111)
  ret void
}

declare dso_local %struct.muge_softc* @uether_getsc(%struct.usb_ether*) #1

declare dso_local %struct.ifnet* @uether_getifp(%struct.usb_ether*) #1

declare dso_local i32 @MUGE_LOCK_ASSERT(%struct.muge_softc*, i32) #1

declare dso_local i32 @muge_dbg_printf(%struct.muge_softc*, i8*) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, %struct.muge_softc*) #1

declare dso_local i32 @muge_multicast_write(%struct.muge_softc*) #1

declare dso_local i32 @lan78xx_write_reg(%struct.muge_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
