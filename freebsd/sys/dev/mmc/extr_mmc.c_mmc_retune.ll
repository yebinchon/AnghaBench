; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_retune.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_retune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_softc = type { i32, i64 }
%struct.mmc_ivars = type { i32 }

@MMC_ERR_INVALID = common dso_local global i32 0, align 4
@bus_timing_mmc_hs400 = common dso_local global i32 0, align 4
@MMC_ERR_NONE = common dso_local global i64 0, align 8
@MMC_ERR_BADCRC = common dso_local global i32 0, align 4
@MMC_ERR_FAILED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32)* @mmc_retune to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_retune(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mmc_softc*, align 8
  %9 = alloca %struct.mmc_ivars*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @device_get_parent(i64 %13)
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @MMC_ERR_INVALID, align 4
  store i32 %18, i32* %4, align 4
  br label %94

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = call %struct.mmc_softc* @device_get_softc(i64 %20)
  store %struct.mmc_softc* %21, %struct.mmc_softc** %8, align 8
  %22 = load %struct.mmc_softc*, %struct.mmc_softc** %8, align 8
  %23 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 1
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load %struct.mmc_softc*, %struct.mmc_softc** %8, align 8
  %28 = getelementptr inbounds %struct.mmc_softc, %struct.mmc_softc* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @MMC_ERR_INVALID, align 4
  store i32 %32, i32* %4, align 4
  br label %94

33:                                               ; preds = %26, %19
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @mmcbr_get_timing(i64 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @bus_timing_mmc_hs400, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %94

43:                                               ; preds = %39
  %44 = load i64, i64* %6, align 8
  %45 = call %struct.mmc_ivars* @device_get_ivars(i64 %44)
  store %struct.mmc_ivars* %45, %struct.mmc_ivars** %9, align 8
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @mmcbr_get_clock(i64 %46)
  store i32 %47, i32* %11, align 4
  %48 = load %struct.mmc_softc*, %struct.mmc_softc** %8, align 8
  %49 = load %struct.mmc_ivars*, %struct.mmc_ivars** %9, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i64 @mmc_switch_to_hs200(%struct.mmc_softc* %48, %struct.mmc_ivars* %49, i32 %50)
  %52 = load i64, i64* @MMC_ERR_NONE, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %43
  %55 = load i32, i32* @MMC_ERR_BADCRC, align 4
  store i32 %55, i32* %4, align 4
  br label %94

56:                                               ; preds = %43
  br label %57

57:                                               ; preds = %56, %33
  %58 = load i64, i64* %5, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @mmcbr_retune(i64 %58, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load i32, i32* %12, align 4
  %65 = load i32, i32* @bus_timing_mmc_hs400, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %63
  %68 = load i32, i32* @MMC_ERR_BADCRC, align 4
  store i32 %68, i32* %4, align 4
  br label %94

69:                                               ; preds = %63, %57
  %70 = load i32, i32* %10, align 4
  switch i32 %70, label %74 [
    i32 0, label %71
    i32 128, label %72
  ]

71:                                               ; preds = %69
  br label %76

72:                                               ; preds = %69
  %73 = load i32, i32* @MMC_ERR_FAILED, align 4
  store i32 %73, i32* %4, align 4
  br label %94

74:                                               ; preds = %69
  %75 = load i32, i32* @MMC_ERR_INVALID, align 4
  store i32 %75, i32* %4, align 4
  br label %94

76:                                               ; preds = %71
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @bus_timing_mmc_hs400, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %91

80:                                               ; preds = %76
  %81 = load %struct.mmc_softc*, %struct.mmc_softc** %8, align 8
  %82 = load %struct.mmc_ivars*, %struct.mmc_ivars** %9, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %12, align 4
  %85 = call i64 @mmc_switch_to_hs400(%struct.mmc_softc* %81, %struct.mmc_ivars* %82, i32 %83, i32 %84)
  %86 = load i64, i64* @MMC_ERR_NONE, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %80
  %89 = load i32, i32* @MMC_ERR_BADCRC, align 4
  store i32 %89, i32* %4, align 4
  br label %94

90:                                               ; preds = %80
  br label %91

91:                                               ; preds = %90, %76
  %92 = load i64, i64* @MMC_ERR_NONE, align 8
  %93 = trunc i64 %92 to i32
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %91, %88, %74, %72, %67, %54, %42, %31, %17
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.mmc_softc* @device_get_softc(i64) #1

declare dso_local i32 @mmcbr_get_timing(i64) #1

declare dso_local %struct.mmc_ivars* @device_get_ivars(i64) #1

declare dso_local i32 @mmcbr_get_clock(i64) #1

declare dso_local i64 @mmc_switch_to_hs200(%struct.mmc_softc*, %struct.mmc_ivars*, i32) #1

declare dso_local i32 @mmcbr_retune(i64, i32) #1

declare dso_local i64 @mmc_switch_to_hs400(%struct.mmc_softc*, %struct.mmc_ivars*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
