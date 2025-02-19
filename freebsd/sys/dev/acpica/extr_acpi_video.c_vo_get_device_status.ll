; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_video.c_vo_get_device_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_video.c_vo_get_device_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@video_output = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"_DCS\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"can't evaluate %s._DCS - %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @vo_get_device_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vo_get_device_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* @video_output, align 4
  %6 = call i32 @ACPI_SERIAL_ASSERT(i32 %5)
  store i64 0, i64* %3, align 8
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @acpi_GetInteger(i32 %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64* %3)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @ACPI_FAILURE(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = call i8* @acpi_name(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i8* @AcpiFormatException(i32 %15)
  %17 = call i32 @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %14, i8* %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load i64, i64* %3, align 8
  ret i64 %19
}

declare dso_local i32 @ACPI_SERIAL_ASSERT(i32) #1

declare dso_local i32 @acpi_GetInteger(i32, i8*, i64*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i8* @acpi_name(i32) #1

declare dso_local i8* @AcpiFormatException(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
