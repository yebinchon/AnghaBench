; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8726_read_sfp_module_eeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8726_read_sfp_module_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_phy = type { i32 }
%struct.elink_params = type { %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }

@ELINK_SFP_EEPROM_PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Reading from eeprom is limited to 0xf\0A\00", align 1
@ELINK_STATUS_ERROR = common dso_local global i32 0, align 4
@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_SFP_TWO_WIRE_BYTE_CNT = common dso_local global i64 0, align 8
@MDIO_PMA_REG_SFP_TWO_WIRE_MEM_ADDR = common dso_local global i64 0, align 8
@MDIO_PMA_REG_SFP_TWO_WIRE_CTRL = common dso_local global i64 0, align 8
@MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK = common dso_local global i32 0, align 4
@MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Got bad status 0x%x when reading from SFP+ EEPROM\0A\00", align 1
@MDIO_PMA_REG_8726_TWO_WIRE_DATA_BUF = common dso_local global i64 0, align 8
@MDIO_PMA_REG_8726_TWO_WIRE_DATA_MASK = common dso_local global i32 0, align 4
@MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_IDLE = common dso_local global i32 0, align 4
@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elink_phy*, %struct.elink_params*, i32, i32, i32, i32*, i32)* @elink_8726_read_sfp_module_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_8726_read_sfp_module_eeprom(%struct.elink_phy* %0, %struct.elink_params* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.elink_phy*, align 8
  %10 = alloca %struct.elink_params*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.bxe_softc*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.elink_phy* %0, %struct.elink_phy** %9, align 8
  store %struct.elink_params* %1, %struct.elink_params** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %19 = load %struct.elink_params*, %struct.elink_params** %10, align 8
  %20 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %19, i32 0, i32 0
  %21 = load %struct.bxe_softc*, %struct.bxe_softc** %20, align 8
  store %struct.bxe_softc* %21, %struct.bxe_softc** %16, align 8
  store i32 0, i32* %17, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* @ELINK_SFP_EEPROM_PAGE_SIZE, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %7
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %27 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ELINK_STATUS_ERROR, align 4
  store i32 %28, i32* %8, align 4
  br label %131

29:                                               ; preds = %7
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %31 = load %struct.elink_phy*, %struct.elink_phy** %9, align 8
  %32 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %33 = load i64, i64* @MDIO_PMA_REG_SFP_TWO_WIRE_BYTE_CNT, align 8
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* %11, align 4
  %36 = shl i32 %35, 8
  %37 = or i32 %34, %36
  %38 = call i32 @elink_cl45_write(%struct.bxe_softc* %30, %struct.elink_phy* %31, i32 %32, i64 %33, i32 %37)
  %39 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %40 = load %struct.elink_phy*, %struct.elink_phy** %9, align 8
  %41 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %42 = load i64, i64* @MDIO_PMA_REG_SFP_TWO_WIRE_MEM_ADDR, align 8
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @elink_cl45_write(%struct.bxe_softc* %39, %struct.elink_phy* %40, i32 %41, i64 %42, i32 %43)
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %46 = load %struct.elink_phy*, %struct.elink_phy** %9, align 8
  %47 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %48 = load i64, i64* @MDIO_PMA_REG_SFP_TWO_WIRE_CTRL, align 8
  %49 = call i32 @elink_cl45_write(%struct.bxe_softc* %45, %struct.elink_phy* %46, i32 %47, i64 %48, i32 11279)
  store i32 0, i32* %18, align 4
  br label %50

50:                                               ; preds = %67, %29
  %51 = load i32, i32* %18, align 4
  %52 = icmp slt i32 %51, 100
  br i1 %52, label %53, label %70

53:                                               ; preds = %50
  %54 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %55 = load %struct.elink_phy*, %struct.elink_phy** %9, align 8
  %56 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %57 = load i64, i64* @MDIO_PMA_REG_SFP_TWO_WIRE_CTRL, align 8
  %58 = call i32 @elink_cl45_read(%struct.bxe_softc* %54, %struct.elink_phy* %55, i32 %56, i64 %57, i32* %17)
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_COMPLETE, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %70

65:                                               ; preds = %53
  %66 = call i32 @DELAY(i32 5)
  br label %67

67:                                               ; preds = %65
  %68 = load i32, i32* %18, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %18, align 4
  br label %50

70:                                               ; preds = %64, %50
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK, align 4
  %73 = and i32 %71, %72
  %74 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_COMPLETE, align 4
  %75 = icmp ne i32 %73, %74
  br i1 %75, label %76, label %83

76:                                               ; preds = %70
  %77 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %78 = load i32, i32* %17, align 4
  %79 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK, align 4
  %80 = and i32 %78, %79
  %81 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %77, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @ELINK_STATUS_ERROR, align 4
  store i32 %82, i32* %8, align 4
  br label %131

83:                                               ; preds = %70
  store i32 0, i32* %18, align 4
  br label %84

84:                                               ; preds = %104, %83
  %85 = load i32, i32* %18, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %107

88:                                               ; preds = %84
  %89 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %90 = load %struct.elink_phy*, %struct.elink_phy** %9, align 8
  %91 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %92 = load i64, i64* @MDIO_PMA_REG_8726_TWO_WIRE_DATA_BUF, align 8
  %93 = load i32, i32* %18, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %92, %94
  %96 = call i32 @elink_cl45_read(%struct.bxe_softc* %89, %struct.elink_phy* %90, i32 %91, i64 %95, i32* %17)
  %97 = load i32, i32* %17, align 4
  %98 = load i32, i32* @MDIO_PMA_REG_8726_TWO_WIRE_DATA_MASK, align 4
  %99 = and i32 %97, %98
  %100 = load i32*, i32** %14, align 8
  %101 = load i32, i32* %18, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  store i32 %99, i32* %103, align 4
  br label %104

104:                                              ; preds = %88
  %105 = load i32, i32* %18, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %18, align 4
  br label %84

107:                                              ; preds = %84
  store i32 0, i32* %18, align 4
  br label %108

108:                                              ; preds = %126, %107
  %109 = load i32, i32* %18, align 4
  %110 = icmp slt i32 %109, 100
  br i1 %110, label %111, label %129

111:                                              ; preds = %108
  %112 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %113 = load %struct.elink_phy*, %struct.elink_phy** %9, align 8
  %114 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %115 = load i64, i64* @MDIO_PMA_REG_SFP_TWO_WIRE_CTRL, align 8
  %116 = call i32 @elink_cl45_read(%struct.bxe_softc* %112, %struct.elink_phy* %113, i32 %114, i64 %115, i32* %17)
  %117 = load i32, i32* %17, align 4
  %118 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK, align 4
  %119 = and i32 %117, %118
  %120 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_IDLE, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %124

122:                                              ; preds = %111
  %123 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %123, i32* %8, align 4
  br label %131

124:                                              ; preds = %111
  %125 = call i32 @DELAY(i32 1000)
  br label %126

126:                                              ; preds = %124
  %127 = load i32, i32* %18, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %18, align 4
  br label %108

129:                                              ; preds = %108
  %130 = load i32, i32* @ELINK_STATUS_ERROR, align 4
  store i32 %130, i32* %8, align 4
  br label %131

131:                                              ; preds = %129, %122, %76, %25
  %132 = load i32, i32* %8, align 4
  ret i32 %132
}

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @elink_cl45_write(%struct.bxe_softc*, %struct.elink_phy*, i32, i64, i32) #1

declare dso_local i32 @elink_cl45_read(%struct.bxe_softc*, %struct.elink_phy*, i32, i64, i32*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
