; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_read_rom.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_rsu.c_rsu_read_rom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsu_softc = type { i32* }

@R92S_EE_9346CR = common dso_local global i64 0, align 8
@R92S_9356SEL = common dso_local global i32 0, align 4
@R92S_EEPROM_EN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@R92S_EFUSE_TEST = common dso_local global i64 0, align 8
@RSU_DEBUG_RESET = common dso_local global i32 0, align 4
@rsu_debug = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rsu_softc*)* @rsu_read_rom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rsu_read_rom(%struct.rsu_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rsu_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rsu_softc* %0, %struct.rsu_softc** %3, align 8
  %10 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %11 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %14 = load i64, i64* @R92S_EE_9346CR, align 8
  %15 = call i32 @rsu_read_1(%struct.rsu_softc* %13, i64 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @R92S_9356SEL, align 4
  %18 = load i32, i32* @R92S_EEPROM_EN, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = load i32, i32* @R92S_EEPROM_EN, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %1
  %24 = load i32, i32* @EIO, align 4
  store i32 %24, i32* %2, align 4
  br label %108

25:                                               ; preds = %1
  %26 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %27 = load i64, i64* @R92S_EFUSE_TEST, align 8
  %28 = add nsw i64 %27, 3
  %29 = call i32 @rsu_read_1(%struct.rsu_softc* %26, i64 %28)
  store i32 %29, i32* %6, align 4
  %30 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %31 = load i64, i64* @R92S_EFUSE_TEST, align 8
  %32 = add nsw i64 %31, 3
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, 128
  %35 = call i32 @rsu_write_1(%struct.rsu_softc* %30, i64 %32, i32 %34)
  %36 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %37 = call i32 @rsu_ms_delay(%struct.rsu_softc* %36, i32 1)
  %38 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %39 = load i64, i64* @R92S_EFUSE_TEST, align 8
  %40 = add nsw i64 %39, 3
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, -129
  %43 = call i32 @rsu_write_1(%struct.rsu_softc* %38, i64 %40, i32 %42)
  %44 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %45 = getelementptr inbounds %struct.rsu_softc, %struct.rsu_softc* %44, i32 0, i32 0
  %46 = call i32 @memset(i32** %45, i32 255, i32 8)
  br label %47

47:                                               ; preds = %106, %25
  %48 = load i32, i32* %5, align 4
  %49 = icmp slt i32 %48, 512
  br i1 %49, label %50, label %107

50:                                               ; preds = %47
  %51 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @rsu_efuse_read_1(%struct.rsu_softc* %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp eq i32 %54, 255
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %107

57:                                               ; preds = %50
  %58 = load i32, i32* %5, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %6, align 4
  %61 = ashr i32 %60, 4
  store i32 %61, i32* %7, align 4
  %62 = load i32, i32* %6, align 4
  %63 = and i32 %62, 15
  store i32 %63, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %64

64:                                               ; preds = %103, %57
  %65 = load i32, i32* %9, align 4
  %66 = icmp slt i32 %65, 4
  br i1 %66, label %67, label %106

67:                                               ; preds = %64
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %9, align 4
  %70 = shl i32 1, %69
  %71 = and i32 %68, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %67
  br label %103

74:                                               ; preds = %67
  %75 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @rsu_efuse_read_1(%struct.rsu_softc* %75, i32 %76)
  %78 = load i32*, i32** %4, align 8
  %79 = load i32, i32* %7, align 4
  %80 = mul nsw i32 %79, 8
  %81 = load i32, i32* %9, align 4
  %82 = mul nsw i32 %81, 2
  %83 = add nsw i32 %80, %82
  %84 = add nsw i32 %83, 0
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %78, i64 %85
  store i32 %77, i32* %86, align 4
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %5, align 4
  %89 = load %struct.rsu_softc*, %struct.rsu_softc** %3, align 8
  %90 = load i32, i32* %5, align 4
  %91 = call i32 @rsu_efuse_read_1(%struct.rsu_softc* %89, i32 %90)
  %92 = load i32*, i32** %4, align 8
  %93 = load i32, i32* %7, align 4
  %94 = mul nsw i32 %93, 8
  %95 = load i32, i32* %9, align 4
  %96 = mul nsw i32 %95, 2
  %97 = add nsw i32 %94, %96
  %98 = add nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %92, i64 %99
  store i32 %91, i32* %100, align 4
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %103

103:                                              ; preds = %74, %73
  %104 = load i32, i32* %9, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %9, align 4
  br label %64

106:                                              ; preds = %64
  br label %47

107:                                              ; preds = %56, %47
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %107, %23
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @rsu_read_1(%struct.rsu_softc*, i64) #1

declare dso_local i32 @rsu_write_1(%struct.rsu_softc*, i64, i32) #1

declare dso_local i32 @rsu_ms_delay(%struct.rsu_softc*, i32) #1

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i32 @rsu_efuse_read_1(%struct.rsu_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
