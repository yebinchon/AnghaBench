; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_fcoe_post_hdr_templates.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_fcoe_post_hdr_templates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i64* }
%struct.TYPE_20__ = type { i64, i64, i32 }
%struct.TYPE_19__ = type { i32, %struct.TYPE_17__*, i64, %struct.TYPE_16__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32 }

@SLI_PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"mailbox payload memory allocation fail\0A\00", align 1
@UINT16_MAX = common dso_local global i64 0, align 8
@SLI_RSRC_FCOE_RPI = common dso_local global i64 0, align 8
@SLI4_OPC_FCOE_POST_HDR_TEMPLATES = common dso_local global i32 0, align 4
@SLI4_SUBSYSTEM_FCFCOE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_cmd_fcoe_post_hdr_templates(%struct.TYPE_18__* %0, i8* %1, i64 %2, %struct.TYPE_20__* %3, i64 %4, %struct.TYPE_20__* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_20__*, align 8
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.TYPE_20__* %3, %struct.TYPE_20__** %11, align 8
  store i64 %4, i64* %12, align 8
  store %struct.TYPE_20__* %5, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %14, align 8
  store i32 0, i32* %15, align 4
  store i64 0, i64* %16, align 8
  store i32 0, i32* %17, align 4
  %20 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %21 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load i64, i64* @SLI_PAGE_SIZE, align 8
  %24 = call i32 @sli_page_count(i32 %22, i64 %23)
  store i32 %24, i32* %18, align 4
  %25 = load i32, i32* %18, align 4
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 4
  %28 = add i64 40, %27
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %19, align 4
  %30 = load i32, i32* %18, align 4
  %31 = icmp sgt i32 %30, 16
  br i1 %31, label %32, label %56

32:                                               ; preds = %6
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %37 = load i32, i32* %19, align 4
  %38 = call i64 @ocs_dma_alloc(i32 %35, %struct.TYPE_20__* %36, i32 %37, i32 4)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %32
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ocs_log_err(i32 %43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %139

45:                                               ; preds = %32
  %46 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i32, i32* %19, align 4
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %51 = call i32 @sli_cmd_sli_config(%struct.TYPE_18__* %46, i8* %47, i64 %48, i32 %49, %struct.TYPE_20__* %50)
  store i32 %51, i32* %15, align 4
  %52 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %55, %struct.TYPE_19__** %14, align 8
  br label %68

56:                                               ; preds = %6
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load i32, i32* %19, align 4
  %61 = call i32 @sli_cmd_sli_config(%struct.TYPE_18__* %57, i8* %58, i64 %59, i32 %60, %struct.TYPE_20__* null)
  store i32 %61, i32* %15, align 4
  %62 = load i8*, i8** %9, align 8
  %63 = bitcast i8* %62 to i32*
  %64 = load i32, i32* %15, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = bitcast i32* %66 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %67, %struct.TYPE_19__** %14, align 8
  br label %68

68:                                               ; preds = %56, %45
  %69 = load i64, i64* @UINT16_MAX, align 8
  %70 = load i64, i64* %12, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %83

72:                                               ; preds = %68
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = load i64, i64* @SLI_RSRC_FCOE_RPI, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i64*, i64** %79, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %12, align 8
  br label %83

83:                                               ; preds = %72, %68
  %84 = load i32, i32* @SLI4_OPC_FCOE_POST_HDR_TEMPLATES, align 4
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 3
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 2
  store i32 %84, i32* %87, align 8
  %88 = load i32, i32* @SLI4_SUBSYSTEM_FCFCOE, align 4
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %90, i32 0, i32 1
  store i32 %88, i32* %91, align 4
  %92 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 0
  store i32 36, i32* %94, align 8
  %95 = load i64, i64* %12, align 8
  %96 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %96, i32 0, i32 2
  store i64 %95, i64* %97, align 8
  %98 = load i32, i32* %18, align 4
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %102 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %16, align 8
  store i32 0, i32* %17, align 4
  br label %104

104:                                              ; preds = %132, %83
  %105 = load i32, i32* %17, align 4
  %106 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %135

110:                                              ; preds = %104
  %111 = load i64, i64* %16, align 8
  %112 = call i32 @ocs_addr32_lo(i64 %111)
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %114, align 8
  %116 = load i32, i32* %17, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %118, i32 0, i32 1
  store i32 %112, i32* %119, align 4
  %120 = load i64, i64* %16, align 8
  %121 = call i32 @ocs_addr32_hi(i64 %120)
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_17__*, %struct.TYPE_17__** %123, align 8
  %125 = load i32, i32* %17, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 0
  store i32 %121, i32* %128, align 4
  %129 = load i64, i64* @SLI_PAGE_SIZE, align 8
  %130 = load i64, i64* %16, align 8
  %131 = add i64 %130, %129
  store i64 %131, i64* %16, align 8
  br label %132

132:                                              ; preds = %110
  %133 = load i32, i32* %17, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %17, align 4
  br label %104

135:                                              ; preds = %104
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %19, align 4
  %138 = add nsw i32 %136, %137
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %135, %40
  %140 = load i32, i32* %7, align 4
  ret i32 %140
}

declare dso_local i32 @sli_page_count(i32, i64) #1

declare dso_local i64 @ocs_dma_alloc(i32, %struct.TYPE_20__*, i32, i32) #1

declare dso_local i32 @ocs_log_err(i32, i8*) #1

declare dso_local i32 @sli_cmd_sli_config(%struct.TYPE_18__*, i8*, i64, i32, %struct.TYPE_20__*) #1

declare dso_local i32 @ocs_addr32_lo(i64) #1

declare dso_local i32 @ocs_addr32_hi(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
