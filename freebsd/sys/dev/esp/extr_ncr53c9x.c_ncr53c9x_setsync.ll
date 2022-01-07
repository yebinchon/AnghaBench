; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_ncr53c9x.c_ncr53c9x_setsync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_ncr53c9x.c_ncr53c9x_setsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncr53c9x_softc = type { i32, i32, i32, i64 }
%struct.ncr53c9x_tinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i64 }

@MA_OWNED = common dso_local global i32 0, align 4
@NCR_F_FASTSCSI = common dso_local global i32 0, align 4
@NCR_VARIANT_AM53C974 = common dso_local global i64 0, align 8
@NCRAMDCFG3_FSCSI = common dso_local global i32 0, align 4
@MSG_EXT_WDTR_BUS_8_BIT = common dso_local global i64 0, align 8
@NCR_VARIANT_FAS366 = common dso_local global i64 0, align 8
@NCRFASCFG3_EWIDE = common dso_local global i32 0, align 4
@NCR_F_HASCFG3 = common dso_local global i32 0, align 4
@NCR_CFG3 = common dso_local global i32 0, align 4
@NCR_SYNCOFF = common dso_local global i32 0, align 4
@NCR_SYNCTP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ncr53c9x_softc*, %struct.ncr53c9x_tinfo*)* @ncr53c9x_setsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ncr53c9x_setsync(%struct.ncr53c9x_softc* %0, %struct.ncr53c9x_tinfo* %1) #0 {
  %3 = alloca %struct.ncr53c9x_softc*, align 8
  %4 = alloca %struct.ncr53c9x_tinfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ncr53c9x_softc* %0, %struct.ncr53c9x_softc** %3, align 8
  store %struct.ncr53c9x_tinfo* %1, %struct.ncr53c9x_tinfo** %4, align 8
  %8 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @NCR_LOCK_ASSERT(%struct.ncr53c9x_softc* %8, i32 %9)
  %11 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %4, align 8
  %15 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %65

19:                                               ; preds = %2
  %20 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %4, align 8
  %21 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %6, align 4
  %25 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %26 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %4, align 8
  %27 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ncr53c9x_stp2cpb(%struct.ncr53c9x_softc* %25, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %32 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @NCR_F_FASTSCSI, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %19
  %38 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %4, align 8
  %39 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = icmp sle i32 %41, 50
  br i1 %42, label %43, label %49

43:                                               ; preds = %37
  %44 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %45 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %43, %37
  br label %50

50:                                               ; preds = %49, %19
  %51 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %52 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @NCR_VARIANT_AM53C974, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @NCRAMDCFG3_FSCSI, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %61, %56, %50
  br label %66

65:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %66

66:                                               ; preds = %65, %64
  %67 = load %struct.ncr53c9x_tinfo*, %struct.ncr53c9x_tinfo** %4, align 8
  %68 = getelementptr inbounds %struct.ncr53c9x_tinfo, %struct.ncr53c9x_tinfo* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @MSG_EXT_WDTR_BUS_8_BIT, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %66
  %74 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %75 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @NCR_VARIANT_FAS366, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i32, i32* @NCRFASCFG3_EWIDE, align 4
  %81 = load i32, i32* %5, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %79, %73
  br label %84

84:                                               ; preds = %83, %66
  %85 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %86 = getelementptr inbounds %struct.ncr53c9x_softc, %struct.ncr53c9x_softc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @NCR_F_HASCFG3, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %93 = load i32, i32* @NCR_CFG3, align 4
  %94 = load i32, i32* %5, align 4
  %95 = call i32 @NCR_WRITE_REG(%struct.ncr53c9x_softc* %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %91, %84
  %97 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %98 = load i32, i32* @NCR_SYNCOFF, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @NCR_WRITE_REG(%struct.ncr53c9x_softc* %97, i32 %98, i32 %99)
  %101 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %102 = load i32, i32* @NCR_SYNCTP, align 4
  %103 = load i32, i32* %7, align 4
  %104 = call i32 @NCR_WRITE_REG(%struct.ncr53c9x_softc* %101, i32 %102, i32 %103)
  ret void
}

declare dso_local i32 @NCR_LOCK_ASSERT(%struct.ncr53c9x_softc*, i32) #1

declare dso_local i32 @ncr53c9x_stp2cpb(%struct.ncr53c9x_softc*, i32) #1

declare dso_local i32 @NCR_WRITE_REG(%struct.ncr53c9x_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
