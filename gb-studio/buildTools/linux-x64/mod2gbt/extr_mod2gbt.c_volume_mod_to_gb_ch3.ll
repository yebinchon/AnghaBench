; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/mod2gbt/extr_mod2gbt.c_volume_mod_to_gb_ch3.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/mod2gbt/extr_mod2gbt.c_volume_mod_to_gb_ch3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @volume_mod_to_gb_ch3(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = call i32 @volume_mod_to_gb(i32 %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  switch i32 %7, label %11 [
    i32 0, label %8
    i32 1, label %8
    i32 2, label %8
    i32 3, label %8
    i32 4, label %9
    i32 5, label %9
    i32 6, label %9
    i32 7, label %9
    i32 8, label %10
    i32 9, label %10
    i32 10, label %10
    i32 11, label %10
    i32 12, label %12
    i32 13, label %12
    i32 14, label %12
    i32 15, label %12
  ]

8:                                                ; preds = %1, %1, %1, %1
  store i32 0, i32* %2, align 4
  br label %13

9:                                                ; preds = %1, %1, %1, %1
  store i32 3, i32* %2, align 4
  br label %13

10:                                               ; preds = %1, %1, %1, %1
  store i32 2, i32* %2, align 4
  br label %13

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %1, %1, %1, %1, %11
  store i32 1, i32* %2, align 4
  br label %13

13:                                               ; preds = %12, %10, %9, %8
  %14 = load i32, i32* %2, align 4
  ret i32 %14
}

declare dso_local i32 @volume_mod_to_gb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
