; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_gprof.c_readsamples.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gprof/extr_gprof.c_readsamples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@samples = common dso_local global double* null, align 8
@nsamples = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"no room for %d sample pc's\00", align 1
@histcounter_size = common dso_local global i32 0, align 4
@histcounter_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"unsupported histogram counter type %d\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"unexpected EOF after reading %d/%d samples\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @readsamples(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load double*, double** @samples, align 8
  %6 = icmp eq double* %5, null
  br i1 %6, label %7, label %17

7:                                                ; preds = %1
  %8 = load i32, i32* @nsamples, align 4
  %9 = call i64 @calloc(i32 %8, i32 8)
  %10 = inttoptr i64 %9 to double*
  store double* %10, double** @samples, align 8
  %11 = load double*, double** @samples, align 8
  %12 = icmp eq double* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load i32, i32* @nsamples, align 4
  %15 = call i32 (i32, i8*, i32, ...) @errx(i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %13, %7
  br label %17

17:                                               ; preds = %16, %1
  store i32 0, i32* %3, align 4
  br label %18

18:                                               ; preds = %108, %17
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @nsamples, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %111

22:                                               ; preds = %18
  %23 = load i32, i32* @histcounter_size, align 4
  %24 = load i32*, i32** %2, align 8
  %25 = call i32 @fread(i32* %4, i32 %23, i32 1, i32* %24)
  %26 = load i32*, i32** %2, align 8
  %27 = call i64 @feof(i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %111

30:                                               ; preds = %22
  %31 = load i32, i32* @histcounter_type, align 4
  switch i32 %31, label %104 [
    i32 -8, label %32
    i32 8, label %41
    i32 -16, label %50
    i32 16, label %59
    i32 -32, label %68
    i32 32, label %77
    i32 -64, label %86
    i32 64, label %95
  ]

32:                                               ; preds = %30
  %33 = bitcast i32* %4 to double*
  %34 = load double, double* %33, align 4
  %35 = load double*, double** @samples, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds double, double* %35, i64 %37
  %39 = load double, double* %38, align 8
  %40 = fadd double %39, %34
  store double %40, double* %38, align 8
  br label %107

41:                                               ; preds = %30
  %42 = bitcast i32* %4 to double*
  %43 = load double, double* %42, align 4
  %44 = load double*, double** @samples, align 8
  %45 = load i32, i32* %3, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds double, double* %44, i64 %46
  %48 = load double, double* %47, align 8
  %49 = fadd double %48, %43
  store double %49, double* %47, align 8
  br label %107

50:                                               ; preds = %30
  %51 = bitcast i32* %4 to double*
  %52 = load double, double* %51, align 4
  %53 = load double*, double** @samples, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds double, double* %53, i64 %55
  %57 = load double, double* %56, align 8
  %58 = fadd double %57, %52
  store double %58, double* %56, align 8
  br label %107

59:                                               ; preds = %30
  %60 = bitcast i32* %4 to double*
  %61 = load double, double* %60, align 4
  %62 = load double*, double** @samples, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds double, double* %62, i64 %64
  %66 = load double, double* %65, align 8
  %67 = fadd double %66, %61
  store double %67, double* %65, align 8
  br label %107

68:                                               ; preds = %30
  %69 = bitcast i32* %4 to double*
  %70 = load double, double* %69, align 4
  %71 = load double*, double** @samples, align 8
  %72 = load i32, i32* %3, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds double, double* %71, i64 %73
  %75 = load double, double* %74, align 8
  %76 = fadd double %75, %70
  store double %76, double* %74, align 8
  br label %107

77:                                               ; preds = %30
  %78 = bitcast i32* %4 to double*
  %79 = load double, double* %78, align 4
  %80 = load double*, double** @samples, align 8
  %81 = load i32, i32* %3, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds double, double* %80, i64 %82
  %84 = load double, double* %83, align 8
  %85 = fadd double %84, %79
  store double %85, double* %83, align 8
  br label %107

86:                                               ; preds = %30
  %87 = bitcast i32* %4 to double*
  %88 = load double, double* %87, align 4
  %89 = load double*, double** @samples, align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds double, double* %89, i64 %91
  %93 = load double, double* %92, align 8
  %94 = fadd double %93, %88
  store double %94, double* %92, align 8
  br label %107

95:                                               ; preds = %30
  %96 = bitcast i32* %4 to double*
  %97 = load double, double* %96, align 4
  %98 = load double*, double** @samples, align 8
  %99 = load i32, i32* %3, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds double, double* %98, i64 %100
  %102 = load double, double* %101, align 8
  %103 = fadd double %102, %97
  store double %103, double* %101, align 8
  br label %107

104:                                              ; preds = %30
  %105 = load i32, i32* @histcounter_type, align 4
  %106 = call i32 @err(i32 1, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %104, %95, %86, %77, %68, %59, %50, %41, %32
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %3, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %3, align 4
  br label %18

111:                                              ; preds = %29, %18
  %112 = load i32, i32* %3, align 4
  %113 = load i32, i32* @nsamples, align 4
  %114 = icmp ne i32 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %111
  %116 = load i32, i32* %3, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %3, align 4
  %118 = load i32, i32* @nsamples, align 4
  %119 = call i32 (i32, i8*, i32, ...) @errx(i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %115, %111
  ret void
}

declare dso_local i64 @calloc(i32, i32) #1

declare dso_local i32 @errx(i32, i8*, i32, ...) #1

declare dso_local i32 @fread(i32*, i32, i32, i32*) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local i32 @err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
