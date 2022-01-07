; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_construct_sdtr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx.c_ahc_construct_sdtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32, i32, i64* }
%struct.ahc_devinfo = type { i32, i32, i32 }

@AHC_ASYNC_XFER_PERIOD = common dso_local global i64 0, align 8
@MSG_EXTENDED = common dso_local global i64 0, align 8
@MSG_EXT_SDTR_LEN = common dso_local global i64 0, align 8
@MSG_EXT_SDTR = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"(%s:%c:%d:%d): Sending SDTR period %x, offset %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*, %struct.ahc_devinfo*, i64, i64)* @ahc_construct_sdtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_construct_sdtr(%struct.ahc_softc* %0, %struct.ahc_devinfo* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.ahc_softc*, align 8
  %6 = alloca %struct.ahc_devinfo*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %5, align 8
  store %struct.ahc_devinfo* %1, %struct.ahc_devinfo** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %9 = load i64, i64* %8, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %4
  %12 = load i64, i64* @AHC_ASYNC_XFER_PERIOD, align 8
  store i64 %12, i64* %7, align 8
  br label %13

13:                                               ; preds = %11, %4
  %14 = load i64, i64* @MSG_EXTENDED, align 8
  %15 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %16 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %15, i32 0, i32 2
  %17 = load i64*, i64** %16, align 8
  %18 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %19 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds i64, i64* %17, i64 %22
  store i64 %14, i64* %23, align 8
  %24 = load i64, i64* @MSG_EXT_SDTR_LEN, align 8
  %25 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %26 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %25, i32 0, i32 2
  %27 = load i64*, i64** %26, align 8
  %28 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %29 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i64, i64* %27, i64 %32
  store i64 %24, i64* %33, align 8
  %34 = load i64, i64* @MSG_EXT_SDTR, align 8
  %35 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %36 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %35, i32 0, i32 2
  %37 = load i64*, i64** %36, align 8
  %38 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %39 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i64, i64* %37, i64 %42
  store i64 %34, i64* %43, align 8
  %44 = load i64, i64* %7, align 8
  %45 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %46 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %45, i32 0, i32 2
  %47 = load i64*, i64** %46, align 8
  %48 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %49 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = sext i32 %50 to i64
  %53 = getelementptr inbounds i64, i64* %47, i64 %52
  store i64 %44, i64* %53, align 8
  %54 = load i64, i64* %8, align 8
  %55 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %56 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %55, i32 0, i32 2
  %57 = load i64*, i64** %56, align 8
  %58 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %59 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds i64, i64* %57, i64 %62
  store i64 %54, i64* %63, align 8
  %64 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %65 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = add nsw i32 %66, 5
  store i32 %67, i32* %65, align 8
  %68 = load i64, i64* @bootverbose, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %13
  %71 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %72 = call i8* @ahc_name(%struct.ahc_softc* %71)
  %73 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %6, align 8
  %74 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %6, align 8
  %77 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ahc_devinfo*, %struct.ahc_devinfo** %6, align 8
  %80 = getelementptr inbounds %struct.ahc_devinfo, %struct.ahc_devinfo* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i64, i64* %7, align 8
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i8* %72, i32 %75, i32 %78, i32 %81, i64 %82, i64 %83)
  br label %85

85:                                               ; preds = %70, %13
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i32, i32, i32, i64, i64) #1

declare dso_local i8* @ahc_name(%struct.ahc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
