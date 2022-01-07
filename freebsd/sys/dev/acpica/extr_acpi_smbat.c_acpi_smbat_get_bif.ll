; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_smbat.c_acpi_smbat_get_bif.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_smbat.c_acpi_smbat_get_bif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_bif = type { i32 }
%struct.acpi_smbat_softc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@smbat = common dso_local global i32 0, align 4
@SMBATT_ADDRESS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SMBATT_CMD_BATTERY_MODE = common dso_local global i32 0, align 4
@SMBATT_BM_CAPACITY_MODE = common dso_local global i32 0, align 4
@ACPI_BIF_UNITS_MW = common dso_local global i32 0, align 4
@ACPI_BIF_UNITS_MA = common dso_local global i32 0, align 4
@SMBATT_CMD_DESIGN_CAPACITY = common dso_local global i32 0, align 4
@SMBATT_CMD_FULL_CHARGE_CAPACITY = common dso_local global i32 0, align 4
@SMBATT_CMD_DESIGN_VOLTAGE = common dso_local global i32 0, align 4
@SMBATT_CMD_DEVICE_NAME = common dso_local global i32 0, align 4
@SMBATT_CMD_SERIAL_NUMBER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"0x%04x\00", align 1
@SMBATT_CMD_DEVICE_CHEMISTRY = common dso_local global i32 0, align 4
@SMBATT_CMD_MANUFACTURER_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.acpi_bif*)* @acpi_smbat_get_bif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_smbat_get_bif(i32 %0, %struct.acpi_bif* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_bif*, align 8
  %5 = alloca %struct.acpi_smbat_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.acpi_bif* %1, %struct.acpi_bif** %4, align 8
  %10 = load i32, i32* @smbat, align 4
  %11 = call i32 @ACPI_SERIAL_BEGIN(i32 %10)
  %12 = load i32, i32* @SMBATT_ADDRESS, align 4
  store i32 %12, i32* %9, align 4
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call %struct.acpi_smbat_softc* @device_get_softc(i32 %14)
  store %struct.acpi_smbat_softc* %15, %struct.acpi_smbat_softc** %5, align 8
  %16 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %17 = getelementptr inbounds %struct.acpi_smbat_softc, %struct.acpi_smbat_softc* %16, i32 0, i32 1
  %18 = call i32 @acpi_smbat_info_expired(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %157

21:                                               ; preds = %2
  %22 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @SMBATT_CMD_BATTERY_MODE, align 4
  %25 = call i64 @acpi_smbus_read_2(%struct.acpi_smbat_softc* %22, i32 %23, i32 %24, i32* %8)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %157

28:                                               ; preds = %21
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @SMBATT_BM_CAPACITY_MODE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  store i32 10, i32* %7, align 4
  %34 = load i32, i32* @ACPI_BIF_UNITS_MW, align 4
  %35 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %36 = getelementptr inbounds %struct.acpi_smbat_softc, %struct.acpi_smbat_softc* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 12
  store i32 %34, i32* %37, align 4
  br label %43

38:                                               ; preds = %28
  store i32 1, i32* %7, align 4
  %39 = load i32, i32* @ACPI_BIF_UNITS_MA, align 4
  %40 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %41 = getelementptr inbounds %struct.acpi_smbat_softc, %struct.acpi_smbat_softc* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 12
  store i32 %39, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @SMBATT_CMD_DESIGN_CAPACITY, align 4
  %47 = call i64 @acpi_smbus_read_2(%struct.acpi_smbat_softc* %44, i32 %45, i32 %46, i32* %8)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %157

50:                                               ; preds = %43
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = mul nsw i32 %51, %52
  %54 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %55 = getelementptr inbounds %struct.acpi_smbat_softc, %struct.acpi_smbat_softc* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  %57 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @SMBATT_CMD_FULL_CHARGE_CAPACITY, align 4
  %60 = call i64 @acpi_smbus_read_2(%struct.acpi_smbat_softc* %57, i32 %58, i32 %59, i32* %8)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  br label %157

63:                                               ; preds = %50
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %7, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %68 = getelementptr inbounds %struct.acpi_smbat_softc, %struct.acpi_smbat_softc* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 4
  %70 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %71 = getelementptr inbounds %struct.acpi_smbat_softc, %struct.acpi_smbat_softc* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  store i32 1, i32* %72, align 4
  %73 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @SMBATT_CMD_DESIGN_VOLTAGE, align 4
  %76 = call i64 @acpi_smbus_read_2(%struct.acpi_smbat_softc* %73, i32 %74, i32 %75, i32* %8)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %63
  br label %157

79:                                               ; preds = %63
  %80 = load i32, i32* %8, align 4
  %81 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %82 = getelementptr inbounds %struct.acpi_smbat_softc, %struct.acpi_smbat_softc* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  store i32 %80, i32* %83, align 4
  %84 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %85 = getelementptr inbounds %struct.acpi_smbat_softc, %struct.acpi_smbat_softc* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = sdiv i32 %87, 10
  %89 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %90 = getelementptr inbounds %struct.acpi_smbat_softc, %struct.acpi_smbat_softc* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 4
  store i32 %88, i32* %91, align 4
  %92 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %93 = getelementptr inbounds %struct.acpi_smbat_softc, %struct.acpi_smbat_softc* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = sdiv i32 %95, 10
  %97 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %98 = getelementptr inbounds %struct.acpi_smbat_softc, %struct.acpi_smbat_softc* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 5
  store i32 %96, i32* %99, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %102 = getelementptr inbounds %struct.acpi_smbat_softc, %struct.acpi_smbat_softc* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 6
  store i32 %100, i32* %103, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %106 = getelementptr inbounds %struct.acpi_smbat_softc, %struct.acpi_smbat_softc* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 7
  store i32 %104, i32* %107, align 4
  %108 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %109 = load i32, i32* %9, align 4
  %110 = load i32, i32* @SMBATT_CMD_DEVICE_NAME, align 4
  %111 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %112 = getelementptr inbounds %struct.acpi_smbat_softc, %struct.acpi_smbat_softc* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 11
  %114 = load i32, i32* %113, align 4
  %115 = call i64 @acpi_smbus_read_multi_1(%struct.acpi_smbat_softc* %108, i32 %109, i32 %110, i32 %114, i32 4)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %79
  br label %157

118:                                              ; preds = %79
  %119 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %120 = load i32, i32* %9, align 4
  %121 = load i32, i32* @SMBATT_CMD_SERIAL_NUMBER, align 4
  %122 = call i64 @acpi_smbus_read_2(%struct.acpi_smbat_softc* %119, i32 %120, i32 %121, i32* %8)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %157

125:                                              ; preds = %118
  %126 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %127 = getelementptr inbounds %struct.acpi_smbat_softc, %struct.acpi_smbat_softc* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 10
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %8, align 4
  %131 = call i32 @snprintf(i32 %129, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %130)
  %132 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @SMBATT_CMD_DEVICE_CHEMISTRY, align 4
  %135 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %136 = getelementptr inbounds %struct.acpi_smbat_softc, %struct.acpi_smbat_softc* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 9
  %138 = load i32, i32* %137, align 4
  %139 = call i64 @acpi_smbus_read_multi_1(%struct.acpi_smbat_softc* %132, i32 %133, i32 %134, i32 %138, i32 4)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %125
  br label %157

142:                                              ; preds = %125
  %143 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* @SMBATT_CMD_MANUFACTURER_DATA, align 4
  %146 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %147 = getelementptr inbounds %struct.acpi_smbat_softc, %struct.acpi_smbat_softc* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 8
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @acpi_smbus_read_multi_1(%struct.acpi_smbat_softc* %143, i32 %144, i32 %145, i32 %149, i32 4)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %142
  br label %157

153:                                              ; preds = %142
  %154 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %155 = getelementptr inbounds %struct.acpi_smbat_softc, %struct.acpi_smbat_softc* %154, i32 0, i32 1
  %156 = call i32 @acpi_smbat_info_updated(i32* %155)
  store i32 0, i32* %6, align 4
  br label %157

157:                                              ; preds = %153, %152, %141, %124, %117, %78, %62, %49, %27, %20
  %158 = load i32, i32* %6, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %165

160:                                              ; preds = %157
  %161 = load %struct.acpi_bif*, %struct.acpi_bif** %4, align 8
  %162 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %163 = getelementptr inbounds %struct.acpi_smbat_softc, %struct.acpi_smbat_softc* %162, i32 0, i32 0
  %164 = call i32 @memcpy(%struct.acpi_bif* %161, %struct.TYPE_2__* %163, i32 52)
  br label %165

165:                                              ; preds = %160, %157
  %166 = load i32, i32* @smbat, align 4
  %167 = call i32 @ACPI_SERIAL_END(i32 %166)
  %168 = load i32, i32* %6, align 4
  ret i32 %168
}

declare dso_local i32 @ACPI_SERIAL_BEGIN(i32) #1

declare dso_local %struct.acpi_smbat_softc* @device_get_softc(i32) #1

declare dso_local i32 @acpi_smbat_info_expired(i32*) #1

declare dso_local i64 @acpi_smbus_read_2(%struct.acpi_smbat_softc*, i32, i32, i32*) #1

declare dso_local i64 @acpi_smbus_read_multi_1(%struct.acpi_smbat_softc*, i32, i32, i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

declare dso_local i32 @acpi_smbat_info_updated(i32*) #1

declare dso_local i32 @memcpy(%struct.acpi_bif*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @ACPI_SERIAL_END(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
