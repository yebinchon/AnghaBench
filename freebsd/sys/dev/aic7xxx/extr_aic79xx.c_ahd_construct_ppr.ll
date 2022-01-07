; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_construct_ppr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx.c_ahd_construct_ppr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32, i32, i64* }
%struct.ahd_devinfo = type { i32, i32, i32 }

@AHD_SYNCRATE_PACED = common dso_local global i64 0, align 8
@MSG_EXT_PPR_PCOMP_EN = common dso_local global i64 0, align 8
@AHD_ASYNC_XFER_PERIOD = common dso_local global i64 0, align 8
@MSG_EXTENDED = common dso_local global i64 0, align 8
@MSG_EXT_PPR_LEN = common dso_local global i64 0, align 8
@MSG_EXT_PPR = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [79 x i8] c"(%s:%c:%d:%d): Sending PPR bus_width %x, period %x, offset %x, ppr_options %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, %struct.ahd_devinfo*, i64, i64, i64, i64)* @ahd_construct_ppr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_construct_ppr(%struct.ahd_softc* %0, %struct.ahd_devinfo* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.ahd_softc*, align 8
  %8 = alloca %struct.ahd_devinfo*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ahd_softc* %0, %struct.ahd_softc** %7, align 8
  store %struct.ahd_devinfo* %1, %struct.ahd_devinfo** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* @AHD_SYNCRATE_PACED, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %6
  %17 = load i64, i64* @MSG_EXT_PPR_PCOMP_EN, align 8
  %18 = load i64, i64* %12, align 8
  %19 = or i64 %18, %17
  store i64 %19, i64* %12, align 8
  br label %20

20:                                               ; preds = %16, %6
  %21 = load i64, i64* %10, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %20
  %24 = load i64, i64* @AHD_ASYNC_XFER_PERIOD, align 8
  store i64 %24, i64* %9, align 8
  br label %25

25:                                               ; preds = %23, %20
  %26 = load i64, i64* @MSG_EXTENDED, align 8
  %27 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %28 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %27, i32 0, i32 2
  %29 = load i64*, i64** %28, align 8
  %30 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %31 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = sext i32 %32 to i64
  %35 = getelementptr inbounds i64, i64* %29, i64 %34
  store i64 %26, i64* %35, align 8
  %36 = load i64, i64* @MSG_EXT_PPR_LEN, align 8
  %37 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %38 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %37, i32 0, i32 2
  %39 = load i64*, i64** %38, align 8
  %40 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %41 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i64, i64* %39, i64 %44
  store i64 %36, i64* %45, align 8
  %46 = load i64, i64* @MSG_EXT_PPR, align 8
  %47 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %48 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %47, i32 0, i32 2
  %49 = load i64*, i64** %48, align 8
  %50 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %51 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds i64, i64* %49, i64 %54
  store i64 %46, i64* %55, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %58 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %57, i32 0, i32 2
  %59 = load i64*, i64** %58, align 8
  %60 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %61 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = sext i32 %62 to i64
  %65 = getelementptr inbounds i64, i64* %59, i64 %64
  store i64 %56, i64* %65, align 8
  %66 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %67 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %66, i32 0, i32 2
  %68 = load i64*, i64** %67, align 8
  %69 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %70 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i64, i64* %68, i64 %73
  store i64 0, i64* %74, align 8
  %75 = load i64, i64* %10, align 8
  %76 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %77 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %76, i32 0, i32 2
  %78 = load i64*, i64** %77, align 8
  %79 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %80 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  %83 = sext i32 %81 to i64
  %84 = getelementptr inbounds i64, i64* %78, i64 %83
  store i64 %75, i64* %84, align 8
  %85 = load i64, i64* %11, align 8
  %86 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %87 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %86, i32 0, i32 2
  %88 = load i64*, i64** %87, align 8
  %89 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %90 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i64, i64* %88, i64 %93
  store i64 %85, i64* %94, align 8
  %95 = load i64, i64* %12, align 8
  %96 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %97 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %96, i32 0, i32 2
  %98 = load i64*, i64** %97, align 8
  %99 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %100 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds i64, i64* %98, i64 %103
  store i64 %95, i64* %104, align 8
  %105 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %106 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = add nsw i32 %107, 8
  store i32 %108, i32* %106, align 8
  %109 = load i64, i64* @bootverbose, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %128

111:                                              ; preds = %25
  %112 = load %struct.ahd_softc*, %struct.ahd_softc** %7, align 8
  %113 = call i8* @ahd_name(%struct.ahd_softc* %112)
  %114 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %8, align 8
  %115 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %8, align 8
  %118 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ahd_devinfo*, %struct.ahd_devinfo** %8, align 8
  %121 = getelementptr inbounds %struct.ahd_devinfo, %struct.ahd_devinfo* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = load i64, i64* %11, align 8
  %124 = load i64, i64* %9, align 8
  %125 = load i64, i64* %10, align 8
  %126 = load i64, i64* %12, align 8
  %127 = call i32 @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i8* %113, i32 %116, i32 %119, i32 %122, i64 %123, i64 %124, i64 %125, i64 %126)
  br label %128

128:                                              ; preds = %111, %25
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32, i64, i64, i64, i64) #1

declare dso_local i8* @ahd_name(%struct.ahd_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
