; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_get_mouse_buttons.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/atkbdc/extr_psm.c_get_mouse_buttons.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PSMD_RES_LOW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @get_mouse_buttons to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_mouse_buttons(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [3 x i32], align 4
  store i32 %0, i32* %3, align 4
  store i32 2, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i64, i64* @PSMD_RES_LOW, align 8
  %8 = call i64 @set_mouse_resolution(i32 %6, i64 %7)
  %9 = load i64, i64* @PSMD_RES_LOW, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %39

13:                                               ; preds = %1
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @set_mouse_scaling(i32 %14, i32 1)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %37

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = call i64 @set_mouse_scaling(i32 %18, i32 1)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = call i64 @set_mouse_scaling(i32 %22, i32 1)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load i32, i32* %3, align 4
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %28 = call i32 @get_mouse_status(i32 %26, i32* %27, i32 0, i32 3)
  %29 = icmp sge i32 %28, 3
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %2, align 4
  br label %39

37:                                               ; preds = %30, %25, %21, %17, %13
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %37, %34, %11
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i64 @set_mouse_resolution(i32, i64) #1

declare dso_local i64 @set_mouse_scaling(i32, i32) #1

declare dso_local i32 @get_mouse_status(i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
