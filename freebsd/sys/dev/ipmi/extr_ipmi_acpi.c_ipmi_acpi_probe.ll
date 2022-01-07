; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_acpi.c_ipmi_acpi_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ipmi/extr_ipmi_acpi.c_ipmi_acpi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ipmi_acpi_probe.ipmi_ids = internal global [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* null], align 16
@.str = private unnamed_addr constant [8 x i8] c"IPI0001\00", align 1
@ipmi_attached = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"ipmi\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"IPMI System Interface\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipmi_acpi_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i64, i64* @ipmi_attached, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @EBUSY, align 4
  store i32 %8, i32* %2, align 4
  br label %26

9:                                                ; preds = %1
  %10 = call i64 @acpi_disabled(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %2, align 4
  br label %26

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = call i32 @device_get_parent(i32 %15)
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @ACPI_ID_PROBE(i32 %16, i32 %17, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @ipmi_acpi_probe.ipmi_ids, i64 0, i64 0), i32* null)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp sle i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_set_desc(i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %24

24:                                               ; preds = %21, %14
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %2, align 4
  br label %26

26:                                               ; preds = %24, %12, %7
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i64 @acpi_disabled(i8*) #1

declare dso_local i32 @ACPI_ID_PROBE(i32, i32, i8**, i32*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
