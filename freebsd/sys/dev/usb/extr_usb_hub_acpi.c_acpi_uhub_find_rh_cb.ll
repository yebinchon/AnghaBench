; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub_acpi.c_acpi_uhub_find_rh_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub_acpi.c_acpi_uhub_find_rh_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@ACPI_VALID_ADR = common dso_local global i32 0, align 4
@AE_CTRL_TERMINATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*, i8**)* @acpi_uhub_find_rh_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_uhub_find_rh_cb(i8* %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i8** %3, i8*** %8, align 8
  %11 = load i8**, i8*** %8, align 8
  store i8* null, i8** %11, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %9, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i32 @AcpiGetObjectInfo(i8* %12, %struct.TYPE_4__** %9)
  store i32 %13, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = call i64 @ACPI_SUCCESS(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %36

17:                                               ; preds = %4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @ACPI_VALID_ADR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load i32, i32* @AE_CTRL_TERMINATE, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = load i8**, i8*** %8, align 8
  store i8* %31, i8** %32, align 8
  br label %33

33:                                               ; preds = %29, %24, %17
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %35 = call i32 @AcpiOsFree(%struct.TYPE_4__* %34)
  br label %36

36:                                               ; preds = %33, %4
  %37 = load i32, i32* %10, align 4
  ret i32 %37
}

declare dso_local i32 @AcpiGetObjectInfo(i8*, %struct.TYPE_4__**) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @AcpiOsFree(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
