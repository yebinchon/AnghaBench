; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_smbat.c_acpi_smbat_get_bst.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_smbat.c_acpi_smbat_get_bst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_bst = type { i32 }
%struct.acpi_smbat_softc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@smbat = common dso_local global i32 0, align 4
@SMBATT_ADDRESS = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@SMBATT_CMD_BATTERY_MODE = common dso_local global i32 0, align 4
@SMBATT_BM_CAPACITY_MODE = common dso_local global i32 0, align 4
@SMBATT_CMD_BATTERY_STATUS = common dso_local global i32 0, align 4
@SMBATT_BS_DISCHARGING = common dso_local global i32 0, align 4
@ACPI_BATT_STAT_DISCHARG = common dso_local global i32 0, align 4
@SMBATT_BS_REMAINING_CAPACITY_ALARM = common dso_local global i32 0, align 4
@ACPI_BATT_STAT_CRITICAL = common dso_local global i32 0, align 4
@SMBATT_CMD_CURRENT = common dso_local global i32 0, align 4
@ACPI_BATT_STAT_CHARGING = common dso_local global i32 0, align 4
@SMBATT_CMD_REMAINING_CAPACITY = common dso_local global i32 0, align 4
@SMBATT_CMD_VOLTAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.acpi_bst*)* @acpi_smbat_get_bst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_smbat_get_bst(i32 %0, %struct.acpi_bst* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acpi_bst*, align 8
  %5 = alloca %struct.acpi_smbat_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.acpi_bst* %1, %struct.acpi_bst** %4, align 8
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
  br label %143

21:                                               ; preds = %2
  %22 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @SMBATT_CMD_BATTERY_MODE, align 4
  %25 = call i64 @acpi_smbus_read_2(%struct.acpi_smbat_softc* %22, i32 %23, i32 %24, i32* %8)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %143

28:                                               ; preds = %21
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @SMBATT_BM_CAPACITY_MODE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 10, i32* %7, align 4
  br label %35

34:                                               ; preds = %28
  store i32 1, i32* %7, align 4
  br label %35

35:                                               ; preds = %34, %33
  %36 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @SMBATT_CMD_BATTERY_STATUS, align 4
  %39 = call i64 @acpi_smbus_read_2(%struct.acpi_smbat_softc* %36, i32 %37, i32 %38, i32* %8)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %143

42:                                               ; preds = %35
  %43 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %44 = getelementptr inbounds %struct.acpi_smbat_softc, %struct.acpi_smbat_softc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @SMBATT_BS_DISCHARGING, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %42
  %51 = load i32, i32* @ACPI_BATT_STAT_DISCHARG, align 4
  %52 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %53 = getelementptr inbounds %struct.acpi_smbat_softc, %struct.acpi_smbat_softc* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = or i32 %55, %51
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %50, %42
  %58 = load i32, i32* %8, align 4
  %59 = load i32, i32* @SMBATT_BS_REMAINING_CAPACITY_ALARM, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %57
  %63 = load i32, i32* @ACPI_BATT_STAT_CRITICAL, align 4
  %64 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %65 = getelementptr inbounds %struct.acpi_smbat_softc, %struct.acpi_smbat_softc* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %63
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %62, %57
  %70 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %71 = load i32, i32* %9, align 4
  %72 = load i32, i32* @SMBATT_CMD_CURRENT, align 4
  %73 = call i64 @acpi_smbus_read_2(%struct.acpi_smbat_softc* %70, i32 %71, i32 %72, i32* %8)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %69
  br label %143

76:                                               ; preds = %69
  %77 = load i32, i32* %8, align 4
  %78 = icmp sgt i32 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %76
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %7, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %84 = getelementptr inbounds %struct.acpi_smbat_softc, %struct.acpi_smbat_softc* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  store i32 %82, i32* %85, align 4
  %86 = load i32, i32* @SMBATT_BS_DISCHARGING, align 4
  %87 = xor i32 %86, -1
  %88 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %89 = getelementptr inbounds %struct.acpi_smbat_softc, %struct.acpi_smbat_softc* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %87
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* @ACPI_BATT_STAT_CHARGING, align 4
  %94 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %95 = getelementptr inbounds %struct.acpi_smbat_softc, %struct.acpi_smbat_softc* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %93
  store i32 %98, i32* %96, align 4
  br label %115

99:                                               ; preds = %76
  %100 = load i32, i32* %8, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %99
  %103 = load i32, i32* %8, align 4
  %104 = sub nsw i32 0, %103
  %105 = load i32, i32* %7, align 4
  %106 = mul nsw i32 %104, %105
  %107 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %108 = getelementptr inbounds %struct.acpi_smbat_softc, %struct.acpi_smbat_softc* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 4
  br label %114

110:                                              ; preds = %99
  %111 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %112 = getelementptr inbounds %struct.acpi_smbat_softc, %struct.acpi_smbat_softc* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  store i32 0, i32* %113, align 4
  br label %114

114:                                              ; preds = %110, %102
  br label %115

115:                                              ; preds = %114, %79
  %116 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* @SMBATT_CMD_REMAINING_CAPACITY, align 4
  %119 = call i64 @acpi_smbus_read_2(%struct.acpi_smbat_softc* %116, i32 %117, i32 %118, i32* %8)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  br label %143

122:                                              ; preds = %115
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %7, align 4
  %125 = mul nsw i32 %123, %124
  %126 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %127 = getelementptr inbounds %struct.acpi_smbat_softc, %struct.acpi_smbat_softc* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  store i32 %125, i32* %128, align 4
  %129 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @SMBATT_CMD_VOLTAGE, align 4
  %132 = call i64 @acpi_smbus_read_2(%struct.acpi_smbat_softc* %129, i32 %130, i32 %131, i32* %8)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %122
  br label %143

135:                                              ; preds = %122
  %136 = load i32, i32* %8, align 4
  %137 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %138 = getelementptr inbounds %struct.acpi_smbat_softc, %struct.acpi_smbat_softc* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 3
  store i32 %136, i32* %139, align 4
  %140 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %141 = getelementptr inbounds %struct.acpi_smbat_softc, %struct.acpi_smbat_softc* %140, i32 0, i32 1
  %142 = call i32 @acpi_smbat_info_updated(i32* %141)
  store i32 0, i32* %6, align 4
  br label %143

143:                                              ; preds = %135, %134, %121, %75, %41, %27, %20
  %144 = load i32, i32* %6, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %143
  %147 = load %struct.acpi_bst*, %struct.acpi_bst** %4, align 8
  %148 = load %struct.acpi_smbat_softc*, %struct.acpi_smbat_softc** %5, align 8
  %149 = getelementptr inbounds %struct.acpi_smbat_softc, %struct.acpi_smbat_softc* %148, i32 0, i32 0
  %150 = call i32 @memcpy(%struct.acpi_bst* %147, %struct.TYPE_2__* %149, i32 16)
  br label %151

151:                                              ; preds = %146, %143
  %152 = load i32, i32* @smbat, align 4
  %153 = call i32 @ACPI_SERIAL_END(i32 %152)
  %154 = load i32, i32* %6, align 4
  ret i32 %154
}

declare dso_local i32 @ACPI_SERIAL_BEGIN(i32) #1

declare dso_local %struct.acpi_smbat_softc* @device_get_softc(i32) #1

declare dso_local i32 @acpi_smbat_info_expired(i32*) #1

declare dso_local i64 @acpi_smbus_read_2(%struct.acpi_smbat_softc*, i32, i32, i32*) #1

declare dso_local i32 @acpi_smbat_info_updated(i32*) #1

declare dso_local i32 @memcpy(%struct.acpi_bst*, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @ACPI_SERIAL_END(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
