; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_drv.c_dmar_inst_rmrr_iter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/iommu/extr_intel_drv.c_dmar_inst_rmrr_iter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i64, i64, i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32, i64, i32 }
%struct.inst_rmrr_iter_args = type { %struct.dmar_unit* }
%struct.dmar_unit = type { i64, i32 }

@ACPI_DMAR_TYPE_RESERVED_MEMORY = common dso_local global i64 0, align 8
@ACPI_DMAR_SCOPE_TYPE_ENDPOINT = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"dmar%d no dev found for RMRR [%#jx, %#jx] rid %#x scope path \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*)* @dmar_inst_rmrr_iter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dmar_inst_rmrr_iter(%struct.TYPE_8__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.inst_rmrr_iter_args*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.dmar_unit*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store i8* %1, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = bitcast i8* %15 to %struct.inst_rmrr_iter_args*
  store %struct.inst_rmrr_iter_args* %16, %struct.inst_rmrr_iter_args** %8, align 8
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ACPI_DMAR_TYPE_RESERVED_MEMORY, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %168

23:                                               ; preds = %2
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %25 = bitcast %struct.TYPE_8__* %24 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %6, align 8
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.inst_rmrr_iter_args*, %struct.inst_rmrr_iter_args** %8, align 8
  %30 = getelementptr inbounds %struct.inst_rmrr_iter_args, %struct.inst_rmrr_iter_args* %29, i32 0, i32 0
  %31 = load %struct.dmar_unit*, %struct.dmar_unit** %30, align 8
  %32 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %28, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  store i32 1, i32* %3, align 4
  br label %168

36:                                               ; preds = %23
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %38 = bitcast %struct.TYPE_7__* %37 to i8*
  %39 = getelementptr inbounds i8, i8* %38, i64 32
  store i8* %39, i8** %9, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %41 = bitcast %struct.TYPE_7__* %40 to i8*
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %41, i64 %46
  store i8* %47, i8** %10, align 8
  br label %48

48:                                               ; preds = %166, %159, %134, %67, %36
  %49 = load i8*, i8** %9, align 8
  %50 = load i8*, i8** %10, align 8
  %51 = icmp uge i8* %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %167

53:                                               ; preds = %48
  %54 = load i8*, i8** %9, align 8
  %55 = bitcast i8* %54 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %55, %struct.TYPE_9__** %7, align 8
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i8*, i8** %9, align 8
  %60 = sext i32 %58 to i64
  %61 = getelementptr inbounds i8, i8* %59, i64 %60
  store i8* %61, i8** %9, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @ACPI_DMAR_SCOPE_TYPE_ENDPOINT, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %53
  br label %48

68:                                               ; preds = %53
  store i64 0, i64* %14, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = sext i32 %71 to i64
  %73 = sub i64 %72, 24
  %74 = udiv i64 %73, 2
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %13, align 4
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %13, align 4
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i64 1
  %85 = bitcast %struct.TYPE_9__* %84 to i32*
  %86 = call i32* @dmar_path_dev(i64 %78, i32 %79, i32 %82, i32* %85, i64* %14)
  store i32* %86, i32** %11, align 8
  %87 = load i32*, i32** %11, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %151

89:                                               ; preds = %68
  %90 = load i64, i64* @bootverbose, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %117

92:                                               ; preds = %89
  %93 = load %struct.inst_rmrr_iter_args*, %struct.inst_rmrr_iter_args** %8, align 8
  %94 = getelementptr inbounds %struct.inst_rmrr_iter_args, %struct.inst_rmrr_iter_args* %93, i32 0, i32 0
  %95 = load %struct.dmar_unit*, %struct.dmar_unit** %94, align 8
  %96 = getelementptr inbounds %struct.dmar_unit, %struct.dmar_unit* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = trunc i64 %100 to i32
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = trunc i64 %104 to i32
  %106 = load i64, i64* %14, align 8
  %107 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %101, i32 %105, i64 %106)
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %13, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i64 1
  %114 = bitcast %struct.TYPE_9__* %113 to i32*
  %115 = call i32 @dmar_print_path(i32 %110, i32 %111, i32* %114)
  %116 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  br label %117

117:                                              ; preds = %92, %89
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i64 1
  %126 = bitcast %struct.TYPE_9__* %125 to i32*
  %127 = load i32, i32* %13, align 4
  %128 = call %struct.dmar_unit* @dmar_find_by_scope(i64 %120, i32 %123, i32* %126, i32 %127)
  store %struct.dmar_unit* %128, %struct.dmar_unit** %12, align 8
  %129 = load %struct.inst_rmrr_iter_args*, %struct.inst_rmrr_iter_args** %8, align 8
  %130 = getelementptr inbounds %struct.inst_rmrr_iter_args, %struct.inst_rmrr_iter_args* %129, i32 0, i32 0
  %131 = load %struct.dmar_unit*, %struct.dmar_unit** %130, align 8
  %132 = load %struct.dmar_unit*, %struct.dmar_unit** %12, align 8
  %133 = icmp ne %struct.dmar_unit* %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %117
  br label %48

135:                                              ; preds = %117
  %136 = load %struct.inst_rmrr_iter_args*, %struct.inst_rmrr_iter_args** %8, align 8
  %137 = getelementptr inbounds %struct.inst_rmrr_iter_args, %struct.inst_rmrr_iter_args* %136, i32 0, i32 0
  %138 = load %struct.dmar_unit*, %struct.dmar_unit** %137, align 8
  %139 = load i64, i64* %14, align 8
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i64 1
  %148 = bitcast %struct.TYPE_9__* %147 to i32*
  %149 = load i32, i32* %13, align 4
  %150 = call i32 @dmar_get_ctx_for_devpath(%struct.dmar_unit* %138, i64 %139, i64 %142, i32 %145, i32* %148, i32 %149, i32 0, i32 1)
  br label %166

151:                                              ; preds = %68
  %152 = load i32*, i32** %11, align 8
  %153 = call %struct.dmar_unit* @dmar_find(i32* %152, i32 0)
  store %struct.dmar_unit* %153, %struct.dmar_unit** %12, align 8
  %154 = load %struct.inst_rmrr_iter_args*, %struct.inst_rmrr_iter_args** %8, align 8
  %155 = getelementptr inbounds %struct.inst_rmrr_iter_args, %struct.inst_rmrr_iter_args* %154, i32 0, i32 0
  %156 = load %struct.dmar_unit*, %struct.dmar_unit** %155, align 8
  %157 = load %struct.dmar_unit*, %struct.dmar_unit** %12, align 8
  %158 = icmp ne %struct.dmar_unit* %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %151
  br label %48

160:                                              ; preds = %151
  %161 = load %struct.inst_rmrr_iter_args*, %struct.inst_rmrr_iter_args** %8, align 8
  %162 = getelementptr inbounds %struct.inst_rmrr_iter_args, %struct.inst_rmrr_iter_args* %161, i32 0, i32 0
  %163 = load %struct.dmar_unit*, %struct.dmar_unit** %162, align 8
  %164 = load i32*, i32** %11, align 8
  %165 = call i32 @dmar_instantiate_ctx(%struct.dmar_unit* %163, i32* %164, i32 1)
  br label %166

166:                                              ; preds = %160, %135
  br label %48

167:                                              ; preds = %52
  store i32 1, i32* %3, align 4
  br label %168

168:                                              ; preds = %167, %35, %22
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32* @dmar_path_dev(i64, i32, i32, i32*, i64*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @dmar_print_path(i32, i32, i32*) #1

declare dso_local %struct.dmar_unit* @dmar_find_by_scope(i64, i32, i32*, i32) #1

declare dso_local i32 @dmar_get_ctx_for_devpath(%struct.dmar_unit*, i64, i64, i32, i32*, i32, i32, i32) #1

declare dso_local %struct.dmar_unit* @dmar_find(i32*, i32) #1

declare dso_local i32 @dmar_instantiate_ctx(%struct.dmar_unit*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
