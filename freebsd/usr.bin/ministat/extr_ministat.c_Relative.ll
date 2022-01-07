; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/ministat/extr_ministat.c_Relative.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/ministat/extr_ministat.c_Relative.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dataset = type { i32 }

@NSTUDENT = common dso_local global i32 0, align 4
@student = common dso_local global double** null, align 8
@.str = private unnamed_addr constant [33 x i8] c"Difference at %.1f%% confidence\0A\00", align 1
@studentpct = common dso_local global double* null, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"\09%g +/- %g\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"\09%g%% +/- %g%%\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"\09(Student's t, pooled s = %g)\0A\00", align 1
@.str.4 = private unnamed_addr constant [43 x i8] c"No difference proven at %.1f%% confidence\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dataset*, %struct.dataset*, i32)* @Relative to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Relative(%struct.dataset* %0, %struct.dataset* %1, i32 %2) #0 {
  %4 = alloca %struct.dataset*, align 8
  %5 = alloca %struct.dataset*, align 8
  %6 = alloca i32, align 4
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = alloca i32, align 4
  store %struct.dataset* %0, %struct.dataset** %4, align 8
  store %struct.dataset* %1, %struct.dataset** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.dataset*, %struct.dataset** %4, align 8
  %15 = getelementptr inbounds %struct.dataset, %struct.dataset* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dataset*, %struct.dataset** %5, align 8
  %18 = getelementptr inbounds %struct.dataset, %struct.dataset* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %16, %19
  %21 = sub nsw i32 %20, 2
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = load i32, i32* @NSTUDENT, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %3
  %26 = load double**, double*** @student, align 8
  %27 = getelementptr inbounds double*, double** %26, i64 0
  %28 = load double*, double** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds double, double* %28, i64 %30
  %32 = load double, double* %31, align 8
  store double %32, double* %11, align 8
  br label %43

33:                                               ; preds = %3
  %34 = load double**, double*** @student, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds double*, double** %34, i64 %36
  %38 = load double*, double** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds double, double* %38, i64 %40
  %42 = load double, double* %41, align 8
  store double %42, double* %11, align 8
  br label %43

43:                                               ; preds = %33, %25
  %44 = load %struct.dataset*, %struct.dataset** %4, align 8
  %45 = getelementptr inbounds %struct.dataset, %struct.dataset* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 1
  %48 = load %struct.dataset*, %struct.dataset** %4, align 8
  %49 = call i32 @Var(%struct.dataset* %48)
  %50 = mul nsw i32 %47, %49
  %51 = load %struct.dataset*, %struct.dataset** %5, align 8
  %52 = getelementptr inbounds %struct.dataset, %struct.dataset* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %53, 1
  %55 = load %struct.dataset*, %struct.dataset** %5, align 8
  %56 = call i32 @Var(%struct.dataset* %55)
  %57 = mul nsw i32 %54, %56
  %58 = add nsw i32 %50, %57
  %59 = sitofp i32 %58 to double
  store double %59, double* %7, align 8
  %60 = load %struct.dataset*, %struct.dataset** %4, align 8
  %61 = getelementptr inbounds %struct.dataset, %struct.dataset* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.dataset*, %struct.dataset** %5, align 8
  %64 = getelementptr inbounds %struct.dataset, %struct.dataset* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %62, %65
  %67 = sub nsw i32 %66, 2
  %68 = sitofp i32 %67 to double
  %69 = load double, double* %7, align 8
  %70 = fdiv double %69, %68
  store double %70, double* %7, align 8
  %71 = load double, double* %7, align 8
  %72 = call double @sqrt(double %71) #4
  store double %72, double* %7, align 8
  %73 = load double, double* %7, align 8
  %74 = load %struct.dataset*, %struct.dataset** %4, align 8
  %75 = getelementptr inbounds %struct.dataset, %struct.dataset* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = sitofp i32 %76 to double
  %78 = fdiv double 1.000000e+00, %77
  %79 = load %struct.dataset*, %struct.dataset** %5, align 8
  %80 = getelementptr inbounds %struct.dataset, %struct.dataset* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sitofp i32 %81 to double
  %83 = fdiv double 1.000000e+00, %82
  %84 = fadd double %78, %83
  %85 = call double @sqrt(double %84) #4
  %86 = fmul double %73, %85
  store double %86, double* %8, align 8
  %87 = load %struct.dataset*, %struct.dataset** %4, align 8
  %88 = call double @Avg(%struct.dataset* %87)
  %89 = load %struct.dataset*, %struct.dataset** %5, align 8
  %90 = call double @Avg(%struct.dataset* %89)
  %91 = fsub double %88, %90
  store double %91, double* %9, align 8
  %92 = load double, double* %11, align 8
  %93 = load double, double* %8, align 8
  %94 = fmul double %92, %93
  store double %94, double* %10, align 8
  %95 = load %struct.dataset*, %struct.dataset** %4, align 8
  %96 = getelementptr inbounds %struct.dataset, %struct.dataset* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = sub nsw i32 %97, 1
  %99 = load %struct.dataset*, %struct.dataset** %4, align 8
  %100 = call i32 @Var(%struct.dataset* %99)
  %101 = mul nsw i32 %98, %100
  %102 = sitofp i32 %101 to double
  %103 = load %struct.dataset*, %struct.dataset** %5, align 8
  %104 = getelementptr inbounds %struct.dataset, %struct.dataset* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = sub nsw i32 %105, 1
  %107 = load %struct.dataset*, %struct.dataset** %5, align 8
  %108 = call i32 @Var(%struct.dataset* %107)
  %109 = mul nsw i32 %106, %108
  %110 = sitofp i32 %109 to double
  %111 = load %struct.dataset*, %struct.dataset** %4, align 8
  %112 = call double @Avg(%struct.dataset* %111)
  %113 = load %struct.dataset*, %struct.dataset** %4, align 8
  %114 = call double @Avg(%struct.dataset* %113)
  %115 = fmul double %112, %114
  %116 = fmul double %110, %115
  %117 = load %struct.dataset*, %struct.dataset** %5, align 8
  %118 = call double @Avg(%struct.dataset* %117)
  %119 = load %struct.dataset*, %struct.dataset** %5, align 8
  %120 = call double @Avg(%struct.dataset* %119)
  %121 = fmul double %118, %120
  %122 = fdiv double %116, %121
  %123 = fadd double %102, %122
  store double %123, double* %12, align 8
  %124 = load %struct.dataset*, %struct.dataset** %4, align 8
  %125 = getelementptr inbounds %struct.dataset, %struct.dataset* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.dataset*, %struct.dataset** %5, align 8
  %128 = getelementptr inbounds %struct.dataset, %struct.dataset* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %126, %129
  %131 = sitofp i32 %130 to double
  %132 = load %struct.dataset*, %struct.dataset** %4, align 8
  %133 = getelementptr inbounds %struct.dataset, %struct.dataset* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.dataset*, %struct.dataset** %5, align 8
  %136 = getelementptr inbounds %struct.dataset, %struct.dataset* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = mul nsw i32 %134, %137
  %139 = sitofp i32 %138 to double
  %140 = load %struct.dataset*, %struct.dataset** %4, align 8
  %141 = getelementptr inbounds %struct.dataset, %struct.dataset* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.dataset*, %struct.dataset** %5, align 8
  %144 = getelementptr inbounds %struct.dataset, %struct.dataset* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %142, %145
  %147 = sitofp i32 %146 to double
  %148 = fsub double %147, 2.000000e+00
  %149 = fmul double %139, %148
  %150 = fdiv double %131, %149
  %151 = load double, double* %12, align 8
  %152 = fmul double %151, %150
  store double %152, double* %12, align 8
  %153 = load double, double* %11, align 8
  %154 = load double, double* %12, align 8
  %155 = call double @sqrt(double %154) #4
  %156 = fmul double %153, %155
  store double %156, double* %12, align 8
  %157 = load double, double* %9, align 8
  %158 = call double @llvm.fabs.f64(double %157)
  %159 = load double, double* %10, align 8
  %160 = fcmp ogt double %158, %159
  br i1 %160, label %161, label %184

161:                                              ; preds = %43
  %162 = load double*, double** @studentpct, align 8
  %163 = load i32, i32* %6, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds double, double* %162, i64 %164
  %166 = load double, double* %165, align 8
  %167 = call i32 (i8*, double, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), double %166)
  %168 = load double, double* %9, align 8
  %169 = load double, double* %10, align 8
  %170 = call i32 (i8*, double, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), double %168, double %169)
  %171 = load double, double* %9, align 8
  %172 = fmul double %171, 1.000000e+02
  %173 = load %struct.dataset*, %struct.dataset** %5, align 8
  %174 = call double @Avg(%struct.dataset* %173)
  %175 = fdiv double %172, %174
  %176 = load double, double* %12, align 8
  %177 = fmul double %176, 1.000000e+02
  %178 = load %struct.dataset*, %struct.dataset** %5, align 8
  %179 = call double @Avg(%struct.dataset* %178)
  %180 = fdiv double %177, %179
  %181 = call i32 (i8*, double, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), double %175, double %180)
  %182 = load double, double* %7, align 8
  %183 = call i32 (i8*, double, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), double %182)
  br label %191

184:                                              ; preds = %43
  %185 = load double*, double** @studentpct, align 8
  %186 = load i32, i32* %6, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds double, double* %185, i64 %187
  %189 = load double, double* %188, align 8
  %190 = call i32 (i8*, double, ...) @printf(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), double %189)
  br label %191

191:                                              ; preds = %184, %161
  ret void
}

declare dso_local i32 @Var(%struct.dataset*) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

declare dso_local double @Avg(%struct.dataset*) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare double @llvm.fabs.f64(double) #3

declare dso_local i32 @printf(i8*, double, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
