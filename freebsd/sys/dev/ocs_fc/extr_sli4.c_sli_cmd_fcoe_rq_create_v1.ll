; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_fcoe_rq_create_v1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_fcoe_rq_create_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_14__ = type { i64, i32, %struct.TYPE_12__*, i64, i64, i32, i32, i32, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@SLI4_PORT_TYPE_FC = common dso_local global i64 0, align 8
@SLI4_OPC_FCOE_RQ_CREATE = common dso_local global i32 0, align 4
@SLI4_SUBSYSTEM_FCFCOE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SLI_PAGE_SIZE = common dso_local global i64 0, align 8
@SLI4_FCOE_RQ_CREATE_V1_MAX_PAGES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"num_pages %d not valid, max %d\0A\00", align 1
@SLI4_FCOE_RQE_SIZE = common dso_local global i32 0, align 4
@SLI4_FCOE_RQE_SIZE_8 = common dso_local global i32 0, align 4
@SLI4_FCOE_RQ_PAGE_SIZE_4096 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"buffer_size %d out of range (%d-%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_cmd_fcoe_rq_create_v1(%struct.TYPE_13__* %0, i8* %1, i64 %2, %struct.TYPE_15__* %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_15__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_14__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i64 %2, i64* %11, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64 %6, i64* %15, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %16, align 8
  store i32 0, i32* %17, align 4
  %21 = load i64, i64* @SLI4_PORT_TYPE_FC, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %7
  %27 = call i32 @max(i32 72, i32 4)
  store i32 %27, i32* %20, align 4
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i32, i32* %20, align 4
  %32 = call i32 @sli_cmd_sli_config(%struct.TYPE_13__* %28, i8* %29, i64 %30, i32 %31, i32* null)
  store i32 %32, i32* %17, align 4
  br label %33

33:                                               ; preds = %26, %7
  %34 = load i8*, i8** %10, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load i32, i32* %17, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = bitcast i32* %38 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %39, %struct.TYPE_14__** %16, align 8
  %40 = load i32, i32* @SLI4_OPC_FCOE_RQ_CREATE, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 3
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @SLI4_SUBSYSTEM_FCFCOE, align 4
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  store i32 %44, i32* %47, align 4
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  store i32 68, i32* %50, align 4
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  %54 = load i32, i32* @TRUE, align 4
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* @SLI_PAGE_SIZE, align 8
  %61 = call i64 @sli_page_count(i32 %59, i64 %60)
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 0
  store i64 %61, i64* %63, align 8
  %64 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %33
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SLI4_FCOE_RQ_CREATE_V1_MAX_PAGES, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %68, %33
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SLI4_FCOE_RQ_CREATE_V1_MAX_PAGES, align 8
  %82 = call i32 @ocs_log_test(i32 %77, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %80, i64 %81)
  store i32 0, i32* %8, align 4
  br label %171

83:                                               ; preds = %68
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @SLI4_FCOE_RQE_SIZE, align 4
  %88 = sdiv i32 %86, %87
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  %91 = load i32, i32* @SLI4_FCOE_RQE_SIZE_8, align 4
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 6
  store i32 %91, i32* %93, align 4
  %94 = load i32, i32* @SLI4_FCOE_RQ_PAGE_SIZE_4096, align 4
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 5
  store i32 %94, i32* %96, align 8
  %97 = load i64, i64* %15, align 8
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp slt i64 %97, %101
  br i1 %102, label %110, label %103

103:                                              ; preds = %83
  %104 = load i64, i64* %15, align 8
  %105 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp sgt i64 %104, %108
  br i1 %109, label %110, label %124

110:                                              ; preds = %103, %83
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i64, i64* %15, align 8
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @ocs_log_err(i32 %113, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %114, i64 %118, i64 %122)
  store i32 -1, i32* %8, align 4
  br label %171

124:                                              ; preds = %103
  %125 = load i64, i64* %15, align 8
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 4
  store i64 %125, i64* %127, align 8
  %128 = load i64, i64* %13, align 8
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 3
  store i64 %128, i64* %130, align 8
  store i32 0, i32* %18, align 4
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  store i64 %133, i64* %19, align 8
  br label %134

134:                                              ; preds = %160, %124
  %135 = load i32, i32* %18, align 4
  %136 = sext i32 %135 to i64
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = icmp slt i64 %136, %139
  br i1 %140, label %141, label %166

141:                                              ; preds = %134
  %142 = load i64, i64* %19, align 8
  %143 = call i32 @ocs_addr32_lo(i64 %142)
  %144 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %145 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %144, i32 0, i32 2
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %145, align 8
  %147 = load i32, i32* %18, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 1
  store i32 %143, i32* %150, align 4
  %151 = load i64, i64* %19, align 8
  %152 = call i32 @ocs_addr32_hi(i64 %151)
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %154, align 8
  %156 = load i32, i32* %18, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %158, i32 0, i32 0
  store i32 %152, i32* %159, align 4
  br label %160

160:                                              ; preds = %141
  %161 = load i32, i32* %18, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %18, align 4
  %163 = load i64, i64* @SLI_PAGE_SIZE, align 8
  %164 = load i64, i64* %19, align 8
  %165 = add i64 %164, %163
  store i64 %165, i64* %19, align 8
  br label %134

166:                                              ; preds = %134
  %167 = load i32, i32* %17, align 4
  %168 = sext i32 %167 to i64
  %169 = add i64 %168, 72
  %170 = trunc i64 %169 to i32
  store i32 %170, i32* %8, align 4
  br label %171

171:                                              ; preds = %166, %110, %74
  %172 = load i32, i32* %8, align 4
  ret i32 %172
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @sli_cmd_sli_config(%struct.TYPE_13__*, i8*, i64, i32, i32*) #1

declare dso_local i64 @sli_page_count(i32, i64) #1

declare dso_local i32 @ocs_log_test(i32, i8*, i64, i64) #1

declare dso_local i32 @ocs_log_err(i32, i8*, i64, i64, i64) #1

declare dso_local i32 @ocs_addr32_lo(i64) #1

declare dso_local i32 @ocs_addr32_hi(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
