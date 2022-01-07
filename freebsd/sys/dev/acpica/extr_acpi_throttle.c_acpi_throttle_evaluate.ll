; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_throttle.c_acpi_throttle_evaluate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_throttle.c_acpi_throttle_evaluate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i64 }
%struct.acpi_throttle_softc = type { i32, i32, i32, i32*, i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@AcpiGbl_FADT = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@cpu_duty_offset = common dso_local global i32 0, align 4
@cpu_duty_width = common dso_local global i64 0, align 8
@thr_quirks = common dso_local global i32 0, align 4
@CPU_QUIRK_NO_THROTTLE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"CLK_VAL field overflows P_CNT register\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"CLK_VAL field overlaps THT_EN bit\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"_PTC\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"_PTC buffer too small\0A\00", align 1
@thr_rid = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"P_CNT from _PTC %#jx\0A\00", align 1
@ACPI_ADR_SPACE_SYSTEM_IO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [22 x i8] c"P_CNT from P_BLK %#x\0A\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"failed to attach P_CNT\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_throttle_softc*)* @acpi_throttle_evaluate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_throttle_evaluate(%struct.acpi_throttle_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.acpi_throttle_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_12__, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca %struct.TYPE_11__, align 4
  %8 = alloca i32, align 4
  store %struct.acpi_throttle_softc* %0, %struct.acpi_throttle_softc** %3, align 8
  %9 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %3, align 8
  %10 = getelementptr inbounds %struct.acpi_throttle_softc, %struct.acpi_throttle_softc* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @device_get_unit(i32 %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @AcpiGbl_FADT, i32 0, i32 0), align 8
  store i32 %15, i32* @cpu_duty_offset, align 4
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @AcpiGbl_FADT, i32 0, i32 1), align 8
  store i64 %16, i64* @cpu_duty_width, align 8
  br label %17

17:                                               ; preds = %14, %1
  %18 = load i64, i64* @cpu_duty_width, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load i32, i32* @thr_quirks, align 4
  %22 = load i32, i32* @CPU_QUIRK_NO_THROTTLE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20, %17
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %2, align 4
  br label %159

27:                                               ; preds = %20
  %28 = load i32, i32* @cpu_duty_offset, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* @cpu_duty_width, align 8
  %31 = add nsw i64 %29, %30
  %32 = sub nsw i64 %31, 1
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp sgt i32 %34, 31
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %3, align 8
  %38 = getelementptr inbounds %struct.acpi_throttle_softc, %struct.acpi_throttle_softc* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, ...) @device_printf(i32 %39, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %2, align 4
  br label %159

42:                                               ; preds = %27
  %43 = load i32, i32* @cpu_duty_offset, align 4
  %44 = icmp sle i32 %43, 4
  br i1 %44, label %45, label %54

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = icmp sge i32 %46, 4
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %3, align 8
  %50 = getelementptr inbounds %struct.acpi_throttle_softc, %struct.acpi_throttle_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i8*, ...) @device_printf(i32 %51, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @ENXIO, align 4
  store i32 %53, i32* %2, align 4
  br label %159

54:                                               ; preds = %45, %42
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  store %struct.TYPE_10__* %6, %struct.TYPE_10__** %55, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 0
  store i32 16, i32* %56, align 8
  %57 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %3, align 8
  %58 = getelementptr inbounds %struct.acpi_throttle_softc, %struct.acpi_throttle_softc* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @AcpiEvaluateObject(i32 %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* null, %struct.TYPE_12__* %5)
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i64 @ACPI_SUCCESS(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %105

64:                                               ; preds = %54
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = sext i32 %67 to i64
  %69 = icmp ult i64 %68, 15
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %3, align 8
  %72 = getelementptr inbounds %struct.acpi_throttle_softc, %struct.acpi_throttle_softc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 (i32, i8*, ...) @device_printf(i32 %73, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %75 = load i32, i32* @ENXIO, align 4
  store i32 %75, i32* %2, align 4
  br label %159

76:                                               ; preds = %64
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %79, 3
  %81 = call i32 @memcpy(%struct.TYPE_11__* %7, i64 %80, i32 12)
  %82 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %3, align 8
  %83 = getelementptr inbounds %struct.acpi_throttle_softc, %struct.acpi_throttle_softc* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %3, align 8
  %86 = getelementptr inbounds %struct.acpi_throttle_softc, %struct.acpi_throttle_softc* %85, i32 0, i32 4
  %87 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %3, align 8
  %88 = getelementptr inbounds %struct.acpi_throttle_softc, %struct.acpi_throttle_softc* %87, i32 0, i32 3
  %89 = call i32 @acpi_bus_alloc_gas(i32 %84, i32* %86, i32* @thr_rid, %struct.TYPE_11__* %7, i32** %88, i32 0)
  %90 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %3, align 8
  %91 = getelementptr inbounds %struct.acpi_throttle_softc, %struct.acpi_throttle_softc* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %104

94:                                               ; preds = %76
  %95 = load i64, i64* @bootverbose, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %3, align 8
  %99 = getelementptr inbounds %struct.acpi_throttle_softc, %struct.acpi_throttle_softc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i32, i8*, ...) @device_printf(i32 %100, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %102)
  br label %104

104:                                              ; preds = %97, %94, %76
  br label %105

105:                                              ; preds = %104, %54
  %106 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %3, align 8
  %107 = getelementptr inbounds %struct.acpi_throttle_softc, %struct.acpi_throttle_softc* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %110, label %156

110:                                              ; preds = %105
  %111 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %3, align 8
  %112 = getelementptr inbounds %struct.acpi_throttle_softc, %struct.acpi_throttle_softc* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp slt i32 %113, 4
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = load i32, i32* @ENXIO, align 4
  store i32 %116, i32* %2, align 4
  br label %159

117:                                              ; preds = %110
  %118 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %3, align 8
  %119 = getelementptr inbounds %struct.acpi_throttle_softc, %struct.acpi_throttle_softc* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  store i32 %120, i32* %121, align 4
  %122 = load i32, i32* @ACPI_ADR_SPACE_SYSTEM_IO, align 4
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  store i32 %122, i32* %123, align 4
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  store i32 32, i32* %124, align 4
  %125 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %3, align 8
  %126 = getelementptr inbounds %struct.acpi_throttle_softc, %struct.acpi_throttle_softc* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %3, align 8
  %129 = getelementptr inbounds %struct.acpi_throttle_softc, %struct.acpi_throttle_softc* %128, i32 0, i32 4
  %130 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %3, align 8
  %131 = getelementptr inbounds %struct.acpi_throttle_softc, %struct.acpi_throttle_softc* %130, i32 0, i32 3
  %132 = call i32 @acpi_bus_alloc_gas(i32 %127, i32* %129, i32* @thr_rid, %struct.TYPE_11__* %7, i32** %131, i32 0)
  %133 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %3, align 8
  %134 = getelementptr inbounds %struct.acpi_throttle_softc, %struct.acpi_throttle_softc* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %149

137:                                              ; preds = %117
  %138 = load i64, i64* @bootverbose, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %137
  %141 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %3, align 8
  %142 = getelementptr inbounds %struct.acpi_throttle_softc, %struct.acpi_throttle_softc* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %3, align 8
  %145 = getelementptr inbounds %struct.acpi_throttle_softc, %struct.acpi_throttle_softc* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 (i32, i8*, ...) @device_printf(i32 %143, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %146)
  br label %148

148:                                              ; preds = %140, %137
  br label %155

149:                                              ; preds = %117
  %150 = load %struct.acpi_throttle_softc*, %struct.acpi_throttle_softc** %3, align 8
  %151 = getelementptr inbounds %struct.acpi_throttle_softc, %struct.acpi_throttle_softc* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = call i32 (i32, i8*, ...) @device_printf(i32 %152, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0))
  %154 = load i32, i32* @ENXIO, align 4
  store i32 %154, i32* %2, align 4
  br label %159

155:                                              ; preds = %148
  br label %156

156:                                              ; preds = %155, %105
  %157 = load i32, i32* @thr_rid, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* @thr_rid, align 4
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %156, %149, %115, %70, %48, %36, %25
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local i64 @device_get_unit(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @AcpiEvaluateObject(i32, i8*, i32*, %struct.TYPE_12__*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_11__*, i64, i32) #1

declare dso_local i32 @acpi_bus_alloc_gas(i32, i32*, i32*, %struct.TYPE_11__*, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
