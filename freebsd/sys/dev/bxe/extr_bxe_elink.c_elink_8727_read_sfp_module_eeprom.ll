; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8727_read_sfp_module_eeprom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8727_read_sfp_module_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_phy = type { i32 }
%struct.elink_params = type { %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }

@ELINK_SFP_EEPROM_PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Reading from eeprom is limited to 0xf\0A\00", align 1
@ELINK_STATUS_ERROR = common dso_local global i32 0, align 4
@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8727_TWO_WIRE_SLAVE_ADDR = common dso_local global i32 0, align 4
@MDIO_PMA_REG_SFP_TWO_WIRE_CTRL = common dso_local global i32 0, align 4
@MDIO_PMA_REG_SFP_TWO_WIRE_BYTE_CNT = common dso_local global i32 0, align 4
@MDIO_PMA_REG_SFP_TWO_WIRE_MEM_ADDR = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8727_TWO_WIRE_DATA_BUF = common dso_local global i32 0, align 4
@MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK = common dso_local global i32 0, align 4
@MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_COMPLETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Got bad status 0x%x when reading from SFP+ EEPROM\0A\00", align 1
@ELINK_STATUS_TIMEOUT = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8727_TWO_WIRE_DATA_MASK = common dso_local global i32 0, align 4
@MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_IDLE = common dso_local global i32 0, align 4
@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elink_phy*, %struct.elink_params*, i32, i32, i32, i32*, i32)* @elink_8727_read_sfp_module_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_8727_read_sfp_module_eeprom(%struct.elink_phy* %0, %struct.elink_params* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
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
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* @ELINK_SFP_EEPROM_PAGE_SIZE, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %7
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %27 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ELINK_STATUS_ERROR, align 4
  store i32 %28, i32* %8, align 4
  br label %152

29:                                               ; preds = %7
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %31 = load %struct.elink_phy*, %struct.elink_phy** %9, align 8
  %32 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %33 = load i32, i32* @MDIO_PMA_REG_8727_TWO_WIRE_SLAVE_ADDR, align 4
  %34 = load i32, i32* %11, align 4
  %35 = shl i32 %34, 8
  %36 = or i32 %35, 1
  %37 = call i32 @elink_cl45_write(%struct.bxe_softc* %30, %struct.elink_phy* %31, i32 %32, i32 %33, i32 %36)
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %39 = load %struct.elink_phy*, %struct.elink_phy** %9, align 8
  %40 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %41 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_CTRL, align 4
  %42 = call i32 @elink_cl45_read(%struct.bxe_softc* %38, %struct.elink_phy* %39, i32 %40, i32 %41, i32* %17)
  %43 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %44 = load %struct.elink_phy*, %struct.elink_phy** %9, align 8
  %45 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %46 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_BYTE_CNT, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp slt i32 %47, 2
  br i1 %48, label %49, label %50

49:                                               ; preds = %29
  br label %52

50:                                               ; preds = %29
  %51 = load i32, i32* %13, align 4
  br label %52

52:                                               ; preds = %50, %49
  %53 = phi i32 [ 2, %49 ], [ %51, %50 ]
  %54 = call i32 @elink_cl45_write(%struct.bxe_softc* %43, %struct.elink_phy* %44, i32 %45, i32 %46, i32 %53)
  %55 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %56 = load %struct.elink_phy*, %struct.elink_phy** %9, align 8
  %57 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %58 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_MEM_ADDR, align 4
  %59 = load i32, i32* %12, align 4
  %60 = call i32 @elink_cl45_write(%struct.bxe_softc* %55, %struct.elink_phy* %56, i32 %57, i32 %58, i32 %59)
  %61 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %62 = load %struct.elink_phy*, %struct.elink_phy** %9, align 8
  %63 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %64 = load i32, i32* @MDIO_PMA_REG_8727_TWO_WIRE_DATA_BUF, align 4
  %65 = call i32 @elink_cl45_write(%struct.bxe_softc* %61, %struct.elink_phy* %62, i32 %63, i32 32772, i32 %64)
  %66 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %67 = load %struct.elink_phy*, %struct.elink_phy** %9, align 8
  %68 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %69 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_CTRL, align 4
  %70 = call i32 @elink_cl45_write(%struct.bxe_softc* %66, %struct.elink_phy* %67, i32 %68, i32 %69, i32 32770)
  %71 = call i32 @DELAY(i32 1000)
  store i32 0, i32* %18, align 4
  br label %72

72:                                               ; preds = %89, %52
  %73 = load i32, i32* %18, align 4
  %74 = icmp slt i32 %73, 100
  br i1 %74, label %75, label %92

75:                                               ; preds = %72
  %76 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %77 = load %struct.elink_phy*, %struct.elink_phy** %9, align 8
  %78 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %79 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_CTRL, align 4
  %80 = call i32 @elink_cl45_read(%struct.bxe_softc* %76, %struct.elink_phy* %77, i32 %78, i32 %79, i32* %17)
  %81 = load i32, i32* %17, align 4
  %82 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_COMPLETE, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %75
  br label %92

87:                                               ; preds = %75
  %88 = call i32 @DELAY(i32 5)
  br label %89

89:                                               ; preds = %87
  %90 = load i32, i32* %18, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %18, align 4
  br label %72

92:                                               ; preds = %86, %72
  %93 = load i32, i32* %17, align 4
  %94 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_COMPLETE, align 4
  %97 = icmp ne i32 %95, %96
  br i1 %97, label %98, label %105

98:                                               ; preds = %92
  %99 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %100 = load i32, i32* %17, align 4
  %101 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK, align 4
  %102 = and i32 %100, %101
  %103 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %99, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* @ELINK_STATUS_TIMEOUT, align 4
  store i32 %104, i32* %8, align 4
  br label %152

105:                                              ; preds = %92
  store i32 0, i32* %18, align 4
  br label %106

106:                                              ; preds = %125, %105
  %107 = load i32, i32* %18, align 4
  %108 = load i32, i32* %13, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %128

110:                                              ; preds = %106
  %111 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %112 = load %struct.elink_phy*, %struct.elink_phy** %9, align 8
  %113 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %114 = load i32, i32* @MDIO_PMA_REG_8727_TWO_WIRE_DATA_BUF, align 4
  %115 = load i32, i32* %18, align 4
  %116 = add nsw i32 %114, %115
  %117 = call i32 @elink_cl45_read(%struct.bxe_softc* %111, %struct.elink_phy* %112, i32 %113, i32 %116, i32* %17)
  %118 = load i32, i32* %17, align 4
  %119 = load i32, i32* @MDIO_PMA_REG_8727_TWO_WIRE_DATA_MASK, align 4
  %120 = and i32 %118, %119
  %121 = load i32*, i32** %14, align 8
  %122 = load i32, i32* %18, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds i32, i32* %121, i64 %123
  store i32 %120, i32* %124, align 4
  br label %125

125:                                              ; preds = %110
  %126 = load i32, i32* %18, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %18, align 4
  br label %106

128:                                              ; preds = %106
  store i32 0, i32* %18, align 4
  br label %129

129:                                              ; preds = %147, %128
  %130 = load i32, i32* %18, align 4
  %131 = icmp slt i32 %130, 100
  br i1 %131, label %132, label %150

132:                                              ; preds = %129
  %133 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  %134 = load %struct.elink_phy*, %struct.elink_phy** %9, align 8
  %135 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %136 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_CTRL, align 4
  %137 = call i32 @elink_cl45_read(%struct.bxe_softc* %133, %struct.elink_phy* %134, i32 %135, i32 %136, i32* %17)
  %138 = load i32, i32* %17, align 4
  %139 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_CTRL_STATUS_MASK, align 4
  %140 = and i32 %138, %139
  %141 = load i32, i32* @MDIO_PMA_REG_SFP_TWO_WIRE_STATUS_IDLE, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %132
  %144 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %144, i32* %8, align 4
  br label %152

145:                                              ; preds = %132
  %146 = call i32 @DELAY(i32 1000)
  br label %147

147:                                              ; preds = %145
  %148 = load i32, i32* %18, align 4
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %18, align 4
  br label %129

150:                                              ; preds = %129
  %151 = load i32, i32* @ELINK_STATUS_ERROR, align 4
  store i32 %151, i32* %8, align 4
  br label %152

152:                                              ; preds = %150, %143, %98, %25
  %153 = load i32, i32* %8, align 4
  ret i32 %153
}

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @elink_cl45_write(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32) #1

declare dso_local i32 @elink_cl45_read(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
