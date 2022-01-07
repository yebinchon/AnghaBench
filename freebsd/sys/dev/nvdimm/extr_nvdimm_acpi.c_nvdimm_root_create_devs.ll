; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm_acpi.c_nvdimm_root_create_devs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm_acpi.c_nvdimm_root_create_devs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"nvdimm\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to create nvdimm\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@NVDIMM_ROOT_IVAR_MAX = common dso_local global i32 0, align 4
@M_NVDIMM_ACPI = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @nvdimm_root_create_devs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvdimm_root_create_devs(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32* @acpi_get_handle(i32* %13)
  store i32* %14, i32** %6, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @acpi_nfit_get_dimm_ids(i32* %15, i32** %9, i32* %12)
  %17 = load i32*, i32** %9, align 8
  store i32* %17, i32** %10, align 8
  br label %18

18:                                               ; preds = %59, %2
  %19 = load i32*, i32** %10, align 8
  %20 = load i32*, i32** %9, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = icmp ult i32* %19, %23
  br i1 %24, label %25, label %62

25:                                               ; preds = %18
  %26 = load i32*, i32** %6, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %27, align 4
  %29 = call i32* @get_dimm_acpi_handle(i32* %26, i32 %28)
  store i32* %29, i32** %7, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %59

33:                                               ; preds = %25
  %34 = load i32*, i32** %4, align 8
  %35 = call i32* @BUS_ADD_CHILD(i32* %34, i32 100, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load i32*, i32** %4, align 8
  %40 = call i32 @device_printf(i32* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %41 = load i32, i32* @ENXIO, align 4
  store i32 %41, i32* %3, align 4
  br label %66

42:                                               ; preds = %33
  %43 = load i32, i32* @NVDIMM_ROOT_IVAR_MAX, align 4
  %44 = load i32, i32* @M_NVDIMM_ACPI, align 4
  %45 = load i32, i32* @M_ZERO, align 4
  %46 = load i32, i32* @M_WAITOK, align 4
  %47 = or i32 %45, %46
  %48 = call i64* @mallocarray(i32 %43, i32 8, i32 %44, i32 %47)
  store i64* %48, i64** %11, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = load i64*, i64** %11, align 8
  %51 = call i32 @device_set_ivars(i32* %49, i64* %50)
  %52 = load i32*, i32** %8, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 @nvdimm_root_set_acpi_handle(i32* %52, i32* %53)
  %55 = load i32*, i32** %8, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @nvdimm_root_set_device_handle(i32* %55, i32 %57)
  br label %59

59:                                               ; preds = %42, %32
  %60 = load i32*, i32** %10, align 8
  %61 = getelementptr inbounds i32, i32* %60, i32 1
  store i32* %61, i32** %10, align 8
  br label %18

62:                                               ; preds = %18
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* @M_NVDIMM_ACPI, align 4
  %65 = call i32 @free(i32* %63, i32 %64)
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %62, %38
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32* @acpi_get_handle(i32*) #1

declare dso_local i32 @acpi_nfit_get_dimm_ids(i32*, i32**, i32*) #1

declare dso_local i32* @get_dimm_acpi_handle(i32*, i32) #1

declare dso_local i32* @BUS_ADD_CHILD(i32*, i32, i8*, i32) #1

declare dso_local i32 @device_printf(i32*, i8*) #1

declare dso_local i64* @mallocarray(i32, i32, i32, i32) #1

declare dso_local i32 @device_set_ivars(i32*, i64*) #1

declare dso_local i32 @nvdimm_root_set_acpi_handle(i32*, i32*) #1

declare dso_local i32 @nvdimm_root_set_device_handle(i32*, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
