; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_sunpos.c_calculatesunlongitude30.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_sunpos.c_calculatesunlongitude30.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cumdaytab = common dso_local global i32** null, align 8
@monthdaytab = common dso_local global i32** null, align 8
@HOURSPERDAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @calculatesunlongitude30(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  store i32 -1, i32* %17, align 4
  %18 = load i32**, i32*** @cumdaytab, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i64 @isleap(i32 %19)
  %21 = getelementptr inbounds i32*, i32** %18, i64 %20
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %15, align 8
  %23 = load i32**, i32*** @monthdaytab, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @isleap(i32 %24)
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %14, align 8
  %28 = load i32*, i32** %6, align 8
  store i32* %28, i32** %13, align 8
  store i32 0, i32* %9, align 4
  %29 = load i32, i32* %4, align 4
  %30 = sub nsw i32 %29, 1
  %31 = load i32, i32* %5, align 4
  %32 = sitofp i32 %31 to double
  %33 = fdiv double %32, 3.600000e+02
  %34 = fmul double -2.400000e+01, %33
  %35 = fptosi double %34 to i32
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @HOUR(i32 %36)
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @MIN(i32 %38)
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @SEC(i32 %40)
  %42 = call i32 @sunpos(i32 %30, i32 12, i32 31, i32 %35, i32 %37, i32 %39, i32 %41, double 0.000000e+00, double 0.000000e+00, double* %12, double* %10)
  store i32 1, i32* %7, align 4
  br label %43

43:                                               ; preds = %139, %3
  %44 = load i32, i32* %7, align 4
  %45 = icmp sle i32 %44, 12
  br i1 %45, label %46, label %142

46:                                               ; preds = %43
  store i32 1, i32* %8, align 4
  br label %47

47:                                               ; preds = %135, %46
  %48 = load i32, i32* %8, align 4
  %49 = load i32*, i32** %14, align 8
  %50 = load i32, i32* %7, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = icmp sle i32 %48, %53
  br i1 %54, label %55, label %138

55:                                               ; preds = %47
  store i32 0, i32* %9, align 4
  br label %56

56:                                               ; preds = %131, %55
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @HOURSPERDAY, align 4
  %59 = mul nsw i32 4, %58
  %60 = icmp slt i32 %57, %59
  br i1 %60, label %61, label %134

61:                                               ; preds = %56
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* %8, align 4
  %65 = load i32, i32* %5, align 4
  %66 = sitofp i32 %65 to double
  %67 = fdiv double %66, 3.600000e+02
  %68 = fmul double -2.400000e+01, %67
  %69 = fptosi double %68 to i32
  %70 = load i32, i32* %9, align 4
  %71 = call i32 @HOUR(i32 %70)
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @MIN(i32 %72)
  %74 = load i32, i32* %9, align 4
  %75 = call i32 @SEC(i32 %74)
  %76 = call i32 @sunpos(i32 %62, i32 %63, i32 %64, i32 %69, i32 %71, i32 %73, i32 %75, double 0.000000e+00, double 0.000000e+00, double* %11, double* %10)
  %77 = load double, double* %11, align 8
  %78 = fcmp olt double %77, 1.800000e+02
  br i1 %78, label %79, label %93

79:                                               ; preds = %61
  %80 = load double, double* %12, align 8
  %81 = fcmp ogt double %80, 1.800000e+02
  br i1 %81, label %82, label %93

82:                                               ; preds = %79
  %83 = load i32*, i32** %15, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %87, %88
  %90 = load i32*, i32** %13, align 8
  store i32 %89, i32* %90, align 4
  %91 = load i32*, i32** %13, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %13, align 8
  br label %129

93:                                               ; preds = %79, %61
  store i32 0, i32* %16, align 4
  br label %94

94:                                               ; preds = %125, %93
  %95 = load i32, i32* %16, align 4
  %96 = icmp sle i32 %95, 360
  br i1 %96, label %97, label %128

97:                                               ; preds = %94
  %98 = load double, double* %11, align 8
  %99 = load i32, i32* %16, align 4
  %100 = sitofp i32 %99 to double
  %101 = fcmp ogt double %98, %100
  br i1 %101, label %102, label %124

102:                                              ; preds = %97
  %103 = load double, double* %12, align 8
  %104 = load i32, i32* %16, align 4
  %105 = sitofp i32 %104 to double
  %106 = fcmp olt double %103, %105
  br i1 %106, label %107, label %124

107:                                              ; preds = %102
  %108 = load i32*, i32** %15, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %112, %113
  %115 = load i32*, i32** %13, align 8
  store i32 %114, i32* %115, align 4
  %116 = load i32, i32* %16, align 4
  %117 = icmp eq i32 %116, 330
  br i1 %117, label %118, label %121

118:                                              ; preds = %107
  %119 = load i32*, i32** %13, align 8
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %17, align 4
  br label %121

121:                                              ; preds = %118, %107
  %122 = load i32*, i32** %13, align 8
  %123 = getelementptr inbounds i32, i32* %122, i32 1
  store i32* %123, i32** %13, align 8
  br label %124

124:                                              ; preds = %121, %102, %97
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %16, align 4
  %127 = add nsw i32 %126, 30
  store i32 %127, i32* %16, align 4
  br label %94

128:                                              ; preds = %94
  br label %129

129:                                              ; preds = %128, %82
  %130 = load double, double* %11, align 8
  store double %130, double* %12, align 8
  br label %131

131:                                              ; preds = %129
  %132 = load i32, i32* %9, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %9, align 4
  br label %56

134:                                              ; preds = %56
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %8, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %8, align 4
  br label %47

138:                                              ; preds = %47
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %7, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %7, align 4
  br label %43

142:                                              ; preds = %43
  %143 = load i32*, i32** %13, align 8
  store i32 -1, i32* %143, align 4
  %144 = load i32, i32* %17, align 4
  ret i32 %144
}

declare dso_local i64 @isleap(i32) #1

declare dso_local i32 @sunpos(i32, i32, i32, i32, i32, i32, i32, double, double, double*, double*) #1

declare dso_local i32 @HOUR(i32) #1

declare dso_local i32 @MIN(i32) #1

declare dso_local i32 @SEC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
