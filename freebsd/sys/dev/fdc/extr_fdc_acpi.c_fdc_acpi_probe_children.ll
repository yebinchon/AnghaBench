; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc_acpi.c_fdc_acpi_probe_children.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fdc/extr_fdc_acpi.c_fdc_acpi_probe_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fdc_walk_ctx = type { i64*, i8*, i8*, i64 }

@M_TEMP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"no memory for walking children\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@fdc_acpi_probe_child = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"fd\00", align 1
@ACPI_FDC_MAXDEVS = common dso_local global i32 0, align 4
@ACPI_FD_PRESENT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"fd add failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @fdc_acpi_probe_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdc_acpi_probe_children(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.fdc_walk_ctx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32, i32* @M_TEMP, align 4
  %12 = load i32, i32* @M_NOWAIT, align 4
  %13 = call %struct.fdc_walk_ctx* @malloc(i32 32, i32 %11, i32 %12)
  store %struct.fdc_walk_ctx* %13, %struct.fdc_walk_ctx** %8, align 8
  %14 = load %struct.fdc_walk_ctx*, %struct.fdc_walk_ctx** %8, align 8
  %15 = icmp eq %struct.fdc_walk_ctx* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = call i32 @device_printf(i8* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @ENOMEM, align 4
  store i32 %19, i32* %4, align 4
  br label %80

20:                                               ; preds = %3
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.fdc_walk_ctx*, %struct.fdc_walk_ctx** %8, align 8
  %23 = getelementptr inbounds %struct.fdc_walk_ctx, %struct.fdc_walk_ctx* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = call i32 @bcopy(i8* %21, i64* %24, i32 8)
  %26 = load %struct.fdc_walk_ctx*, %struct.fdc_walk_ctx** %8, align 8
  %27 = getelementptr inbounds %struct.fdc_walk_ctx, %struct.fdc_walk_ctx* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load %struct.fdc_walk_ctx*, %struct.fdc_walk_ctx** %8, align 8
  %30 = getelementptr inbounds %struct.fdc_walk_ctx, %struct.fdc_walk_ctx* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.fdc_walk_ctx*, %struct.fdc_walk_ctx** %8, align 8
  %33 = getelementptr inbounds %struct.fdc_walk_ctx, %struct.fdc_walk_ctx* %32, i32 0, i32 1
  store i8* %31, i8** %33, align 8
  %34 = load %struct.fdc_walk_ctx*, %struct.fdc_walk_ctx** %8, align 8
  %35 = getelementptr inbounds %struct.fdc_walk_ctx, %struct.fdc_walk_ctx* %34, i32 0, i32 1
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %6, align 8
  %38 = load i32, i32* @fdc_acpi_probe_child, align 4
  %39 = load %struct.fdc_walk_ctx*, %struct.fdc_walk_ctx** %8, align 8
  %40 = call i32 @ACPI_SCAN_CHILDREN(i8* %36, i8* %37, i32 1, i32 %38, %struct.fdc_walk_ctx* %39)
  %41 = call i32 @devclass_find(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32 %41, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %42

42:                                               ; preds = %71, %20
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @ACPI_FDC_MAXDEVS, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %74

46:                                               ; preds = %42
  %47 = load %struct.fdc_walk_ctx*, %struct.fdc_walk_ctx** %8, align 8
  %48 = getelementptr inbounds %struct.fdc_walk_ctx, %struct.fdc_walk_ctx* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @ACPI_FD_PRESENT, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %46
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32* @devclass_get_device(i32 %57, i32 %58)
  %60 = icmp eq i32* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %56
  %62 = load i8*, i8** %6, align 8
  %63 = load i32, i32* %10, align 4
  %64 = call i32* @fdc_add_child(i8* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = icmp eq i32* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %61
  %67 = load i8*, i8** %6, align 8
  %68 = call i32 @device_printf(i8* %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %69

69:                                               ; preds = %66, %61
  br label %70

70:                                               ; preds = %69, %56, %46
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %42

74:                                               ; preds = %42
  %75 = load %struct.fdc_walk_ctx*, %struct.fdc_walk_ctx** %8, align 8
  %76 = load i32, i32* @M_TEMP, align 4
  %77 = call i32 @free(%struct.fdc_walk_ctx* %75, i32 %76)
  %78 = load i8*, i8** %6, align 8
  %79 = call i32 @bus_generic_attach(i8* %78)
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %74, %16
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.fdc_walk_ctx* @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i8*, i8*) #1

declare dso_local i32 @bcopy(i8*, i64*, i32) #1

declare dso_local i32 @ACPI_SCAN_CHILDREN(i8*, i8*, i32, i32, %struct.fdc_walk_ctx*) #1

declare dso_local i32 @devclass_find(i8*) #1

declare dso_local i32* @devclass_get_device(i32, i32) #1

declare dso_local i32* @fdc_add_child(i8*, i8*, i32) #1

declare dso_local i32 @free(%struct.fdc_walk_ctx*, i32) #1

declare dso_local i32 @bus_generic_attach(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
