; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_get_def_wwn.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_get_def_wwn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__, %struct.TYPE_19__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_23__ = type { i32* }

@SLI_RSRC_FCOE_VPI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"Failed to allocate DMA memory\0A\00", align 1
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"READ_SPARM64 allocation failure\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"READ_SPARM64 command failure\0A\00", align 1
@SLI4_READ_SPARM64_WWPN_OFFSET = common dso_local global i32 0, align 4
@SLI4_READ_SPARM64_WWNN_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocs_hw_get_def_wwn(%struct.TYPE_22__* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_21__*, align 8
  %11 = alloca %struct.TYPE_23__, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  store %struct.TYPE_21__* %16, %struct.TYPE_21__** %10, align 8
  store i32* null, i32** %12, align 8
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %19, align 8
  %21 = load i64, i64* @SLI_RSRC_FCOE_VPI, align 8
  %22 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %13, align 4
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %30 = call i64 @ocs_dma_alloc(%struct.TYPE_22__* %29, %struct.TYPE_23__* %11, i32 112, i32 4)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %4
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %34 = call i32 @ocs_log_err(%struct.TYPE_22__* %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %76

35:                                               ; preds = %4
  %36 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %37 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %42 = load i32, i32* %13, align 4
  %43 = call i64 @sli_cmd_read_sparm64(%struct.TYPE_21__* %36, i32 %40, i32 %41, %struct.TYPE_23__* %11, i32 %42)
  %44 = icmp eq i64 0, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %35
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %47 = call i32 @ocs_log_err(%struct.TYPE_22__* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %49 = call i32 @ocs_dma_free(%struct.TYPE_22__* %48, %struct.TYPE_23__* %11)
  store i32 1, i32* %5, align 4
  br label %76

50:                                               ; preds = %35
  %51 = load %struct.TYPE_21__*, %struct.TYPE_21__** %10, align 8
  %52 = call i64 @sli_bmbx_command(%struct.TYPE_21__* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %50
  %55 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %56 = call i32 @ocs_log_err(%struct.TYPE_22__* %55, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %58 = call i32 @ocs_dma_free(%struct.TYPE_22__* %57, %struct.TYPE_23__* %11)
  store i32 1, i32* %5, align 4
  br label %76

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %12, align 8
  %62 = load i32*, i32** %8, align 8
  %63 = load i32*, i32** %12, align 8
  %64 = load i32, i32* @SLI4_READ_SPARM64_WWPN_OFFSET, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = call i32 @ocs_memcpy(i32* %62, i32* %66, i32 4)
  %68 = load i32*, i32** %9, align 8
  %69 = load i32*, i32** %12, align 8
  %70 = load i32, i32* @SLI4_READ_SPARM64_WWNN_OFFSET, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = call i32 @ocs_memcpy(i32* %68, i32* %72, i32 4)
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %75 = call i32 @ocs_dma_free(%struct.TYPE_22__* %74, %struct.TYPE_23__* %11)
  store i32 0, i32* %5, align 4
  br label %76

76:                                               ; preds = %59, %54, %45, %32
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i64 @ocs_dma_alloc(%struct.TYPE_22__*, %struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @ocs_log_err(%struct.TYPE_22__*, i8*) #1

declare dso_local i64 @sli_cmd_read_sparm64(%struct.TYPE_21__*, i32, i32, %struct.TYPE_23__*, i32) #1

declare dso_local i32 @ocs_dma_free(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i64 @sli_bmbx_command(%struct.TYPE_21__*) #1

declare dso_local i32 @ocs_memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
