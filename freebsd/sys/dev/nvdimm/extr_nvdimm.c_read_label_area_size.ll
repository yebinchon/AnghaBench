; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm.c_read_label_area_size.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm.c_read_label_area_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_dev = type { i8*, i8*, i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__* }

@ENODEV = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@intel_nvdimm_dsm_uuid = common dso_local global i32 0, align 4
@INTEL_NVDIMM_DSM_REV = common dso_local global i32 0, align 4
@INTEL_NVDIMM_DSM_GET_LABEL_SIZE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvdimm_dev*)* @read_label_area_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_label_area_size(%struct.nvdimm_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nvdimm_dev*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_8__, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  store %struct.nvdimm_dev* %0, %struct.nvdimm_dev** %3, align 8
  %10 = load %struct.nvdimm_dev*, %struct.nvdimm_dev** %3, align 8
  %11 = getelementptr inbounds %struct.nvdimm_dev, %struct.nvdimm_dev* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32* @nvdimm_root_get_acpi_handle(i32 %12)
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  store i32 %17, i32* %2, align 4
  br label %80

18:                                               ; preds = %1
  %19 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %21, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = load i32, i32* @INTEL_NVDIMM_DSM_REV, align 4
  %24 = load i32, i32* @INTEL_NVDIMM_DSM_GET_LABEL_SIZE, align 4
  %25 = call i32 @acpi_EvaluateDSM(i32* %22, i32* @intel_nvdimm_dsm_uuid, i32 %23, i32 %24, i32* null, %struct.TYPE_8__* %7)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i64 @ACPI_SUCCESS(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %70

30:                                               ; preds = %18
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = icmp ne %struct.TYPE_7__* %32, null
  br i1 %33, label %34, label %70

34:                                               ; preds = %30
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = icmp uge i64 %37, 24
  br i1 %38, label %39, label %70

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  store %struct.TYPE_7__* %41, %struct.TYPE_7__** %4, align 8
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %69

47:                                               ; preds = %39
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp sge i32 %51, 12
  br i1 %52, label %53, label %69

53:                                               ; preds = %47
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8**
  store i8** %58, i8*** %8, align 8
  %59 = load i8**, i8*** %8, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 1
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.nvdimm_dev*, %struct.nvdimm_dev** %3, align 8
  %63 = getelementptr inbounds %struct.nvdimm_dev, %struct.nvdimm_dev* %62, i32 0, i32 1
  store i8* %61, i8** %63, align 8
  %64 = load i8**, i8*** %8, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 2
  %66 = load i8*, i8** %65, align 8
  %67 = load %struct.nvdimm_dev*, %struct.nvdimm_dev** %3, align 8
  %68 = getelementptr inbounds %struct.nvdimm_dev, %struct.nvdimm_dev* %67, i32 0, i32 0
  store i8* %66, i8** %68, align 8
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %53, %47, %39
  br label %70

70:                                               ; preds = %69, %34, %30, %18
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = icmp ne %struct.TYPE_7__* %72, null
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = call i32 @AcpiOsFree(%struct.TYPE_7__* %76)
  br label %78

78:                                               ; preds = %74, %70
  %79 = load i32, i32* %9, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %78, %16
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32* @nvdimm_root_get_acpi_handle(i32) #1

declare dso_local i32 @acpi_EvaluateDSM(i32*, i32*, i32, i32, i32*, %struct.TYPE_8__*) #1

declare dso_local i64 @ACPI_SUCCESS(i32) #1

declare dso_local i32 @AcpiOsFree(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
