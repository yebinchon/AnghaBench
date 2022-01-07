; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_chvgpio.c_chvgpio_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_chvgpio.c_chvgpio_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"chvgpio\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@chvgpio_hids = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"Intel Cherry View GPIO\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @chvgpio_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @chvgpio_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = call i64 @acpi_disabled(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @ENXIO, align 4
  store i32 %8, i32* %2, align 4
  br label %22

9:                                                ; preds = %1
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @device_get_parent(i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @chvgpio_hids, align 4
  %14 = call i32 @ACPI_ID_PROBE(i32 %11, i32 %12, i32 %13, i32* null)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %9
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @device_set_desc(i32 %18, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %9
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %20, %7
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i64 @acpi_disabled(i8*) #1

declare dso_local i32 @ACPI_ID_PROBE(i32, i32, i32, i32*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
