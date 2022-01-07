; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_timer.c_acpi_timer_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_timer.c_acpi_timer_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT32_MAX = common dso_local global i32 0, align 4
@N = common dso_local global i32 0, align 4
@vm_guest = common dso_local global i64 0, align 8
@VM_GUEST_NO = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c" %d/%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @acpi_timer_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_timer_test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = load i32, i32* @INT32_MAX, align 4
  store i32 %9, i32* %6, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %10 = call i32 (...) @intr_disable()
  store i32 %10, i32* %8, align 4
  %11 = call i32 (...) @acpi_timer_read()
  store i32 %11, i32* %1, align 4
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %42, %0
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @N, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %45

16:                                               ; preds = %12
  %17 = call i32 (...) @acpi_timer_read()
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @acpi_TimerDelta(i32 %18, i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %3, align 4
  store i32 %26, i32* %4, align 4
  br label %34

27:                                               ; preds = %16
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27
  %32 = load i32, i32* %3, align 4
  store i32 %32, i32* %5, align 4
  br label %33

33:                                               ; preds = %31, %27
  br label %34

34:                                               ; preds = %33, %24
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* %3, align 4
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %38, %34
  %41 = load i32, i32* %2, align 4
  store i32 %41, i32* %1, align 4
  br label %42

42:                                               ; preds = %40
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %12

45:                                               ; preds = %12
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @intr_restore(i32 %46)
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* %6, align 4
  %50 = sub nsw i32 %48, %49
  store i32 %50, i32* %3, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 %51, %52
  %54 = icmp sgt i32 %53, 8
  br i1 %54, label %58, label %55

55:                                               ; preds = %45
  %56 = load i32, i32* %3, align 4
  %57 = icmp sgt i32 %56, 3
  br i1 %57, label %58, label %63

58:                                               ; preds = %55, %45
  %59 = load i64, i64* @vm_guest, align 8
  %60 = load i64, i64* @VM_GUEST_NO, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  store i32 0, i32* %7, align 4
  br label %75

63:                                               ; preds = %58, %55
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %4, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %5, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %69, %66, %63
  store i32 0, i32* %7, align 4
  br label %74

73:                                               ; preds = %69
  store i32 1, i32* %7, align 4
  br label %74

74:                                               ; preds = %73, %72
  br label %75

75:                                               ; preds = %74, %62
  %76 = load i64, i64* @bootverbose, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %75
  %83 = load i32, i32* %7, align 4
  ret i32 %83
}

declare dso_local i32 @intr_disable(...) #1

declare dso_local i32 @acpi_timer_read(...) #1

declare dso_local i32 @acpi_TimerDelta(i32, i32) #1

declare dso_local i32 @intr_restore(i32) #1

declare dso_local i32 @printf(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
