; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_paskha.c_j2g.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/calendar/extr_paskha.c_j2g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @j2g(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp slt i32 %3, 1500
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %16

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = sdiv i32 %7, 100
  %9 = sub nsw i32 %8, 16
  %10 = add nsw i32 10, %9
  %11 = load i32, i32* %2, align 4
  %12 = sdiv i32 %11, 100
  %13 = sub nsw i32 %12, 16
  %14 = sdiv i32 %13, 4
  %15 = sub nsw i32 %10, %14
  br label %16

16:                                               ; preds = %6, %5
  %17 = phi i32 [ 0, %5 ], [ %15, %6 ]
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
