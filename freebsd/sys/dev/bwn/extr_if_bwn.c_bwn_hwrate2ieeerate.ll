; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_hwrate2ieeerate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_hwrate2ieeerate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"Ooops\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @bwn_hwrate2ieeerate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_hwrate2ieeerate(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %17 [
    i32 138, label %5
    i32 137, label %6
    i32 136, label %7
    i32 139, label %8
    i32 129, label %9
    i32 128, label %10
    i32 135, label %11
    i32 134, label %12
    i32 133, label %13
    i32 132, label %14
    i32 131, label %15
    i32 130, label %16
  ]

5:                                                ; preds = %1
  store i32 2, i32* %2, align 4
  br label %19

6:                                                ; preds = %1
  store i32 4, i32* %2, align 4
  br label %19

7:                                                ; preds = %1
  store i32 11, i32* %2, align 4
  br label %19

8:                                                ; preds = %1
  store i32 22, i32* %2, align 4
  br label %19

9:                                                ; preds = %1
  store i32 12, i32* %2, align 4
  br label %19

10:                                               ; preds = %1
  store i32 18, i32* %2, align 4
  br label %19

11:                                               ; preds = %1
  store i32 24, i32* %2, align 4
  br label %19

12:                                               ; preds = %1
  store i32 36, i32* %2, align 4
  br label %19

13:                                               ; preds = %1
  store i32 48, i32* %2, align 4
  br label %19

14:                                               ; preds = %1
  store i32 72, i32* %2, align 4
  br label %19

15:                                               ; preds = %1
  store i32 96, i32* %2, align 4
  br label %19

16:                                               ; preds = %1
  store i32 108, i32* %2, align 4
  br label %19

17:                                               ; preds = %1
  %18 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
