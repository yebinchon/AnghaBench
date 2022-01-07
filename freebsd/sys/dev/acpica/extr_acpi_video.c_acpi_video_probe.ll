; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_video.c_acpi_video_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_video.c_acpi_video_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [6 x i8] c"video\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"_DOD\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"_DOS\00", align 1
@ACPI_TYPE_METHOD = common dso_local global i64 0, align 8
@ENXIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"ACPI video extension\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @acpi_video_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_video_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @acpi_get_handle(i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = call i64 @acpi_disabled(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %30, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @AcpiGetHandle(i32 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %5)
  %14 = call i64 @ACPI_FAILURE(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @AcpiGetHandle(i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32* %5)
  %19 = call i64 @ACPI_FAILURE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %30, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @AcpiGetType(i32 %22, i64* %6)
  %24 = call i64 @ACPI_FAILURE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @ACPI_TYPE_METHOD, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26, %21, %16, %11, %1
  %31 = load i32, i32* @ENXIO, align 4
  store i32 %31, i32* %2, align 4
  br label %35

32:                                               ; preds = %26
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @device_set_desc(i32 %33, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %32, %30
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @acpi_get_handle(i32) #1

declare dso_local i64 @acpi_disabled(i8*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiGetHandle(i32, i8*, i32*) #1

declare dso_local i32 @AcpiGetType(i32, i64*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
