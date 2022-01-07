; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/route6d/extr_route6d.c_ripinterval.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/route6d/extr_route6d.c_ripinterval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RIPRANDDEV = common dso_local global i32 0, align 4
@RAND_MAX = common dso_local global double 0.000000e+00, align 8
@interval = common dso_local global i32 0, align 4
@nextalarm = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ripinterval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ripinterval(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store i32 %0, i32* %2, align 4
  %4 = call double (...) @rand()
  store double %4, double* %3, align 8
  %5 = load i32, i32* %2, align 4
  %6 = sitofp i32 %5 to double
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @RIPRANDDEV, align 4
  %9 = mul nsw i32 %7, %8
  %10 = sitofp i32 %9 to double
  %11 = load double, double* %3, align 8
  %12 = load double, double* @RAND_MAX, align 8
  %13 = fdiv double %11, %12
  %14 = fsub double %13, 5.000000e-01
  %15 = fmul double %10, %14
  %16 = fadd double %6, %15
  %17 = fptosi double %16 to i32
  store i32 %17, i32* @interval, align 4
  %18 = call i64 @time(i32* null)
  %19 = load i32, i32* @interval, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  store i64 %21, i64* @nextalarm, align 8
  %22 = load i32, i32* @interval, align 4
  ret i32 %22
}

declare dso_local double @rand(...) #1

declare dso_local i64 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
