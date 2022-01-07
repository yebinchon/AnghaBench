; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bwstod.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bwstod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwstring = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i32* }

@MB_CUR_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @bwstod(%struct.bwstring* %0, i32* %1) #0 {
  %3 = alloca double, align 8
  %4 = alloca %struct.bwstring*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca double, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.bwstring* %0, %struct.bwstring** %4, align 8
  store i32* %1, i32** %5, align 8
  store double 0.000000e+00, double* %6, align 8
  %13 = load i32, i32* @MB_CUR_MAX, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %56

15:                                               ; preds = %2
  %16 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %17 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %8, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %22 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i8, i8* %20, i64 %24
  store i8* %25, i8** %7, align 8
  store i8* null, i8** %9, align 8
  br label %26

26:                                               ; preds = %37, %15
  %27 = load i8*, i8** %8, align 8
  %28 = load i8, i8* %27, align 1
  %29 = call i64 @isblank(i8 zeroext %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load i8*, i8** %8, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = icmp ult i8* %32, %33
  br label %35

35:                                               ; preds = %31, %26
  %36 = phi i1 [ false, %26 ], [ %34, %31 ]
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %8, align 8
  br label %26

40:                                               ; preds = %35
  %41 = load i8*, i8** %8, align 8
  %42 = load i8, i8* %41, align 1
  %43 = call i32 @isprint(i8 zeroext %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %40
  %46 = load i32*, i32** %5, align 8
  store i32 1, i32* %46, align 4
  store double 0.000000e+00, double* %3, align 8
  br label %100

47:                                               ; preds = %40
  %48 = load i8*, i8** %8, align 8
  %49 = call double @strtod(i8* %48, i8** %9)
  store double %49, double* %6, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = load i8*, i8** %8, align 8
  %52 = icmp eq i8* %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32*, i32** %5, align 8
  store i32 1, i32* %54, align 4
  store double 0.000000e+00, double* %3, align 8
  br label %100

55:                                               ; preds = %47
  br label %97

56:                                               ; preds = %2
  %57 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %58 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  store i32* %60, i32** %12, align 8
  %61 = load i32*, i32** %12, align 8
  %62 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %63 = getelementptr inbounds %struct.bwstring, %struct.bwstring* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  store i32* %66, i32** %10, align 8
  store i32* null, i32** %11, align 8
  br label %67

67:                                               ; preds = %78, %56
  %68 = load i32*, i32** %12, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @iswblank(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32*, i32** %12, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = icmp ult i32* %73, %74
  br label %76

76:                                               ; preds = %72, %67
  %77 = phi i1 [ false, %67 ], [ %75, %72 ]
  br i1 %77, label %78, label %81

78:                                               ; preds = %76
  %79 = load i32*, i32** %12, align 8
  %80 = getelementptr inbounds i32, i32* %79, i32 1
  store i32* %80, i32** %12, align 8
  br label %67

81:                                               ; preds = %76
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @iswprint(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %88, label %86

86:                                               ; preds = %81
  %87 = load i32*, i32** %5, align 8
  store i32 1, i32* %87, align 4
  store double 0.000000e+00, double* %3, align 8
  br label %100

88:                                               ; preds = %81
  %89 = load i32*, i32** %12, align 8
  %90 = call double @wcstod(i32* %89, i32** %11)
  store double %90, double* %6, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = load i32*, i32** %12, align 8
  %93 = icmp eq i32* %91, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i32*, i32** %5, align 8
  store i32 1, i32* %95, align 4
  store double 0.000000e+00, double* %3, align 8
  br label %100

96:                                               ; preds = %88
  br label %97

97:                                               ; preds = %96, %55
  %98 = load i32*, i32** %5, align 8
  store i32 0, i32* %98, align 4
  %99 = load double, double* %6, align 8
  store double %99, double* %3, align 8
  br label %100

100:                                              ; preds = %97, %94, %86, %53, %45
  %101 = load double, double* %3, align 8
  ret double %101
}

declare dso_local i64 @isblank(i8 zeroext) #1

declare dso_local i32 @isprint(i8 zeroext) #1

declare dso_local double @strtod(i8*, i8**) #1

declare dso_local i64 @iswblank(i32) #1

declare dso_local i32 @iswprint(i32) #1

declare dso_local double @wcstod(i32*, i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
