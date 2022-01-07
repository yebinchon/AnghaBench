; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_gprof.c_asgnsamples.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_gprof.c_asgnsamples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64, i32 }

@highpc = common dso_local global i32 0, align 4
@lowpc = common dso_local global i64 0, align 8
@scale = common dso_local global i32 0, align 4
@nsamples = common dso_local global i32 0, align 4
@samples = common dso_local global double* null, align 8
@totime = common dso_local global double 0.000000e+00, align 8
@nname = common dso_local global i32 0, align 4
@nl = common dso_local global %struct.TYPE_2__* null, align 8
@HISTORICAL_SCALE_2 = common dso_local global i32 0, align 4
@SAMPLEDEBUG = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @asgnsamples() #0 {
  %1 = alloca i32, align 4
  %2 = alloca double, align 8
  %3 = alloca double, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = load i32, i32* @highpc, align 4
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* @lowpc, align 8
  %13 = sub i64 %11, %12
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* @scale, align 4
  %15 = load i32, i32* @nsamples, align 4
  %16 = load i32, i32* @scale, align 4
  %17 = sdiv i32 %16, %15
  store i32 %17, i32* @scale, align 4
  %18 = call i32 (...) @alignentries()
  store i32 0, i32* %6, align 4
  store i32 1, i32* %1, align 4
  br label %19

19:                                               ; preds = %111, %0
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @nsamples, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %114

23:                                               ; preds = %19
  %24 = load double*, double** @samples, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, double* %24, i64 %26
  %28 = load double, double* %27, align 8
  store double %28, double* %2, align 8
  %29 = load double, double* %2, align 8
  %30 = fcmp oeq double %29, 0.000000e+00
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  br label %111

32:                                               ; preds = %23
  %33 = load i64, i64* @lowpc, align 8
  %34 = load i32, i32* @scale, align 4
  %35 = load i32, i32* %6, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sext i32 %36 to i64
  %38 = add i64 %33, %37
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* @lowpc, align 8
  %40 = load i32, i32* @scale, align 4
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  %43 = mul nsw i32 %40, %42
  %44 = sext i32 %43 to i64
  %45 = add i64 %39, %44
  store i64 %45, i64* %5, align 8
  %46 = load double, double* %2, align 8
  store double %46, double* %3, align 8
  %47 = load double, double* %3, align 8
  %48 = load double, double* @totime, align 8
  %49 = fadd double %48, %47
  store double %49, double* @totime, align 8
  %50 = load i32, i32* %1, align 4
  %51 = sub nsw i32 %50, 1
  store i32 %51, i32* %1, align 4
  br label %52

52:                                               ; preds = %107, %32
  %53 = load i32, i32* %1, align 4
  %54 = load i32, i32* @nname, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %110

56:                                               ; preds = %52
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl, align 8
  %58 = load i32, i32* %1, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %8, align 8
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl, align 8
  %64 = load i32, i32* %1, align 4
  %65 = add nsw i32 %64, 1
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %9, align 8
  %70 = load i64, i64* %5, align 8
  %71 = load i64, i64* %8, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %56
  br label %110

74:                                               ; preds = %56
  %75 = load i64, i64* %4, align 8
  %76 = load i64, i64* %9, align 8
  %77 = icmp uge i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  br label %107

79:                                               ; preds = %74
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* %9, align 8
  %82 = call i64 @min(i64 %80, i64 %81)
  %83 = load i64, i64* %4, align 8
  %84 = load i64, i64* %8, align 8
  %85 = call i64 @max(i64 %83, i64 %84)
  %86 = sub i64 %82, %85
  store i64 %86, i64* %7, align 8
  %87 = load i64, i64* %7, align 8
  %88 = icmp ugt i64 %87, 0
  br i1 %88, label %89, label %106

89:                                               ; preds = %79
  %90 = load i64, i64* %7, align 8
  %91 = uitofp i64 %90 to double
  %92 = load double, double* %3, align 8
  %93 = fmul double %91, %92
  %94 = load i32, i32* @scale, align 4
  %95 = sitofp i32 %94 to double
  %96 = fdiv double %93, %95
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nl, align 8
  %98 = load i32, i32* %1, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = uitofp i64 %102 to double
  %104 = fadd double %103, %96
  %105 = fptoui double %104 to i64
  store i64 %105, i64* %101, align 8
  br label %106

106:                                              ; preds = %89, %79
  br label %107

107:                                              ; preds = %106, %78
  %108 = load i32, i32* %1, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %1, align 4
  br label %52

110:                                              ; preds = %73, %52
  br label %111

111:                                              ; preds = %110, %31
  %112 = load i32, i32* %6, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %6, align 4
  br label %19

114:                                              ; preds = %19
  ret void
}

declare dso_local i32 @alignentries(...) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @max(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
