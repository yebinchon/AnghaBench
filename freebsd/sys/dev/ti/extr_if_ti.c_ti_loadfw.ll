; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_loadfw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_loadfw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_softc = type { i32, i32 }

@tigonFwReleaseMajor = common dso_local global i32 0, align 4
@TI_FIRMWARE_MAJOR = common dso_local global i32 0, align 4
@tigonFwReleaseMinor = common dso_local global i32 0, align 4
@TI_FIRMWARE_MINOR = common dso_local global i32 0, align 4
@tigonFwReleaseFix = common dso_local global i32 0, align 4
@TI_FIRMWARE_FIX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"firmware revision mismatch; want %d.%d.%d, got %d.%d.%d\0A\00", align 1
@tigonFwTextAddr = common dso_local global i32 0, align 4
@tigonFwTextLen = common dso_local global i32 0, align 4
@tigonFwText = common dso_local global i32 0, align 4
@tigonFwDataAddr = common dso_local global i32 0, align 4
@tigonFwDataLen = common dso_local global i32 0, align 4
@tigonFwData = common dso_local global i32 0, align 4
@tigonFwRodataAddr = common dso_local global i32 0, align 4
@tigonFwRodataLen = common dso_local global i32 0, align 4
@tigonFwRodata = common dso_local global i32 0, align 4
@tigonFwBssAddr = common dso_local global i32 0, align 4
@tigonFwBssLen = common dso_local global i32 0, align 4
@tigonFwSbssAddr = common dso_local global i32 0, align 4
@tigonFwSbssLen = common dso_local global i32 0, align 4
@TI_CPU_PROGRAM_COUNTER = common dso_local global i32 0, align 4
@tigonFwStartAddr = common dso_local global i32 0, align 4
@tigon2FwReleaseMajor = common dso_local global i32 0, align 4
@tigon2FwReleaseMinor = common dso_local global i32 0, align 4
@tigon2FwReleaseFix = common dso_local global i32 0, align 4
@tigon2FwTextAddr = common dso_local global i32 0, align 4
@tigon2FwTextLen = common dso_local global i32 0, align 4
@tigon2FwText = common dso_local global i32 0, align 4
@tigon2FwDataAddr = common dso_local global i32 0, align 4
@tigon2FwDataLen = common dso_local global i32 0, align 4
@tigon2FwData = common dso_local global i32 0, align 4
@tigon2FwRodataAddr = common dso_local global i32 0, align 4
@tigon2FwRodataLen = common dso_local global i32 0, align 4
@tigon2FwRodata = common dso_local global i32 0, align 4
@tigon2FwBssAddr = common dso_local global i32 0, align 4
@tigon2FwBssLen = common dso_local global i32 0, align 4
@tigon2FwSbssAddr = common dso_local global i32 0, align 4
@tigon2FwSbssLen = common dso_local global i32 0, align 4
@tigon2FwStartAddr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"can't load firmware: unknown hardware rev\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_softc*)* @ti_loadfw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_loadfw(%struct.ti_softc* %0) #0 {
  %2 = alloca %struct.ti_softc*, align 8
  store %struct.ti_softc* %0, %struct.ti_softc** %2, align 8
  %3 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %4 = call i32 @TI_LOCK_ASSERT(%struct.ti_softc* %3)
  %5 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %6 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %110 [
    i32 129, label %8
    i32 128, label %59
  ]

8:                                                ; preds = %1
  %9 = load i32, i32* @tigonFwReleaseMajor, align 4
  %10 = load i32, i32* @TI_FIRMWARE_MAJOR, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %20, label %12

12:                                               ; preds = %8
  %13 = load i32, i32* @tigonFwReleaseMinor, align 4
  %14 = load i32, i32* @TI_FIRMWARE_MINOR, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i32, i32* @tigonFwReleaseFix, align 4
  %18 = load i32, i32* @TI_FIRMWARE_FIX, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %31

20:                                               ; preds = %16, %12, %8
  %21 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %22 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @TI_FIRMWARE_MAJOR, align 4
  %25 = load i32, i32* @TI_FIRMWARE_MINOR, align 4
  %26 = load i32, i32* @TI_FIRMWARE_FIX, align 4
  %27 = load i32, i32* @tigonFwReleaseMajor, align 4
  %28 = load i32, i32* @tigonFwReleaseMinor, align 4
  %29 = load i32, i32* @tigonFwReleaseFix, align 4
  %30 = call i32 (i32, i8*, ...) @device_printf(i32 %23, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %24, i32 %25, i32 %26, i32 %27, i32 %28, i32 %29)
  br label %115

31:                                               ; preds = %16
  %32 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %33 = load i32, i32* @tigonFwTextAddr, align 4
  %34 = load i32, i32* @tigonFwTextLen, align 4
  %35 = load i32, i32* @tigonFwText, align 4
  %36 = call i32 @ti_mem_write(%struct.ti_softc* %32, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %38 = load i32, i32* @tigonFwDataAddr, align 4
  %39 = load i32, i32* @tigonFwDataLen, align 4
  %40 = load i32, i32* @tigonFwData, align 4
  %41 = call i32 @ti_mem_write(%struct.ti_softc* %37, i32 %38, i32 %39, i32 %40)
  %42 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %43 = load i32, i32* @tigonFwRodataAddr, align 4
  %44 = load i32, i32* @tigonFwRodataLen, align 4
  %45 = load i32, i32* @tigonFwRodata, align 4
  %46 = call i32 @ti_mem_write(%struct.ti_softc* %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %48 = load i32, i32* @tigonFwBssAddr, align 4
  %49 = load i32, i32* @tigonFwBssLen, align 4
  %50 = call i32 @ti_mem_zero(%struct.ti_softc* %47, i32 %48, i32 %49)
  %51 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %52 = load i32, i32* @tigonFwSbssAddr, align 4
  %53 = load i32, i32* @tigonFwSbssLen, align 4
  %54 = call i32 @ti_mem_zero(%struct.ti_softc* %51, i32 %52, i32 %53)
  %55 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %56 = load i32, i32* @TI_CPU_PROGRAM_COUNTER, align 4
  %57 = load i32, i32* @tigonFwStartAddr, align 4
  %58 = call i32 @CSR_WRITE_4(%struct.ti_softc* %55, i32 %56, i32 %57)
  br label %115

59:                                               ; preds = %1
  %60 = load i32, i32* @tigon2FwReleaseMajor, align 4
  %61 = load i32, i32* @TI_FIRMWARE_MAJOR, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %71, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @tigon2FwReleaseMinor, align 4
  %65 = load i32, i32* @TI_FIRMWARE_MINOR, align 4
  %66 = icmp ne i32 %64, %65
  br i1 %66, label %71, label %67

67:                                               ; preds = %63
  %68 = load i32, i32* @tigon2FwReleaseFix, align 4
  %69 = load i32, i32* @TI_FIRMWARE_FIX, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %82

71:                                               ; preds = %67, %63, %59
  %72 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %73 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @TI_FIRMWARE_MAJOR, align 4
  %76 = load i32, i32* @TI_FIRMWARE_MINOR, align 4
  %77 = load i32, i32* @TI_FIRMWARE_FIX, align 4
  %78 = load i32, i32* @tigon2FwReleaseMajor, align 4
  %79 = load i32, i32* @tigon2FwReleaseMinor, align 4
  %80 = load i32, i32* @tigon2FwReleaseFix, align 4
  %81 = call i32 (i32, i8*, ...) @device_printf(i32 %74, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %75, i32 %76, i32 %77, i32 %78, i32 %79, i32 %80)
  br label %115

82:                                               ; preds = %67
  %83 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %84 = load i32, i32* @tigon2FwTextAddr, align 4
  %85 = load i32, i32* @tigon2FwTextLen, align 4
  %86 = load i32, i32* @tigon2FwText, align 4
  %87 = call i32 @ti_mem_write(%struct.ti_softc* %83, i32 %84, i32 %85, i32 %86)
  %88 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %89 = load i32, i32* @tigon2FwDataAddr, align 4
  %90 = load i32, i32* @tigon2FwDataLen, align 4
  %91 = load i32, i32* @tigon2FwData, align 4
  %92 = call i32 @ti_mem_write(%struct.ti_softc* %88, i32 %89, i32 %90, i32 %91)
  %93 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %94 = load i32, i32* @tigon2FwRodataAddr, align 4
  %95 = load i32, i32* @tigon2FwRodataLen, align 4
  %96 = load i32, i32* @tigon2FwRodata, align 4
  %97 = call i32 @ti_mem_write(%struct.ti_softc* %93, i32 %94, i32 %95, i32 %96)
  %98 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %99 = load i32, i32* @tigon2FwBssAddr, align 4
  %100 = load i32, i32* @tigon2FwBssLen, align 4
  %101 = call i32 @ti_mem_zero(%struct.ti_softc* %98, i32 %99, i32 %100)
  %102 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %103 = load i32, i32* @tigon2FwSbssAddr, align 4
  %104 = load i32, i32* @tigon2FwSbssLen, align 4
  %105 = call i32 @ti_mem_zero(%struct.ti_softc* %102, i32 %103, i32 %104)
  %106 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %107 = load i32, i32* @TI_CPU_PROGRAM_COUNTER, align 4
  %108 = load i32, i32* @tigon2FwStartAddr, align 4
  %109 = call i32 @CSR_WRITE_4(%struct.ti_softc* %106, i32 %107, i32 %108)
  br label %115

110:                                              ; preds = %1
  %111 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %112 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 (i32, i8*, ...) @device_printf(i32 %113, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  br label %115

115:                                              ; preds = %20, %71, %110, %82, %31
  ret void
}

declare dso_local i32 @TI_LOCK_ASSERT(%struct.ti_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ti_mem_write(%struct.ti_softc*, i32, i32, i32) #1

declare dso_local i32 @ti_mem_zero(%struct.ti_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.ti_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
