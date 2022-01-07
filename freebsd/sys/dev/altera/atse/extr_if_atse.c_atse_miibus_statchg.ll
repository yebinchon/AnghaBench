; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_miibus_statchg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_miibus_statchg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atse_softc = type { i32, %struct.ifnet*, i32 }
%struct.ifnet = type { i32 }
%struct.mii_data = type { i32, i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@BASE_CFG_COMMAND_CONFIG = common dso_local global i32 0, align 4
@ATSE_FLAGS_LINK = common dso_local global i32 0, align 4
@IFM_ACTIVE = common dso_local global i32 0, align 4
@IFM_AVALID = common dso_local global i32 0, align 4
@BASE_CFG_COMMAND_CONFIG_ENA_10 = common dso_local global i32 0, align 4
@BASE_CFG_COMMAND_CONFIG_ETH_SPEED = common dso_local global i32 0, align 4
@IFM_FDX = common dso_local global i32 0, align 4
@BASE_CFG_COMMAND_CONFIG_HD_ENA = common dso_local global i32 0, align 4
@BASE_CFG_COMMAND_CONFIG_TX_ENA = common dso_local global i32 0, align 4
@BASE_CFG_COMMAND_CONFIG_RX_ENA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @atse_miibus_statchg(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atse_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i8* @device_get_softc(i32 %7)
  %9 = bitcast i8* %8 to %struct.atse_softc*
  store %struct.atse_softc* %9, %struct.atse_softc** %3, align 8
  %10 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %11 = call i32 @ATSE_LOCK_ASSERT(%struct.atse_softc* %10)
  %12 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %13 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i8* @device_get_softc(i32 %14)
  %16 = bitcast i8* %15 to %struct.mii_data*
  store %struct.mii_data* %16, %struct.mii_data** %4, align 8
  %17 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %18 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %17, i32 0, i32 1
  %19 = load %struct.ifnet*, %struct.ifnet** %18, align 8
  store %struct.ifnet* %19, %struct.ifnet** %5, align 8
  %20 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %21 = icmp eq %struct.mii_data* %20, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %1
  %23 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %24 = icmp eq %struct.ifnet* %23, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %22
  %26 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %27 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %30 = and i32 %28, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25, %22, %1
  br label %137

33:                                               ; preds = %25
  %34 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %35 = load i32, i32* @BASE_CFG_COMMAND_CONFIG, align 4
  %36 = call i32 @CSR_READ_4(%struct.atse_softc* %34, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* @ATSE_FLAGS_LINK, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %40 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 8
  %43 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %44 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @IFM_ACTIVE, align 4
  %47 = load i32, i32* @IFM_AVALID, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = load i32, i32* @IFM_ACTIVE, align 4
  %51 = load i32, i32* @IFM_AVALID, align 4
  %52 = or i32 %50, %51
  %53 = icmp eq i32 %49, %52
  br i1 %53, label %54, label %101

54:                                               ; preds = %33
  %55 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %56 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @IFM_SUBTYPE(i32 %57)
  switch i32 %58, label %99 [
    i32 128, label %59
    i32 129, label %72
    i32 130, label %86
  ]

59:                                               ; preds = %54
  %60 = load i32, i32* @BASE_CFG_COMMAND_CONFIG_ENA_10, align 4
  %61 = load i32, i32* %6, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* @BASE_CFG_COMMAND_CONFIG_ETH_SPEED, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* @ATSE_FLAGS_LINK, align 4
  %68 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %69 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %100

72:                                               ; preds = %54
  %73 = load i32, i32* @BASE_CFG_COMMAND_CONFIG_ENA_10, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* @BASE_CFG_COMMAND_CONFIG_ETH_SPEED, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %6, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* @ATSE_FLAGS_LINK, align 4
  %82 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %83 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %100

86:                                               ; preds = %54
  %87 = load i32, i32* @BASE_CFG_COMMAND_CONFIG_ENA_10, align 4
  %88 = xor i32 %87, -1
  %89 = load i32, i32* %6, align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* @BASE_CFG_COMMAND_CONFIG_ETH_SPEED, align 4
  %92 = load i32, i32* %6, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* @ATSE_FLAGS_LINK, align 4
  %95 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %96 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %100

99:                                               ; preds = %54
  br label %100

100:                                              ; preds = %99, %86, %72, %59
  br label %101

101:                                              ; preds = %100, %33
  %102 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %103 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @ATSE_FLAGS_LINK, align 4
  %106 = and i32 %104, %105
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  br label %137

109:                                              ; preds = %101
  %110 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %111 = getelementptr inbounds %struct.mii_data, %struct.mii_data* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @IFM_FDX, align 4
  %114 = and i32 %112, %113
  %115 = call i64 @IFM_OPTIONS(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %109
  %118 = load i32, i32* @BASE_CFG_COMMAND_CONFIG_HD_ENA, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %6, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %6, align 4
  br label %126

122:                                              ; preds = %109
  %123 = load i32, i32* @BASE_CFG_COMMAND_CONFIG_HD_ENA, align 4
  %124 = load i32, i32* %6, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %122, %117
  %127 = load i32, i32* @BASE_CFG_COMMAND_CONFIG_TX_ENA, align 4
  %128 = load i32, i32* %6, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* @BASE_CFG_COMMAND_CONFIG_RX_ENA, align 4
  %131 = load i32, i32* %6, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %6, align 4
  %133 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %134 = load i32, i32* @BASE_CFG_COMMAND_CONFIG, align 4
  %135 = load i32, i32* %6, align 4
  %136 = call i32 @CSR_WRITE_4(%struct.atse_softc* %133, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %126, %108, %32
  ret void
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @ATSE_LOCK_ASSERT(%struct.atse_softc*) #1

declare dso_local i32 @CSR_READ_4(%struct.atse_softc*, i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i64 @IFM_OPTIONS(i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.atse_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
