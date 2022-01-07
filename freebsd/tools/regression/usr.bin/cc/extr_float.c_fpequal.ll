; ModuleID = '/home/carl/AnghaBench/freebsd/tools/regression/usr.bin/cc/extr_float.c_fpequal.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/regression/usr.bin/cc/extr_float.c_fpequal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (x86_fp80, x86_fp80)* @fpequal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fpequal(x86_fp80 %0, x86_fp80 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca x86_fp80, align 16
  %5 = alloca x86_fp80, align 16
  store x86_fp80 %0, x86_fp80* %4, align 16
  store x86_fp80 %1, x86_fp80* %5, align 16
  %6 = load x86_fp80, x86_fp80* %4, align 16
  %7 = load x86_fp80, x86_fp80* %5, align 16
  %8 = fcmp une x86_fp80 %6, %7
  br i1 %8, label %9, label %20

9:                                                ; preds = %2
  %10 = load x86_fp80, x86_fp80* %4, align 16
  %11 = call i64 @isnan(x86_fp80 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load x86_fp80, x86_fp80* %5, align 16
  %15 = call i64 @isnan(x86_fp80 %14)
  %16 = icmp ne i64 %15, 0
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i1 [ false, %9 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %3, align 4
  br label %27

20:                                               ; preds = %2
  %21 = load x86_fp80, x86_fp80* %4, align 16
  %22 = call i64 @copysignl(double 1.000000e+00, x86_fp80 %21)
  %23 = load x86_fp80, x86_fp80* %5, align 16
  %24 = call i64 @copysignl(double 1.000000e+00, x86_fp80 %23)
  %25 = icmp eq i64 %22, %24
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %20, %17
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i64 @isnan(x86_fp80) #1

declare dso_local i64 @copysignl(double, x86_fp80) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
