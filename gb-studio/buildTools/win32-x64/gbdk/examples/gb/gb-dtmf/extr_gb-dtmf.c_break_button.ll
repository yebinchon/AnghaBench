; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/win32-x64/gbdk/examples/gb/gb-dtmf/extr_gb-dtmf.c_break_button.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/win32-x64/gbdk/examples/gb/gb-dtmf/extr_gb-dtmf.c_break_button.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@break_tile = common dso_local global i32 0, align 4
@dialing_break = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @break_button(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %3, align 4
  %6 = icmp sle i32 %5, 3
  br i1 %6, label %7, label %19

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = icmp sle i32 %8, 3
  br i1 %9, label %10, label %19

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = mul nsw i32 %11, 3
  %13 = add nsw i32 %12, 1
  %14 = load i32, i32* %4, align 4
  %15 = mul nsw i32 %14, 3
  %16 = add nsw i32 %15, 5
  %17 = load i32, i32* @break_tile, align 4
  %18 = call i32 @set_bkg_tiles(i32 %13, i32 %16, i32 3, i32 3, i32 %17)
  br label %19

19:                                               ; preds = %10, %7, %2
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 4
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %3, align 4
  %24 = icmp eq i32 %23, 5
  br i1 %24, label %25, label %37

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %4, align 4
  %27 = icmp sle i32 %26, 2
  br i1 %27, label %28, label %37

28:                                               ; preds = %25
  %29 = load i32, i32* %3, align 4
  %30 = mul nsw i32 %29, 3
  %31 = add nsw i32 %30, 2
  %32 = load i32, i32* %4, align 4
  %33 = mul nsw i32 %32, 3
  %34 = add nsw i32 %33, 5
  %35 = load i32, i32* @break_tile, align 4
  %36 = call i32 @set_bkg_tiles(i32 %31, i32 %34, i32 3, i32 3, i32 %35)
  br label %37

37:                                               ; preds = %28, %25, %22
  %38 = load i32, i32* %3, align 4
  %39 = icmp eq i32 %38, 4
  br i1 %39, label %43, label %40

40:                                               ; preds = %37
  %41 = load i32, i32* %3, align 4
  %42 = icmp eq i32 %41, 5
  br i1 %42, label %43, label %49

43:                                               ; preds = %40, %37
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 %44, 3
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* @dialing_break, align 4
  %48 = call i32 @set_bkg_tiles(i32 14, i32 14, i32 6, i32 3, i32 %47)
  br label %49

49:                                               ; preds = %46, %43, %40
  ret void
}

declare dso_local i32 @set_bkg_tiles(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
