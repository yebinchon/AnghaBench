; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/test/extr_test_dn_sched.c_ipdn_bound_var.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/test/extr_test_dn_sched.c_ipdn_bound_var.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipdn_bound_var(i32* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %5
  %17 = load i32, i32* %7, align 4
  %18 = load i32*, i32** %6, align 8
  store i32 %17, i32* %18, align 4
  br label %28

19:                                               ; preds = %5
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %9, align 4
  %26 = load i32*, i32** %6, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %24, %19
  br label %28

28:                                               ; preds = %27, %16
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %29, align 4
  ret i32 %30
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
