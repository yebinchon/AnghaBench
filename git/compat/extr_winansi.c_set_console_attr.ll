; ModuleID = '/home/carl/AnghaBench/git/compat/extr_winansi.c_set_console_attr.c'
source_filename = "/home/carl/AnghaBench/git/compat/extr_winansi.c_set_console_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@attr = common dso_local global i32 0, align 4
@negative = common dso_local global i64 0, align 8
@FOREGROUND_ALL = common dso_local global i32 0, align 4
@BACKGROUND_ALL = common dso_local global i32 0, align 4
@FOREGROUND_RED = common dso_local global i32 0, align 4
@BACKGROUND_RED = common dso_local global i32 0, align 4
@FOREGROUND_GREEN = common dso_local global i32 0, align 4
@BACKGROUND_GREEN = common dso_local global i32 0, align 4
@FOREGROUND_BLUE = common dso_local global i32 0, align 4
@BACKGROUND_BLUE = common dso_local global i32 0, align 4
@console = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_console_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_console_attr() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @attr, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i64, i64* @negative, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %68

5:                                                ; preds = %0
  %6 = load i32, i32* @FOREGROUND_ALL, align 4
  %7 = xor i32 %6, -1
  %8 = load i32, i32* %1, align 4
  %9 = and i32 %8, %7
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* @BACKGROUND_ALL, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %1, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %1, align 4
  %14 = load i32, i32* @attr, align 4
  %15 = load i32, i32* @FOREGROUND_RED, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %5
  %19 = load i32, i32* @BACKGROUND_RED, align 4
  %20 = load i32, i32* %1, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %18, %5
  %23 = load i32, i32* @attr, align 4
  %24 = load i32, i32* @FOREGROUND_GREEN, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32, i32* @BACKGROUND_GREEN, align 4
  %29 = load i32, i32* %1, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %1, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* @attr, align 4
  %33 = load i32, i32* @FOREGROUND_BLUE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* @BACKGROUND_BLUE, align 4
  %38 = load i32, i32* %1, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %1, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = load i32, i32* @attr, align 4
  %42 = load i32, i32* @BACKGROUND_RED, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40
  %46 = load i32, i32* @FOREGROUND_RED, align 4
  %47 = load i32, i32* %1, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %1, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load i32, i32* @attr, align 4
  %51 = load i32, i32* @BACKGROUND_GREEN, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @FOREGROUND_GREEN, align 4
  %56 = load i32, i32* %1, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %1, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32, i32* @attr, align 4
  %60 = load i32, i32* @BACKGROUND_BLUE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @FOREGROUND_BLUE, align 4
  %65 = load i32, i32* %1, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %1, align 4
  br label %67

67:                                               ; preds = %63, %58
  br label %68

68:                                               ; preds = %67, %0
  %69 = load i32, i32* @console, align 4
  %70 = load i32, i32* %1, align 4
  %71 = call i32 @SetConsoleTextAttribute(i32 %69, i32 %70)
  ret void
}

declare dso_local i32 @SetConsoleTextAttribute(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
