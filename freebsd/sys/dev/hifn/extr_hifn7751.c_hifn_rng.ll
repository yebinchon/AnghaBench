; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_rng.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hifn/extr_hifn7751.c_hifn_rng.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hifn_softc = type { i32, i32, i32, i32, i32 (i32, i32*, i32)*, i64, i32 }

@HIFN_IS_7811 = common dso_local global i32 0, align 4
@HIFN_1_7811_RNGSTS = common dso_local global i32 0, align 4
@HIFN_7811_RNGSTS_UFL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"RNG underflow: disabling\0A\00", align 1
@HIFN_7811_RNGSTS_RDY = common dso_local global i32 0, align 4
@HIFN_1_7811_RNGDAT = common dso_local global i32 0, align 4
@HIFN_1_RNG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @hifn_rng to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hifn_rng(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hifn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32], align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.hifn_softc*
  store %struct.hifn_softc* %8, %struct.hifn_softc** %3, align 8
  %9 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %10 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @HIFN_IS_7811, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %68

15:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %64, %15
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 5
  br i1 %18, label %19, label %67

19:                                               ; preds = %16
  %20 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %21 = load i32, i32* @HIFN_1_7811_RNGSTS, align 4
  %22 = call i32 @READ_REG_1(%struct.hifn_softc* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @HIFN_7811_RNGSTS_UFL, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %19
  %28 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %29 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %28, i32 0, i32 6
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %98

32:                                               ; preds = %19
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @HIFN_7811_RNGSTS_RDY, align 4
  %35 = and i32 %33, %34
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %67

38:                                               ; preds = %32
  %39 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %40 = load i32, i32* @HIFN_1_7811_RNGDAT, align 4
  %41 = call i32 @READ_REG_1(%struct.hifn_softc* %39, i32 %40)
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %41, i32* %42, align 4
  %43 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %44 = load i32, i32* @HIFN_1_7811_RNGDAT, align 4
  %45 = call i32 @READ_REG_1(%struct.hifn_softc* %43, i32 %44)
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 1
  store i32 %45, i32* %46, align 4
  %47 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %48 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %47, i32 0, i32 5
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %38
  %52 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %53 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %52, i32 0, i32 5
  store i64 0, i64* %53, align 8
  br label %63

54:                                               ; preds = %38
  %55 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %56 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %55, i32 0, i32 4
  %57 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %56, align 8
  %58 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %59 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %62 = call i32 %57(i32 %60, i32* %61, i32 8)
  br label %63

63:                                               ; preds = %54, %51
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %6, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %6, align 4
  br label %16

67:                                               ; preds = %37, %16
  br label %90

68:                                               ; preds = %1
  %69 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %70 = load i32, i32* @HIFN_1_RNG_DATA, align 4
  %71 = call i32 @READ_REG_1(%struct.hifn_softc* %69, i32 %70)
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  store i32 %71, i32* %72, align 4
  %73 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %74 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %73, i32 0, i32 5
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %68
  %78 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %79 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %78, i32 0, i32 5
  store i64 0, i64* %79, align 8
  br label %89

80:                                               ; preds = %68
  %81 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %82 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %81, i32 0, i32 4
  %83 = load i32 (i32, i32*, i32)*, i32 (i32, i32*, i32)** %82, align 8
  %84 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %85 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %5, i64 0, i64 0
  %88 = call i32 %83(i32 %86, i32* %87, i32 4)
  br label %89

89:                                               ; preds = %80, %77
  br label %90

90:                                               ; preds = %89, %67
  %91 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %92 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %91, i32 0, i32 2
  %93 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %94 = getelementptr inbounds %struct.hifn_softc, %struct.hifn_softc* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.hifn_softc*, %struct.hifn_softc** %3, align 8
  %97 = call i32 @callout_reset(i32* %92, i32 %95, void (i8*)* @hifn_rng, %struct.hifn_softc* %96)
  br label %98

98:                                               ; preds = %90, %27
  ret void
}

declare dso_local i32 @READ_REG_1(%struct.hifn_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.hifn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
