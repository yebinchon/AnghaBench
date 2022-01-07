; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_perf.c_acpi_perf_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_perf.c_acpi_perf_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32 }
%struct.TYPE_3__ = type { i32*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"acpi_perf\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"_PCT\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"ACPI CPU Frequency Control\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @acpi_perf_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_perf_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca %struct.TYPE_3__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %11 = call i64 @resource_disabled(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %2, align 4
  br label %60

15:                                               ; preds = %1
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @acpi_get_handle(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32* null, i32** %19, align 8
  %20 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 1
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @AcpiEvaluateObject(i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null, %struct.TYPE_3__* %7)
  %24 = call i64 @ACPI_FAILURE(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %15
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %2, align 4
  br label %60

28:                                               ; preds = %15
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %5, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @ACPI_PKG_VALID(i32* %31, i32 2)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @acpi_PkgGas(i32 %35, i32* %36, i32 0, i32* %10, i32* %9, %struct.resource** %6, i32 0)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  switch i32 %38, label %54 [
    i32 0, label %39
    i32 128, label %51
  ]

39:                                               ; preds = %34
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load %struct.resource*, %struct.resource** %6, align 8
  %44 = call i32 @bus_release_resource(i32 %40, i32 %41, i32 %42, %struct.resource* %43)
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @bus_delete_resource(i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @device_set_desc(i32 %49, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %54

51:                                               ; preds = %34
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @device_quiet(i32 %52)
  store i32 0, i32* %8, align 4
  br label %54

54:                                               ; preds = %34, %51, %39
  br label %55

55:                                               ; preds = %54, %28
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @AcpiOsFree(i32* %57)
  %59 = load i32, i32* %8, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %55, %26, %13
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @resource_disabled(i8*, i32) #1

declare dso_local i32 @acpi_get_handle(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiEvaluateObject(i32, i8*, i32*, %struct.TYPE_3__*) #1

declare dso_local i64 @ACPI_PKG_VALID(i32*, i32) #1

declare dso_local i32 @acpi_PkgGas(i32, i32*, i32, i32*, i32*, %struct.resource**, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, %struct.resource*) #1

declare dso_local i32 @bus_delete_resource(i32, i32, i32) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

declare dso_local i32 @device_quiet(i32) #1

declare dso_local i32 @AcpiOsFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
