; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_common_create_mq_ext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_common_create_mq_ext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_12__*, i32, i8*, %struct.TYPE_11__, i8*, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }

@SLI4_PORT_TYPE_FC = common dso_local global i64 0, align 8
@SLI4_OPC_COMMON_CREATE_MQ_EXT = common dso_local global i32 0, align 4
@SLI4_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@SLI_PAGE_SIZE = common dso_local global i64 0, align 8
@SLI4_MQE_SIZE_16 = common dso_local global i32 0, align 4
@SLI4_MQE_SIZE_32 = common dso_local global i32 0, align 4
@SLI4_MQE_SIZE_64 = common dso_local global i32 0, align 4
@SLI4_MQE_SIZE_128 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"num_pages %d not valid\0A\00", align 1
@SLI4_ASYNC_EVT_FC_FCOE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i8*, i64, %struct.TYPE_15__*, i8*, i8*)* @sli_cmd_common_create_mq_ext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sli_cmd_common_create_mq_ext(%struct.TYPE_13__* %0, i8* %1, i64 %2, %struct.TYPE_15__* %3, i8* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_15__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_14__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %11, align 8
  store i8* %4, i8** %12, align 8
  store i8* %5, i8** %13, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %14, align 8
  store i32 0, i32* %15, align 4
  %19 = load i64, i64* @SLI4_PORT_TYPE_FC, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %6
  %25 = call i32 @max(i32 64, i32 4)
  store i32 %25, i32* %18, align 4
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i32, i32* %18, align 4
  %30 = call i32 @sli_cmd_sli_config(%struct.TYPE_13__* %26, i8* %27, i64 %28, i32 %29, i32* null)
  store i32 %30, i32* %15, align 4
  br label %31

31:                                               ; preds = %24, %6
  %32 = load i8*, i8** %9, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = load i32, i32* %15, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = bitcast i32* %36 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %14, align 8
  %38 = load i32, i32* @SLI4_OPC_COMMON_CREATE_MQ_EXT, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 3
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @SLI4_SUBSYSTEM_COMMON, align 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 8
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  store i32 60, i32* %48, align 8
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SLI_PAGE_SIZE, align 8
  %53 = udiv i64 %51, %52
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  switch i64 %58, label %75 [
    i64 1, label %59
    i64 2, label %63
    i64 4, label %67
    i64 8, label %71
  ]

59:                                               ; preds = %31
  %60 = load i32, i32* @SLI4_MQE_SIZE_16, align 4
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 4
  br label %84

63:                                               ; preds = %31
  %64 = load i32, i32* @SLI4_MQE_SIZE_32, align 4
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 7
  store i32 %64, i32* %66, align 4
  br label %84

67:                                               ; preds = %31
  %68 = load i32, i32* @SLI4_MQE_SIZE_64, align 4
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 7
  store i32 %68, i32* %70, align 4
  br label %84

71:                                               ; preds = %31
  %72 = load i32, i32* @SLI4_MQE_SIZE_128, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 7
  store i32 %72, i32* %74, align 4
  br label %84

75:                                               ; preds = %31
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = trunc i64 %81 to i32
  %83 = call i32 @ocs_log_test(i32 %78, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %82)
  store i32 -1, i32* %7, align 4
  br label %148

84:                                               ; preds = %71, %67, %63, %59
  %85 = load i32, i32* @SLI4_ASYNC_EVT_FC_FCOE, align 4
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 8
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %84
  %94 = load i8*, i8** %12, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 5
  store i8* %94, i8** %96, align 8
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 4
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  store i32 1, i32* %99, align 4
  br label %104

100:                                              ; preds = %84
  %101 = load i8*, i8** %12, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  br label %104

104:                                              ; preds = %100, %93
  %105 = load i32, i32* @TRUE, align 4
  %106 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  store i32 0, i32* %16, align 4
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %17, align 8
  br label %111

111:                                              ; preds = %137, %104
  %112 = load i32, i32* %16, align 4
  %113 = sext i32 %112 to i64
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ult i64 %113, %116
  br i1 %117, label %118, label %143

118:                                              ; preds = %111
  %119 = load i64, i64* %17, align 8
  %120 = call i32 @ocs_addr32_lo(i64 %119)
  %121 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_12__*, %struct.TYPE_12__** %122, align 8
  %124 = load i32, i32* %16, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  store i32 %120, i32* %127, align 4
  %128 = load i64, i64* %17, align 8
  %129 = call i32 @ocs_addr32_hi(i64 %128)
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %131, align 8
  %133 = load i32, i32* %16, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  store i32 %129, i32* %136, align 4
  br label %137

137:                                              ; preds = %118
  %138 = load i32, i32* %16, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %16, align 4
  %140 = load i64, i64* @SLI_PAGE_SIZE, align 8
  %141 = load i64, i64* %17, align 8
  %142 = add i64 %141, %140
  store i64 %142, i64* %17, align 8
  br label %111

143:                                              ; preds = %111
  %144 = load i32, i32* %15, align 4
  %145 = sext i32 %144 to i64
  %146 = add i64 %145, 64
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %7, align 4
  br label %148

148:                                              ; preds = %143, %75
  %149 = load i32, i32* %7, align 4
  ret i32 %149
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @sli_cmd_sli_config(%struct.TYPE_13__*, i8*, i64, i32, i32*) #1

declare dso_local i32 @ocs_log_test(i32, i8*, i32) #1

declare dso_local i32 @ocs_addr32_lo(i64) #1

declare dso_local i32 @ocs_addr32_hi(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
