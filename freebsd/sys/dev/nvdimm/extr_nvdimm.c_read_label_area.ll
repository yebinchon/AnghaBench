; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm.c_read_label_area.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvdimm/extr_nvdimm.c_read_label_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvdimm_dev = type { i64, i32, i32 }
%struct.TYPE_10__ = type { i32, i32* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_9__* }

@ENODEV = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i64 0, align 8
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@intel_nvdimm_dsm_uuid = common dso_local global i32 0, align 4
@INTEL_NVDIMM_DSM_REV = common dso_local global i32 0, align 4
@INTEL_NVDIMM_DSM_GET_LABEL_DATA = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvdimm_dev*, i32*, i64, i64)* @read_label_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_label_area(%struct.nvdimm_dev* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nvdimm_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_10__, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca %struct.TYPE_9__, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca [2 x i64], align 16
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.nvdimm_dev* %0, %struct.nvdimm_dev** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.nvdimm_dev*, %struct.nvdimm_dev** %6, align 8
  %20 = getelementptr inbounds %struct.nvdimm_dev, %struct.nvdimm_dev* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32* @nvdimm_root_get_acpi_handle(i32 %21)
  store i32* %22, i32** %11, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %39, label %25

25:                                               ; preds = %4
  %26 = load i64, i64* %9, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %9, align 8
  %31 = add nsw i64 %29, %30
  %32 = load %struct.nvdimm_dev*, %struct.nvdimm_dev** %6, align 8
  %33 = getelementptr inbounds %struct.nvdimm_dev, %struct.nvdimm_dev* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %31, %34
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load i32*, i32** %11, align 8
  %38 = icmp eq i32* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36, %28, %25, %4
  %40 = load i32, i32* @ENODEV, align 4
  store i32 %40, i32* %5, align 4
  br label %162

41:                                               ; preds = %36
  %42 = load i64, i64* @ACPI_TYPE_PACKAGE, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store i64 %42, i64* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %47, align 8
  %48 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  store i64 %48, i64* %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  store i32 16, i32* %51, align 8
  %52 = getelementptr inbounds [2 x i64], [2 x i64]* %16, i64 0, i64 0
  %53 = bitcast i64* %52 to i32*
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  store i32* %53, i32** %55, align 8
  br label %56

56:                                               ; preds = %151, %41
  %57 = load i64, i64* %9, align 8
  %58 = icmp sgt i64 %57, 0
  br i1 %58, label %59, label %152

59:                                               ; preds = %56
  %60 = load i64, i64* %9, align 8
  %61 = load %struct.nvdimm_dev*, %struct.nvdimm_dev** %6, align 8
  %62 = getelementptr inbounds %struct.nvdimm_dev, %struct.nvdimm_dev* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i64 @MIN(i64 %60, i32 %63)
  store i64 %64, i64* %17, align 8
  %65 = load i64, i64* %8, align 8
  %66 = getelementptr inbounds [2 x i64], [2 x i64]* %16, i64 0, i64 0
  store i64 %65, i64* %66, align 16
  %67 = load i64, i64* %17, align 8
  %68 = getelementptr inbounds [2 x i64], [2 x i64]* %16, i64 0, i64 1
  store i64 %67, i64* %68, align 8
  %69 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  store i32 %69, i32* %70, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  store i32* null, i32** %71, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = load i32, i32* @INTEL_NVDIMM_DSM_REV, align 4
  %74 = load i32, i32* @INTEL_NVDIMM_DSM_GET_LABEL_DATA, align 4
  %75 = call i32 @acpi_EvaluateDSM(i32* %72, i32* @intel_nvdimm_dsm_uuid, i32 %73, i32 %74, %struct.TYPE_9__* %12, %struct.TYPE_10__* %10)
  store i32 %75, i32* %15, align 4
  %76 = load i32, i32* %15, align 4
  %77 = call i64 @ACPI_FAILURE(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %88, label %79

79:                                               ; preds = %59
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = sext i32 %81 to i64
  %83 = icmp ult i64 %82, 40
  br i1 %83, label %88, label %84

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, null
  br i1 %87, label %88, label %90

88:                                               ; preds = %84, %79, %59
  %89 = load i32, i32* @ENXIO, align 4
  store i32 %89, i32* %18, align 4
  br label %152

90:                                               ; preds = %84
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = bitcast i32* %92 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %93, %struct.TYPE_9__** %14, align 8
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %123, label %99

99:                                               ; preds = %90
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 1
  %103 = load i32*, i32** %102, align 8
  %104 = icmp eq i32* %103, null
  br i1 %104, label %123, label %105

105:                                              ; preds = %99
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = sext i32 %109 to i64
  %111 = load i64, i64* %17, align 8
  %112 = add nsw i64 4, %111
  %113 = icmp ne i64 %110, %112
  br i1 %113, label %123, label %114

114:                                              ; preds = %105
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 1
  %118 = load i32*, i32** %117, align 8
  %119 = bitcast i32* %118 to i64*
  %120 = getelementptr inbounds i64, i64* %119, i64 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %114, %105, %99, %90
  %124 = load i32, i32* @ENXIO, align 4
  store i32 %124, i32* %18, align 4
  br label %152

125:                                              ; preds = %114
  %126 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 4
  %131 = load i32*, i32** %7, align 8
  %132 = load i64, i64* %17, align 8
  %133 = call i32 @bcopy(i32* %130, i32* %131, i64 %132)
  %134 = load i64, i64* %17, align 8
  %135 = load i32*, i32** %7, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 %134
  store i32* %136, i32** %7, align 8
  %137 = load i64, i64* %17, align 8
  %138 = load i64, i64* %8, align 8
  %139 = add nsw i64 %138, %137
  store i64 %139, i64* %8, align 8
  %140 = load i64, i64* %17, align 8
  %141 = load i64, i64* %9, align 8
  %142 = sub nsw i64 %141, %140
  store i64 %142, i64* %9, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %151

146:                                              ; preds = %125
  %147 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %148 = load i32*, i32** %147, align 8
  %149 = call i32 @AcpiOsFree(i32* %148)
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  store i32* null, i32** %150, align 8
  br label %151

151:                                              ; preds = %146, %125
  br label %56

152:                                              ; preds = %123, %88, %56
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %154 = load i32*, i32** %153, align 8
  %155 = icmp ne i32* %154, null
  br i1 %155, label %156, label %160

156:                                              ; preds = %152
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = call i32 @AcpiOsFree(i32* %158)
  br label %160

160:                                              ; preds = %156, %152
  %161 = load i32, i32* %18, align 4
  store i32 %161, i32* %5, align 4
  br label %162

162:                                              ; preds = %160, %39
  %163 = load i32, i32* %5, align 4
  ret i32 %163
}

declare dso_local i32* @nvdimm_root_get_acpi_handle(i32) #1

declare dso_local i64 @MIN(i64, i32) #1

declare dso_local i32 @acpi_EvaluateDSM(i32*, i32*, i32, i32, %struct.TYPE_9__*, %struct.TYPE_10__*) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i64) #1

declare dso_local i32 @AcpiOsFree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
