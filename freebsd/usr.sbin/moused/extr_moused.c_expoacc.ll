; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/moused/extr_moused.c_expoacc.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/moused/extr_moused.c_expoacc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, float, float, float, i32 }

@expoacc.lastlength = internal global [3 x float] zeroinitializer, align 4
@rodent = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, i32*)* @expoacc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @expoacc(i32 %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i32, i32* %6, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32*, i32** %8, align 8
  store i32 0, i32* %20, align 4
  %21 = load i32*, i32** %7, align 8
  store i32 0, i32* %21, align 4
  br label %84

22:                                               ; preds = %16, %4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 0), align 4
  %25 = mul nsw i32 %23, %24
  %26 = sitofp i32 %25 to float
  store float %26, float* %9, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 1), align 4
  %29 = mul nsw i32 %27, %28
  %30 = sitofp i32 %29 to float
  store float %30, float* %10, align 4
  %31 = load float, float* %9, align 4
  %32 = load float, float* %9, align 4
  %33 = fmul float %31, %32
  %34 = load float, float* %10, align 4
  %35 = load float, float* %10, align 4
  %36 = fmul float %34, %35
  %37 = fadd float %33, %36
  %38 = call float @sqrtf(float %37) #3
  store float %38, float* %11, align 4
  %39 = load float, float* %11, align 4
  %40 = load float, float* getelementptr inbounds ([3 x float], [3 x float]* @expoacc.lastlength, i64 0, i64 0), align 4
  %41 = fadd float %39, %40
  %42 = load float, float* getelementptr inbounds ([3 x float], [3 x float]* @expoacc.lastlength, i64 0, i64 1), align 4
  %43 = fadd float %41, %42
  %44 = load float, float* getelementptr inbounds ([3 x float], [3 x float]* @expoacc.lastlength, i64 0, i64 2), align 4
  %45 = fadd float %43, %44
  %46 = fdiv float %45, 4.000000e+00
  store float %46, float* %11, align 4
  %47 = load float, float* %11, align 4
  %48 = load float, float* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 2), align 4
  %49 = fdiv float %47, %48
  store float %49, float* %12, align 4
  %50 = load float, float* %12, align 4
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 5), align 4
  %52 = call float @powf(float %50, i32 %51)
  %53 = load float, float* %12, align 4
  %54 = fdiv float %52, %53
  store float %54, float* %13, align 4
  %55 = load float, float* %9, align 4
  %56 = load float, float* %13, align 4
  %57 = fmul float %55, %56
  %58 = load float, float* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 3), align 4
  %59 = fadd float %57, %58
  store float %59, float* %9, align 4
  %60 = load float, float* %10, align 4
  %61 = load float, float* %13, align 4
  %62 = fmul float %60, %61
  %63 = load float, float* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 4), align 4
  %64 = fadd float %62, %63
  store float %64, float* %10, align 4
  %65 = load float, float* %9, align 4
  %66 = call i32 @lroundf(float %65)
  %67 = load i32*, i32** %7, align 8
  store i32 %66, i32* %67, align 4
  %68 = load float, float* %10, align 4
  %69 = call i32 @lroundf(float %68)
  %70 = load i32*, i32** %8, align 8
  store i32 %69, i32* %70, align 4
  %71 = load float, float* %9, align 4
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %72, align 4
  %74 = sitofp i32 %73 to float
  %75 = fsub float %71, %74
  store float %75, float* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 3), align 4
  %76 = load float, float* %10, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = load i32, i32* %77, align 4
  %79 = sitofp i32 %78 to float
  %80 = fsub float %76, %79
  store float %80, float* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @rodent, i32 0, i32 4), align 4
  %81 = load float, float* getelementptr inbounds ([3 x float], [3 x float]* @expoacc.lastlength, i64 0, i64 1), align 4
  store float %81, float* getelementptr inbounds ([3 x float], [3 x float]* @expoacc.lastlength, i64 0, i64 2), align 4
  %82 = load float, float* getelementptr inbounds ([3 x float], [3 x float]* @expoacc.lastlength, i64 0, i64 0), align 4
  store float %82, float* getelementptr inbounds ([3 x float], [3 x float]* @expoacc.lastlength, i64 0, i64 1), align 4
  %83 = load float, float* %11, align 4
  store float %83, float* getelementptr inbounds ([3 x float], [3 x float]* @expoacc.lastlength, i64 0, i64 0), align 4
  br label %84

84:                                               ; preds = %22, %19
  ret void
}

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #1

declare dso_local float @powf(float, i32) #2

declare dso_local i32 @lroundf(float) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
