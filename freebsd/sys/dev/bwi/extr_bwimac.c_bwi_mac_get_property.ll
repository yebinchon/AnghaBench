; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_get_property.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_get_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { i32, %struct.bwi_softc* }
%struct.bwi_softc = type { i32, i32 }

@BWI_MAC_STATUS = common dso_local global i32 0, align 4
@BWI_MAC_STATUS_BSWAP = common dso_local global i32 0, align 4
@BWI_DBG_MAC = common dso_local global i32 0, align 4
@BWI_DBG_ATTACH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"need byte swap\00", align 1
@BWI_MAC_F_BSWAP = common dso_local global i32 0, align 4
@BWI_STATE_HI = common dso_local global i32 0, align 4
@BWI_STATE_HI_FLAGS_MASK = common dso_local global i32 0, align 4
@BWI_STATE_HI_FLAG_64BIT = common dso_local global i32 0, align 4
@BWI_BUS_SPACE_64BIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"64bit bus space\00", align 1
@BWI_TXRX_CTRL_BASE = common dso_local global i32 0, align 4
@BWI_TX32_CTRL = common dso_local global i32 0, align 4
@BWI_TXRX32_CTRL_ADDRHI_MASK = common dso_local global i32 0, align 4
@BWI_BUS_SPACE_32BIT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"32bit bus space\00", align 1
@BWI_BUS_SPACE_30BIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [16 x i8] c"30bit bus space\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"MACs bus space mismatch!\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwi_mac*)* @bwi_mac_get_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwi_mac_get_property(%struct.bwi_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwi_mac*, align 8
  %4 = alloca %struct.bwi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %3, align 8
  %8 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %9 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %8, i32 0, i32 1
  %10 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  store %struct.bwi_softc* %10, %struct.bwi_softc** %4, align 8
  %11 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %12 = load i32, i32* @BWI_MAC_STATUS, align 4
  %13 = call i32 @CSR_READ_4(%struct.bwi_softc* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @BWI_MAC_STATUS_BSWAP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %20 = load i32, i32* @BWI_DBG_MAC, align 4
  %21 = load i32, i32* @BWI_DBG_ATTACH, align 4
  %22 = or i32 %20, %21
  %23 = call i32 @DPRINTF(%struct.bwi_softc* %19, i32 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* @BWI_MAC_F_BSWAP, align 4
  %25 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %26 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 8
  br label %29

29:                                               ; preds = %18, %1
  %30 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %31 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %5, align 4
  %33 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %34 = load i32, i32* @BWI_STATE_HI, align 4
  %35 = call i32 @CSR_READ_4(%struct.bwi_softc* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @BWI_STATE_HI_FLAGS_MASK, align 4
  %38 = call i32 @__SHIFTOUT(i32 %36, i32 %37)
  %39 = load i32, i32* @BWI_STATE_HI_FLAG_64BIT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %29
  %43 = load i32, i32* @BWI_BUS_SPACE_64BIT, align 4
  %44 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %45 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %47 = load i32, i32* @BWI_DBG_MAC, align 4
  %48 = load i32, i32* @BWI_DBG_ATTACH, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @DPRINTF(%struct.bwi_softc* %46, i32 %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %84

51:                                               ; preds = %29
  %52 = load i32, i32* @BWI_TXRX_CTRL_BASE, align 4
  %53 = load i32, i32* @BWI_TX32_CTRL, align 4
  %54 = add nsw i32 %52, %53
  store i32 %54, i32* %7, align 4
  %55 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @BWI_TXRX32_CTRL_ADDRHI_MASK, align 4
  %58 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %55, i32 %56, i32 %57)
  %59 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @CSR_READ_4(%struct.bwi_softc* %59, i32 %60)
  %62 = load i32, i32* @BWI_TXRX32_CTRL_ADDRHI_MASK, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %51
  %66 = load i32, i32* @BWI_BUS_SPACE_32BIT, align 4
  %67 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %68 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %67, i32 0, i32 0
  store i32 %66, i32* %68, align 4
  %69 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %70 = load i32, i32* @BWI_DBG_MAC, align 4
  %71 = load i32, i32* @BWI_DBG_ATTACH, align 4
  %72 = or i32 %70, %71
  %73 = call i32 @DPRINTF(%struct.bwi_softc* %69, i32 %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %83

74:                                               ; preds = %51
  %75 = load i32, i32* @BWI_BUS_SPACE_30BIT, align 4
  %76 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %77 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %79 = load i32, i32* @BWI_DBG_MAC, align 4
  %80 = load i32, i32* @BWI_DBG_ATTACH, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @DPRINTF(%struct.bwi_softc* %78, i32 %81, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %83

83:                                               ; preds = %74, %65
  br label %84

84:                                               ; preds = %83, %42
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %84
  %88 = load i32, i32* %5, align 4
  %89 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %90 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %88, %91
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %95 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @device_printf(i32 %96, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %98 = load i32, i32* @ENXIO, align 4
  store i32 %98, i32* %2, align 4
  br label %100

99:                                               ; preds = %87, %84
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %93
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @CSR_READ_4(%struct.bwi_softc*, i32) #1

declare dso_local i32 @DPRINTF(%struct.bwi_softc*, i32, i8*, i8*) #1

declare dso_local i32 @__SHIFTOUT(i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
