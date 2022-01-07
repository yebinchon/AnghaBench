; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416GetMaxEdgePower.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/ath_hal/ar5416/extr_ar5416_reset.c_ar5416GetMaxEdgePower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }

@AR5416_MAX_RATE_POWER = common dso_local global i64 0, align 8
@AR5416_NUM_BAND_EDGES = common dso_local global i32 0, align 4
@AR5416_BCHAN_UNUSED = common dso_local global i64 0, align 8
@CAL_CTL_EDGES_POWER = common dso_local global i32 0, align 4
@CAL_CTL_EDGES_FLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ar5416GetMaxEdgePower(i64 %0, %struct.TYPE_3__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* @AR5416_MAX_RATE_POWER, align 8
  store i64 %9, i64* %7, align 8
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %95, %3
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @AR5416_NUM_BAND_EDGES, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %10
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @AR5416_BCHAN_UNUSED, align 8
  %22 = icmp ne i64 %20, %21
  br label %23

23:                                               ; preds = %14, %10
  %24 = phi i1 [ false, %10 ], [ %22, %14 ]
  br i1 %24, label %25, label %98

25:                                               ; preds = %23
  %26 = load i64, i64* %4, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @fbin2freq(i64 %32, i32 %33)
  %35 = icmp eq i64 %26, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %25
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @CAL_CTL_EDGES_POWER, align 4
  %44 = call i64 @MS(i32 %42, i32 %43)
  store i64 %44, i64* %7, align 8
  br label %98

45:                                               ; preds = %25
  %46 = load i32, i32* %8, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %93

48:                                               ; preds = %45
  %49 = load i64, i64* %4, align 8
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @fbin2freq(i64 %55, i32 %56)
  %58 = icmp slt i64 %49, %57
  br i1 %58, label %59, label %93

59:                                               ; preds = %48
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sub nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i64 @fbin2freq(i64 %66, i32 %67)
  %69 = load i64, i64* %4, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %92

71:                                               ; preds = %59
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sub nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @CAL_CTL_EDGES_FLAG, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %71
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sub nsw i32 %84, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @CAL_CTL_EDGES_POWER, align 4
  %91 = call i64 @MS(i32 %89, i32 %90)
  store i64 %91, i64* %7, align 8
  br label %92

92:                                               ; preds = %82, %71, %59
  br label %98

93:                                               ; preds = %48, %45
  br label %94

94:                                               ; preds = %93
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %8, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %8, align 4
  br label %10

98:                                               ; preds = %92, %36, %23
  %99 = load i64, i64* %7, align 8
  %100 = icmp sgt i64 %99, 0
  %101 = zext i1 %100 to i32
  %102 = call i32 @HALASSERT(i32 %101)
  %103 = load i64, i64* %7, align 8
  ret i64 %103
}

declare dso_local i64 @fbin2freq(i64, i32) #1

declare dso_local i64 @MS(i32, i32) #1

declare dso_local i32 @HALASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
