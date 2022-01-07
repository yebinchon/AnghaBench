; ModuleID = '/home/carl/AnghaBench/git/extr_bisect.c_sqrti.c'
source_filename = "/home/carl/AnghaBench/git/extr_bisect.c_sqrti.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sqrti to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqrti(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sitofp i32 %7 to float
  store float %8, float* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %35, %12
  %14 = load float, float* %5, align 4
  %15 = load i32, i32* %3, align 4
  %16 = sitofp i32 %15 to float
  %17 = load float, float* %5, align 4
  %18 = fdiv float %16, %17
  %19 = fadd float %14, %18
  %20 = fdiv float %19, 2.000000e+00
  store float %20, float* %6, align 4
  %21 = load float, float* %6, align 4
  %22 = load float, float* %5, align 4
  %23 = fcmp ogt float %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %13
  %25 = load float, float* %6, align 4
  %26 = load float, float* %5, align 4
  %27 = fsub float %25, %26
  br label %32

28:                                               ; preds = %13
  %29 = load float, float* %5, align 4
  %30 = load float, float* %6, align 4
  %31 = fsub float %29, %30
  br label %32

32:                                               ; preds = %28, %24
  %33 = phi float [ %27, %24 ], [ %31, %28 ]
  store float %33, float* %4, align 4
  %34 = load float, float* %6, align 4
  store float %34, float* %5, align 4
  br label %35

35:                                               ; preds = %32
  %36 = load float, float* %4, align 4
  %37 = fpext float %36 to double
  %38 = fcmp oge double %37, 5.000000e-01
  br i1 %38, label %13, label %39

39:                                               ; preds = %35
  %40 = load float, float* %5, align 4
  %41 = fptosi float %40 to i32
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %39, %11
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
