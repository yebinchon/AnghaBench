; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_timer.c_acpi_timer_boot_test.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_timer.c_acpi_timer_boot_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@acpi_timer_dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"timer test in progress, reboot to quit.\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"timer is not monotonic: 0x%08x,0x%08x,0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @acpi_timer_boot_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_timer_boot_test() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = call i64 (...) @acpi_timer_read()
  store i64 %4, i64* %1, align 8
  %5 = call i64 (...) @acpi_timer_read()
  store i64 %5, i64* %2, align 8
  %6 = call i64 (...) @acpi_timer_read()
  store i64 %6, i64* %3, align 8
  %7 = load i32, i32* @acpi_timer_dev, align 4
  %8 = call i32 (i32, i8*, ...) @device_printf(i32 %7, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %9

9:                                                ; preds = %28, %0
  %10 = load i64, i64* %3, align 8
  %11 = load i64, i64* %1, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %13, label %28

13:                                               ; preds = %9
  %14 = load i64, i64* %2, align 8
  %15 = load i64, i64* %1, align 8
  %16 = icmp slt i64 %14, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load i64, i64* %2, align 8
  %19 = load i64, i64* %3, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %17, %13
  %22 = load i32, i32* @acpi_timer_dev, align 4
  %23 = load i64, i64* %1, align 8
  %24 = load i64, i64* %2, align 8
  %25 = load i64, i64* %3, align 8
  %26 = call i32 (i32, i8*, ...) @device_printf(i32 %22, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i64 %23, i64 %24, i64 %25)
  br label %27

27:                                               ; preds = %21, %17
  br label %28

28:                                               ; preds = %27, %9
  %29 = load i64, i64* %2, align 8
  store i64 %29, i64* %1, align 8
  %30 = load i64, i64* %3, align 8
  store i64 %30, i64* %2, align 8
  %31 = call i64 (...) @acpi_timer_read()
  store i64 %31, i64* %3, align 8
  br label %9
}

declare dso_local i64 @acpi_timer_read(...) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
