; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_lm75.c_lm75_temp_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_lm75.c_lm75_temp_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm75_softc = type { i64, i32, i32 }

@LM75_NEG_BIT = common dso_local global i32 0, align 4
@HWTYPE_LM75A = common dso_local global i64 0, align 8
@LM75A_TEMP_MASK = common dso_local global i32 0, align 4
@LM75_TEMP_MASK = common dso_local global i32 0, align 4
@LM75_0125C = common dso_local global i32 0, align 4
@LM75_0250C = common dso_local global i32 0, align 4
@LM75_0500C = common dso_local global i32 0, align 4
@TZ_ZEROC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm75_softc*, i32, i32*)* @lm75_temp_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm75_temp_read(%struct.lm75_softc* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lm75_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca [2 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.lm75_softc* %0, %struct.lm75_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %12 = load %struct.lm75_softc*, %struct.lm75_softc** %5, align 8
  %13 = getelementptr inbounds %struct.lm75_softc, %struct.lm75_softc* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.lm75_softc*, %struct.lm75_softc** %5, align 8
  %16 = getelementptr inbounds %struct.lm75_softc, %struct.lm75_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %20 = call i64 @lm75_read(i32 %14, i32 %17, i32 %18, i32* %19, i32 8)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %110

23:                                               ; preds = %3
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 8
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 255
  %30 = or i32 %26, %29
  store i32 %30, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @LM75_NEG_BIT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %23
  %36 = load %struct.lm75_softc*, %struct.lm75_softc** %5, align 8
  %37 = getelementptr inbounds %struct.lm75_softc, %struct.lm75_softc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @HWTYPE_LM75A, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %35
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @LM75A_TEMP_MASK, align 4
  %44 = and i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %9, align 4
  br label %53

47:                                               ; preds = %35
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @LM75_TEMP_MASK, align 4
  %50 = and i32 %48, %49
  %51 = xor i32 %50, -1
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %47, %41
  store i32 1, i32* %10, align 4
  br label %54

54:                                               ; preds = %53, %23
  %55 = load i32, i32* %9, align 4
  %56 = ashr i32 %55, 8
  %57 = mul nsw i32 %56, 10
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  store i32 0, i32* %11, align 4
  %59 = load %struct.lm75_softc*, %struct.lm75_softc** %5, align 8
  %60 = getelementptr inbounds %struct.lm75_softc, %struct.lm75_softc* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @HWTYPE_LM75A, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %54
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @LM75_0125C, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 125
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @LM75_0250C, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 250
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %77, %72
  br label %81

81:                                               ; preds = %80, %54
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @LM75_0500C, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 500
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %86, %81
  %90 = load i32, i32* %11, align 4
  %91 = sdiv i32 %90, 100
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, %92
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* %10, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %89
  %99 = load i32*, i32** %7, align 8
  %100 = load i32, i32* %99, align 4
  %101 = sub nsw i32 0, %100
  %102 = load i32*, i32** %7, align 8
  store i32 %101, i32* %102, align 4
  br label %103

103:                                              ; preds = %98, %89
  %104 = load i64, i64* @TZ_ZEROC, align 8
  %105 = load i32*, i32** %7, align 8
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, %104
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %105, align 4
  store i32 0, i32* %4, align 4
  br label %110

110:                                              ; preds = %103, %22
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i64 @lm75_read(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
