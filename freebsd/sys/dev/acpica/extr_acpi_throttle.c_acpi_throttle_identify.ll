; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_throttle.c_acpi_throttle_identify.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/acpica/extr_acpi_throttle.c_acpi_throttle_identify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }

@.str = private unnamed_addr constant [14 x i8] c"acpi_throttle\00", align 1
@AcpiGbl_FADT = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@ACPI_TYPE_PROCESSOR = common dso_local global i64 0, align 8
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"_PTC\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"add throttle child failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @acpi_throttle_identify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @acpi_throttle_identify(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i64 @device_find_child(i32 %8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 -1)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %67

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = call i32* @acpi_get_handle(i32 %13)
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  br label %67

18:                                               ; preds = %12
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @AcpiGbl_FADT, i32 0, i32 0), align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @acpi_get_type(i32 %22)
  %24 = load i64, i64* @ACPI_TYPE_PROCESSOR, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %18
  br label %67

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 1
  store i32 %29, i32* %30, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @AcpiEvaluateObject(i32* %31, i8* null, i32* null, %struct.TYPE_9__* %5)
  %33 = call i64 @ACPI_FAILURE(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  br label %67

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = bitcast i32* %38 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %7, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %36
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp sge i32 %49, 4
  br i1 %50, label %56, label %51

51:                                               ; preds = %45, %36
  %52 = load i32*, i32** %6, align 8
  %53 = call i32 @AcpiEvaluateObject(i32* %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* null, %struct.TYPE_9__* null)
  %54 = call i64 @ACPI_SUCCESS(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %51, %45
  %57 = load i32, i32* %4, align 4
  %58 = call i32* @BUS_ADD_CHILD(i32 %57, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 -1)
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %56
  br label %64

64:                                               ; preds = %63, %51
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %66 = call i32 @AcpiOsFree(%struct.TYPE_8__* %65)
  br label %67

67:                                               ; preds = %64, %35, %26, %17, %11
  ret void
}

declare dso_local i64 @device_find_child(i32, i8*, i32) #1

declare dso_local i32* @acpi_get_handle(i32) #1

declare dso_local i64 @acpi_get_type(i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @AcpiEvaluateObject(i32*, i8*, i32*, %struct.TYPE_9__*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32* @BUS_ADD_CHILD(i32, i32, i8*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @AcpiOsFree(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
