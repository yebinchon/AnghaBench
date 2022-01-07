; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_setladrf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_setladrf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hme_softc = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@HME_MACI_RXCFG = common dso_local global i32 0, align 4
@HME_MAC_RXCFG_PGRP = common dso_local global i32 0, align 4
@HME_MAC_RXCFG_PMISC = common dso_local global i32 0, align 4
@HME_MAC_RXCFG_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cannot disable RX MAC\0A\00", align 1
@HME_MAC_RXCFG_HENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"cannot disable hash filter\0A\00", align 1
@HME_MAC_RXCFG_ME = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@hme_hash_maddr = common dso_local global i32 0, align 4
@HME_MACI_HASHTAB0 = common dso_local global i32 0, align 4
@HME_MACI_HASHTAB1 = common dso_local global i32 0, align 4
@HME_MACI_HASHTAB2 = common dso_local global i32 0, align 4
@HME_MACI_HASHTAB3 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"cannot configure RX MAC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hme_softc*, i32)* @hme_setladrf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hme_setladrf(%struct.hme_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.hme_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  store %struct.hme_softc* %0, %struct.hme_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %9 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %8, i32 0, i32 1
  %10 = load %struct.ifnet*, %struct.ifnet** %9, align 8
  store %struct.ifnet* %10, %struct.ifnet** %5, align 8
  %11 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %12 = load i32, i32* @MA_OWNED, align 4
  %13 = call i32 @HME_LOCK_ASSERT(%struct.hme_softc* %11, i32 %12)
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 0, i32* %14, align 16
  %15 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 0, i32* %17, align 4
  %18 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %19 = load i32, i32* @HME_MACI_RXCFG, align 4
  %20 = call i32 @HME_MAC_READ_4(%struct.hme_softc* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @HME_MAC_RXCFG_PGRP, align 4
  %22 = load i32, i32* @HME_MAC_RXCFG_PMISC, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %7, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %28 = load i32, i32* @HME_MACI_RXCFG, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @HME_MAC_RXCFG_ENABLE, align 4
  %31 = call i32 @hme_mac_bitflip(%struct.hme_softc* %27, i32 %28, i32 %29, i32 %30, i32 0)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %2
  %34 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %35 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @device_printf(i32 %36, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %33, %2
  %39 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %40 = load i32, i32* @HME_MACI_RXCFG, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @HME_MAC_RXCFG_HENABLE, align 4
  %43 = call i32 @hme_mac_bitflip(%struct.hme_softc* %39, i32 %40, i32 %41, i32 %42, i32 0)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %38
  %46 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %47 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %45, %38
  %51 = load i32, i32* @HME_MAC_RXCFG_ME, align 4
  %52 = load i32, i32* %7, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load i32, i32* @HME_MAC_RXCFG_ENABLE, align 4
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  br label %65

60:                                               ; preds = %50
  %61 = load i32, i32* @HME_MAC_RXCFG_ENABLE, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %7, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %60, %56
  %66 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %67 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @IFF_PROMISC, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i32, i32* @HME_MAC_RXCFG_PMISC, align 4
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %7, align 4
  br label %95

76:                                               ; preds = %65
  %77 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %78 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @IFF_ALLMULTI, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load i32, i32* @HME_MAC_RXCFG_PGRP, align 4
  %85 = load i32, i32* %7, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %7, align 4
  br label %95

87:                                               ; preds = %76
  %88 = load i32, i32* @HME_MAC_RXCFG_HENABLE, align 4
  %89 = load i32, i32* %7, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %7, align 4
  %91 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %92 = load i32, i32* @hme_hash_maddr, align 4
  %93 = bitcast [4 x i32]* %6 to i32**
  %94 = call i32 @if_foreach_llmaddr(%struct.ifnet* %91, i32 %92, i32** %93)
  br label %95

95:                                               ; preds = %87, %83, %72
  %96 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %97 = load i32, i32* @HME_MACI_HASHTAB0, align 4
  %98 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %99 = load i32, i32* %98, align 16
  %100 = call i32 @HME_MAC_WRITE_4(%struct.hme_softc* %96, i32 %97, i32 %99)
  %101 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %102 = load i32, i32* @HME_MACI_HASHTAB1, align 4
  %103 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @HME_MAC_WRITE_4(%struct.hme_softc* %101, i32 %102, i32 %104)
  %106 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %107 = load i32, i32* @HME_MACI_HASHTAB2, align 4
  %108 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @HME_MAC_WRITE_4(%struct.hme_softc* %106, i32 %107, i32 %109)
  %111 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %112 = load i32, i32* @HME_MACI_HASHTAB3, align 4
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @HME_MAC_WRITE_4(%struct.hme_softc* %111, i32 %112, i32 %114)
  %116 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %117 = load i32, i32* @HME_MACI_RXCFG, align 4
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* @HME_MAC_RXCFG_ENABLE, align 4
  %121 = load i32, i32* @HME_MAC_RXCFG_HENABLE, align 4
  %122 = or i32 %120, %121
  %123 = load i32, i32* @HME_MAC_RXCFG_ME, align 4
  %124 = or i32 %122, %123
  %125 = and i32 %119, %124
  %126 = call i32 @hme_mac_bitflip(%struct.hme_softc* %116, i32 %117, i32 %118, i32 0, i32 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %133, label %128

128:                                              ; preds = %95
  %129 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %130 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @device_printf(i32 %131, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %133

133:                                              ; preds = %128, %95
  ret void
}

declare dso_local i32 @HME_LOCK_ASSERT(%struct.hme_softc*, i32) #1

declare dso_local i32 @HME_MAC_READ_4(%struct.hme_softc*, i32) #1

declare dso_local i32 @hme_mac_bitflip(%struct.hme_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @if_foreach_llmaddr(%struct.ifnet*, i32, i32**) #1

declare dso_local i32 @HME_MAC_WRITE_4(%struct.hme_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
