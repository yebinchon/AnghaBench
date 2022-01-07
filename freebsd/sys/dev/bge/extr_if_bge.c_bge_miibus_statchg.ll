; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_miibus_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_miibus_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i32, i32, i32, i32 }
%struct.mii_data = type { i32, i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@BGE_ASICREV_BCM5906 = common dso_local global i32 0, align 4
@BGE_MAC_MODE = common dso_local global i32 0, align 4
@BGE_MACMODE_PORTMODE = common dso_local global i32 0, align 4
@BGE_MACMODE_HALF_DUPLEX = common dso_local global i32 0, align 4
@BGE_TX_MODE = common dso_local global i32 0, align 4
@BGE_RX_MODE = common dso_local global i32 0, align 4
@BGE_PORTMODE_GMII = common dso_local global i32 0, align 4
@BGE_PORTMODE_MII = common dso_local global i32 0, align 4
@BGE_TXMODE_FLOWCTL_ENABLE = common dso_local global i32 0, align 4
@BGE_RXMODE_FLOWCTL_ENABLE = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_ETH_TXPAUSE = common dso_local global i32 0, align 4
@IFM_ETH_RXPAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @bge_miibus_statchg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bge_miibus_statchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bge_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i8* @device_get_softc(i32 %8)
  %10 = bitcast i8* %9 to %struct.bge_softc*
  store %struct.bge_softc* %10, %struct.bge_softc** %3, align 8
  %11 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %12 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @if_getdrvflags(i32 %13)
  %15 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %163

19:                                               ; preds = %1
  %20 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %21 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i8* @device_get_softc(i32 %22)
  %24 = bitcast i8* %23 to %struct.mii_data*
  store %struct.mii_data* %24, %struct.mii_data** %4, align 8
  %25 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %26 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @IFM_ACTIVE, align 4
  %29 = load i32, i32* @IFM_AVALID, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = load i32, i32* @IFM_ACTIVE, align 4
  %33 = load i32, i32* @IFM_AVALID, align 4
  %34 = or i32 %32, %33
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %61

36:                                               ; preds = %19
  %37 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %38 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @IFM_SUBTYPE(i32 %39)
  switch i32 %40, label %57 [
    i32 129, label %41
    i32 130, label %41
    i32 131, label %44
    i32 132, label %44
    i32 128, label %44
  ]

41:                                               ; preds = %36, %36
  %42 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %43 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  br label %60

44:                                               ; preds = %36, %36, %36
  %45 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %46 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @BGE_ASICREV_BCM5906, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %52 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %51, i32 0, i32 0
  store i32 1, i32* %52, align 4
  br label %56

53:                                               ; preds = %44
  %54 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %55 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %54, i32 0, i32 0
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %50
  br label %60

57:                                               ; preds = %36
  %58 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %59 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %58, i32 0, i32 0
  store i32 0, i32* %59, align 4
  br label %60

60:                                               ; preds = %57, %56, %41
  br label %64

61:                                               ; preds = %19
  %62 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %63 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %62, i32 0, i32 0
  store i32 0, i32* %63, align 4
  br label %64

64:                                               ; preds = %61, %60
  %65 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %66 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  br label %163

70:                                               ; preds = %64
  %71 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %72 = load i32, i32* @BGE_MAC_MODE, align 4
  %73 = call i32 @CSR_READ_4(%struct.bge_softc* %71, i32 %72)
  %74 = load i32, i32* @BGE_MACMODE_PORTMODE, align 4
  %75 = load i32, i32* @BGE_MACMODE_HALF_DUPLEX, align 4
  %76 = or i32 %74, %75
  %77 = xor i32 %76, -1
  %78 = and i32 %73, %77
  store i32 %78, i32* %5, align 4
  %79 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %80 = load i32, i32* @BGE_TX_MODE, align 4
  %81 = call i32 @CSR_READ_4(%struct.bge_softc* %79, i32 %80)
  store i32 %81, i32* %7, align 4
  %82 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %83 = load i32, i32* @BGE_RX_MODE, align 4
  %84 = call i32 @CSR_READ_4(%struct.bge_softc* %82, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %86 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @IFM_SUBTYPE(i32 %87)
  %89 = icmp eq i32 %88, 131
  br i1 %89, label %96, label %90

90:                                               ; preds = %70
  %91 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %92 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @IFM_SUBTYPE(i32 %93)
  %95 = icmp eq i32 %94, 132
  br i1 %95, label %96, label %100

96:                                               ; preds = %90, %70
  %97 = load i32, i32* @BGE_PORTMODE_GMII, align 4
  %98 = load i32, i32* %5, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %5, align 4
  br label %104

100:                                              ; preds = %90
  %101 = load i32, i32* @BGE_PORTMODE_MII, align 4
  %102 = load i32, i32* %5, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %100, %96
  %105 = load i32, i32* @BGE_TXMODE_FLOWCTL_ENABLE, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %7, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* @BGE_RXMODE_FLOWCTL_ENABLE, align 4
  %110 = xor i32 %109, -1
  %111 = load i32, i32* %6, align 4
  %112 = and i32 %111, %110
  store i32 %112, i32* %6, align 4
  %113 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %114 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @IFM_OPTIONS(i32 %115)
  %117 = load i32, i32* @IFM_FDX, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %145

120:                                              ; preds = %104
  %121 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %122 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @IFM_OPTIONS(i32 %123)
  %125 = load i32, i32* @IFM_ETH_TXPAUSE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %120
  %129 = load i32, i32* @BGE_TXMODE_FLOWCTL_ENABLE, align 4
  %130 = load i32, i32* %7, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %7, align 4
  br label %132

132:                                              ; preds = %128, %120
  %133 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %134 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @IFM_OPTIONS(i32 %135)
  %137 = load i32, i32* @IFM_ETH_RXPAUSE, align 4
  %138 = and i32 %136, %137
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %132
  %141 = load i32, i32* @BGE_RXMODE_FLOWCTL_ENABLE, align 4
  %142 = load i32, i32* %6, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %6, align 4
  br label %144

144:                                              ; preds = %140, %132
  br label %149

145:                                              ; preds = %104
  %146 = load i32, i32* @BGE_MACMODE_HALF_DUPLEX, align 4
  %147 = load i32, i32* %5, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %145, %144
  %150 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %151 = load i32, i32* @BGE_MAC_MODE, align 4
  %152 = load i32, i32* %5, align 4
  %153 = call i32 @CSR_WRITE_4(%struct.bge_softc* %150, i32 %151, i32 %152)
  %154 = call i32 @DELAY(i32 40)
  %155 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %156 = load i32, i32* @BGE_TX_MODE, align 4
  %157 = load i32, i32* %7, align 4
  %158 = call i32 @CSR_WRITE_4(%struct.bge_softc* %155, i32 %156, i32 %157)
  %159 = load %struct.bge_softc*, %struct.bge_softc** %3, align 8
  %160 = load i32, i32* @BGE_RX_MODE, align 4
  %161 = load i32, i32* %6, align 4
  %162 = call i32 @CSR_WRITE_4(%struct.bge_softc* %159, i32 %160, i32 %161)
  br label %163

163:                                              ; preds = %149, %69, %18
  ret void
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @CSR_READ_4(%struct.bge_softc*, i32) #1

declare dso_local i32 @IFM_OPTIONS(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
