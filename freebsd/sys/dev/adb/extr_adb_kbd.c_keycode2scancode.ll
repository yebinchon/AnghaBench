; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_kbd.c_keycode2scancode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_kbd.c_keycode2scancode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@keycode2scancode.scan = internal constant [34 x i32] [i32 28, i32 29, i32 53, i32 183, i32 56, i32 71, i32 72, i32 73, i32 75, i32 77, i32 79, i32 80, i32 81, i32 82, i32 83, i32 70, i32 91, i32 92, i32 93, i32 104, i32 94, i32 95, i32 96, i32 97, i32 98, i32 99, i32 100, i32 101, i32 102, i32 103, i32 37, i32 31, i32 30, i32 32], align 16
@SCAN_PREFIX_E0 = common dso_local global i32 0, align 4
@CTLS = common dso_local global i32 0, align 4
@SCAN_PREFIX_E1 = common dso_local global i32 0, align 4
@SCAN_PREFIX_CTL = common dso_local global i32 0, align 4
@SHIFTS = common dso_local global i32 0, align 4
@SCAN_RELEASE = common dso_local global i32 0, align 4
@SCAN_PRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @keycode2scancode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keycode2scancode(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp sge i32 %9, 89
  br i1 %10, label %11, label %24

11:                                               ; preds = %3
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @nitems(i32* getelementptr inbounds ([34 x i32], [34 x i32]* @keycode2scancode.scan, i64 0, i64 0))
  %14 = add nsw i32 89, %13
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = sub nsw i32 %17, 89
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [34 x i32], [34 x i32]* @keycode2scancode.scan, i64 0, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SCAN_PREFIX_E0, align 4
  %23 = or i32 %21, %22
  store i32 %23, i32* %7, align 4
  br label %24

24:                                               ; preds = %16, %11, %3
  %25 = load i32, i32* %4, align 4
  %26 = icmp eq i32 %25, 104
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @CTLS, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @SCAN_PREFIX_E1, align 4
  %34 = or i32 69, %33
  %35 = load i32, i32* @SCAN_PREFIX_CTL, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %32, %27, %24
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @SHIFTS, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %7, align 4
  %44 = and i32 %43, -129
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %42, %37
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @SCAN_RELEASE, align 4
  br label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @SCAN_PRESS, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = or i32 %46, %54
  ret i32 %55
}

declare dso_local i32 @nitems(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
