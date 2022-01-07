; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hdmi/extr_dwc_hdmi.c_hdmi_edid_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hdmi/extr_dwc_hdmi.c_hdmi_edid_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_hdmi_softc = type { i32*, i64, i32, i32* (i32)* }
%struct.iic_msg = type { i32, i32, i32*, i32 }

@EDID_LENGTH = common dso_local global i32 0, align 4
@I2C_DDC_SEGADDR = common dso_local global i32 0, align 4
@IIC_M_WR = common dso_local global i32 0, align 4
@I2C_DDC_ADDR = common dso_local global i32 0, align 4
@IIC_M_RD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"no DDC device found\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"reading EDID from %s, block %d, addr %02x\0A\00", align 1
@IIC_INTRWAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"failed to request i2c bus: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"i2c transfer failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc_hdmi_softc*, i32, i32**, i64*)* @hdmi_edid_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_edid_read(%struct.dwc_hdmi_softc* %0, i32 %1, i32** %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dwc_hdmi_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [3 x %struct.iic_msg], align 16
  store %struct.dwc_hdmi_softc* %0, %struct.dwc_hdmi_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i64* %3, i64** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, 1
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @EDID_LENGTH, align 4
  br label %21

20:                                               ; preds = %4
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i32 [ %19, %18 ], [ 0, %20 ]
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %7, align 4
  %24 = ashr i32 %23, 1
  store i32 %24, i32* %13, align 4
  %25 = getelementptr inbounds [3 x %struct.iic_msg], [3 x %struct.iic_msg]* %14, i64 0, i64 0
  %26 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %25, i32 0, i32 0
  %27 = load i32, i32* @I2C_DDC_SEGADDR, align 4
  store i32 %27, i32* %26, align 8
  %28 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %25, i32 0, i32 1
  %29 = load i32, i32* @IIC_M_WR, align 4
  store i32 %29, i32* %28, align 4
  %30 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %25, i32 0, i32 2
  store i32* inttoptr (i64 1 to i32*), i32** %30, align 8
  %31 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %25, i32 0, i32 3
  %32 = ptrtoint i32* %13 to i32
  store i32 %32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %25, i64 1
  %34 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %33, i32 0, i32 0
  %35 = load i32, i32* @I2C_DDC_ADDR, align 4
  store i32 %35, i32* %34, align 8
  %36 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %33, i32 0, i32 1
  %37 = load i32, i32* @IIC_M_WR, align 4
  store i32 %37, i32* %36, align 4
  %38 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %33, i32 0, i32 2
  store i32* inttoptr (i64 1 to i32*), i32** %38, align 8
  %39 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %33, i32 0, i32 3
  %40 = ptrtoint i32* %12 to i32
  store i32 %40, i32* %39, align 8
  %41 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %33, i64 1
  %42 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %41, i32 0, i32 0
  %43 = load i32, i32* @I2C_DDC_ADDR, align 4
  store i32 %43, i32* %42, align 8
  %44 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %41, i32 0, i32 1
  %45 = load i32, i32* @IIC_M_RD, align 4
  store i32 %45, i32* %44, align 4
  %46 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %41, i32 0, i32 2
  %47 = load i32, i32* @EDID_LENGTH, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i32*
  store i32* %49, i32** %46, align 8
  %50 = getelementptr inbounds %struct.iic_msg, %struct.iic_msg* %41, i32 0, i32 3
  %51 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %6, align 8
  %52 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = ptrtoint i32* %53 to i32
  store i32 %54, i32* %50, align 8
  %55 = load i32**, i32*** %8, align 8
  store i32* null, i32** %55, align 8
  %56 = load i64*, i64** %9, align 8
  store i64 0, i64* %56, align 8
  store i32* null, i32** %10, align 8
  %57 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %6, align 8
  %58 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %57, i32 0, i32 3
  %59 = load i32* (i32)*, i32* (i32)** %58, align 8
  %60 = icmp ne i32* (i32)* %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %21
  %62 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %6, align 8
  %63 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %62, i32 0, i32 3
  %64 = load i32* (i32)*, i32* (i32)** %63, align 8
  %65 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %6, align 8
  %66 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32* %64(i32 %67)
  store i32* %68, i32** %10, align 8
  br label %69

69:                                               ; preds = %61, %21
  %70 = load i32*, i32** %10, align 8
  %71 = icmp ne i32* %70, null
  br i1 %71, label %78, label %72

72:                                               ; preds = %69
  %73 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %6, align 8
  %74 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i32, i8*, ...) @device_printf(i32 %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %77 = load i32, i32* @ENXIO, align 4
  store i32 %77, i32* %5, align 4
  br label %136

78:                                               ; preds = %69
  %79 = load i64, i64* @bootverbose, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %78
  %82 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %6, align 8
  %83 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = call i32 @device_get_nameunit(i32* %85)
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @I2C_DDC_ADDR, align 4
  %89 = sdiv i32 %88, 2
  %90 = call i32 (i32, i8*, ...) @device_printf(i32 %84, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %87, i32 %89)
  br label %91

91:                                               ; preds = %81, %78
  %92 = load i32*, i32** %10, align 8
  %93 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %6, align 8
  %94 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @IIC_INTRWAIT, align 4
  %97 = call i32 @iicbus_request_bus(i32* %92, i32 %95, i32 %96)
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %11, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %107

100:                                              ; preds = %91
  %101 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %6, align 8
  %102 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %11, align 4
  %105 = call i32 (i32, i8*, ...) @device_printf(i32 %103, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %104)
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %5, align 4
  br label %136

107:                                              ; preds = %91
  %108 = load i32*, i32** %10, align 8
  %109 = getelementptr inbounds [3 x %struct.iic_msg], [3 x %struct.iic_msg]* %14, i64 0, i64 0
  %110 = call i32 @iicbus_transfer(i32* %108, %struct.iic_msg* %109, i32 3)
  store i32 %110, i32* %11, align 4
  %111 = load i32*, i32** %10, align 8
  %112 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %6, align 8
  %113 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @iicbus_release_bus(i32* %111, i32 %114)
  %116 = load i32, i32* %11, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %125

118:                                              ; preds = %107
  %119 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %6, align 8
  %120 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call i32 (i32, i8*, ...) @device_printf(i32 %121, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0), i32 %122)
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %5, align 4
  br label %136

125:                                              ; preds = %107
  %126 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %6, align 8
  %127 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load i64*, i64** %9, align 8
  store i64 %128, i64* %129, align 8
  %130 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %6, align 8
  %131 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32**, i32*** %8, align 8
  store i32* %132, i32** %133, align 8
  br label %134

134:                                              ; preds = %125
  %135 = load i32, i32* %11, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %134, %118, %100, %72
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @device_get_nameunit(i32*) #1

declare dso_local i32 @iicbus_request_bus(i32*, i32, i32) #1

declare dso_local i32 @iicbus_transfer(i32*, %struct.iic_msg*, i32) #1

declare dso_local i32 @iicbus_release_bus(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
