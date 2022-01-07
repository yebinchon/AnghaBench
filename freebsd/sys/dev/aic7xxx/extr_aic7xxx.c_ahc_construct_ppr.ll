; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_construct_ppr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_construct_ppr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32, i64* }
%struct.ahc_devinfo = type { i32, i32, i32 }

@AHC_ASYNC_XFER_PERIOD = common dso_local global i64 0, align 8
@MSG_EXTENDED = common dso_local global i64 0, align 8
@MSG_EXT_PPR_LEN = common dso_local global i64 0, align 8
@MSG_EXT_PPR = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [79 x i8] c"(%s:%c:%d:%d): Sending PPR bus_width %x, period %x, offset %x, ppr_options %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*, %struct.ahc_devinfo*, i64, i64, i64, i64)* @ahc_construct_ppr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_construct_ppr(%struct.ahc_softc* %0, %struct.ahc_devinfo* %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.ahc_softc*, align 8
  %8 = alloca %struct.ahc_devinfo*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %7, align 8
  store %struct.ahc_devinfo* %1, %struct.ahc_devinfo** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %13 = load i64, i64* %10, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %6
  %16 = load i64, i64* @AHC_ASYNC_XFER_PERIOD, align 8
  store i64 %16, i64* %9, align 8
  br label %17

17:                                               ; preds = %15, %6
  %18 = load i64, i64* @MSG_EXTENDED, align 8
  %19 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %20 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %19, i32 0, i32 2
  %21 = load i64*, i64** %20, align 8
  %22 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %23 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = sext i32 %24 to i64
  %27 = getelementptr inbounds i64, i64* %21, i64 %26
  store i64 %18, i64* %27, align 8
  %28 = load i64, i64* @MSG_EXT_PPR_LEN, align 8
  %29 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %30 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %29, i32 0, i32 2
  %31 = load i64*, i64** %30, align 8
  %32 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %33 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i64, i64* %31, i64 %36
  store i64 %28, i64* %37, align 8
  %38 = load i64, i64* @MSG_EXT_PPR, align 8
  %39 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %40 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %39, i32 0, i32 2
  %41 = load i64*, i64** %40, align 8
  %42 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %43 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i64, i64* %41, i64 %46
  store i64 %38, i64* %47, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %50 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %49, i32 0, i32 2
  %51 = load i64*, i64** %50, align 8
  %52 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %53 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i64, i64* %51, i64 %56
  store i64 %48, i64* %57, align 8
  %58 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %59 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %58, i32 0, i32 2
  %60 = load i64*, i64** %59, align 8
  %61 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %62 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds i64, i64* %60, i64 %65
  store i64 0, i64* %66, align 8
  %67 = load i64, i64* %10, align 8
  %68 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %69 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %68, i32 0, i32 2
  %70 = load i64*, i64** %69, align 8
  %71 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %72 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i64, i64* %70, i64 %75
  store i64 %67, i64* %76, align 8
  %77 = load i64, i64* %11, align 8
  %78 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %79 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %78, i32 0, i32 2
  %80 = load i64*, i64** %79, align 8
  %81 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %82 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  %85 = sext i32 %83 to i64
  %86 = getelementptr inbounds i64, i64* %80, i64 %85
  store i64 %77, i64* %86, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %89 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %88, i32 0, i32 2
  %90 = load i64*, i64** %89, align 8
  %91 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %92 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  %95 = sext i32 %93 to i64
  %96 = getelementptr inbounds i64, i64* %90, i64 %95
  store i64 %87, i64* %96, align 8
  %97 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %98 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 8
  store i32 %100, i32* %98, align 8
  %101 = load i64, i64* @bootverbose, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %17
  %104 = load %struct.ahc_softc*, %struct.ahc_softc** %7, align 8
  %105 = call i8* @ahc_name(%struct.ahc_softc* %104)
  %106 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %8, align 8
  %107 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %8, align 8
  %110 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %8, align 8
  %113 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = load i64, i64* %11, align 8
  %116 = load i64, i64* %9, align 8
  %117 = load i64, i64* %10, align 8
  %118 = load i64, i64* %12, align 8
  %119 = call i32 @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i8* %105, i32 %108, i32 %111, i32 %114, i64 %115, i64 %116, i64 %117, i64 %118)
  br label %120

120:                                              ; preds = %103, %17
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32, i64, i64, i64, i64) #1

declare dso_local i8* @ahc_name(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
