; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_common_create_eq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_cmd_common_create_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32 }
%struct.TYPE_13__ = type { i64, i64 }
%struct.TYPE_12__ = type { i64, i32, %struct.TYPE_10__*, i32, i32, i32, i8*, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@SLI4_PORT_TYPE_FC = common dso_local global i64 0, align 8
@SLI4_OPC_COMMON_CREATE_EQ = common dso_local global i32 0, align 4
@SLI4_SUBSYSTEM_COMMON = common dso_local global i32 0, align 4
@SLI_PAGE_SIZE = common dso_local global i64 0, align 8
@SLI4_EQE_SIZE_4 = common dso_local global i8* null, align 8
@SLI4_EQ_CNT_1024 = common dso_local global i32 0, align 4
@SLI4_EQ_CNT_2048 = common dso_local global i32 0, align 4
@SLI4_EQ_CNT_4096 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"num_pages %d not valid\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i8*, i64, %struct.TYPE_13__*, i32, i32)* @sli_cmd_common_create_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sli_cmd_common_create_eq(%struct.TYPE_11__* %0, i8* %1, i64 %2, %struct.TYPE_13__* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %14, align 8
  store i32 0, i32* %15, align 4
  %19 = load i64, i64* @SLI4_PORT_TYPE_FC, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %6
  %25 = call i32 @max(i32 64, i32 4)
  store i32 %25, i32* %18, align 4
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %27 = load i8*, i8** %9, align 8
  %28 = load i64, i64* %10, align 8
  %29 = load i32, i32* %18, align 4
  %30 = call i32 @sli_cmd_sli_config(%struct.TYPE_11__* %26, i8* %27, i64 %28, i32 %29, i32* null)
  store i32 %30, i32* %15, align 4
  br label %31

31:                                               ; preds = %24, %6
  %32 = load i8*, i8** %9, align 8
  %33 = bitcast i8* %32 to i32*
  %34 = load i32, i32* %15, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = bitcast i32* %36 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %37, %struct.TYPE_12__** %14, align 8
  %38 = load i32, i32* @SLI4_OPC_COMMON_CREATE_EQ, align 4
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 7
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 2
  store i32 %38, i32* %41, align 8
  %42 = load i32, i32* @SLI4_SUBSYSTEM_COMMON, align 4
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 7
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 7
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  store i32 60, i32* %48, align 8
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SLI_PAGE_SIZE, align 8
  %53 = udiv i64 %51, %52
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  switch i64 %58, label %80 [
    i64 1, label %59
    i64 2, label %66
    i64 4, label %73
  ]

59:                                               ; preds = %31
  %60 = load i8*, i8** @SLI4_EQE_SIZE_4, align 8
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 6
  store i8* %60, i8** %62, align 8
  %63 = load i32, i32* @SLI4_EQ_CNT_1024, align 4
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 5
  store i32 %63, i32* %65, align 8
  br label %89

66:                                               ; preds = %31
  %67 = load i8*, i8** @SLI4_EQE_SIZE_4, align 8
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 6
  store i8* %67, i8** %69, align 8
  %70 = load i32, i32* @SLI4_EQ_CNT_2048, align 4
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 5
  store i32 %70, i32* %72, align 8
  br label %89

73:                                               ; preds = %31
  %74 = load i8*, i8** @SLI4_EQE_SIZE_4, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 6
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* @SLI4_EQ_CNT_4096, align 4
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 5
  store i32 %77, i32* %79, align 8
  br label %89

80:                                               ; preds = %31
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 @ocs_log_test(i32 %83, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %87)
  store i32 -1, i32* %7, align 4
  br label %138

89:                                               ; preds = %73, %66, %59
  %90 = load i32, i32* @TRUE, align 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @FALSE, align 4
  %94 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 8
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 1
  store i32 32, i32* %97, align 8
  store i32 0, i32* %16, align 4
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  store i64 %100, i64* %17, align 8
  br label %101

101:                                              ; preds = %127, %89
  %102 = load i32, i32* %16, align 4
  %103 = sext i32 %102 to i64
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ult i64 %103, %106
  br i1 %107, label %108, label %133

108:                                              ; preds = %101
  %109 = load i64, i64* %17, align 8
  %110 = call i32 @ocs_addr32_lo(i64 %109)
  %111 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %111, i32 0, i32 2
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %112, align 8
  %114 = load i32, i32* %16, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 1
  store i32 %110, i32* %117, align 4
  %118 = load i64, i64* %17, align 8
  %119 = call i32 @ocs_addr32_hi(i64 %118)
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 2
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %121, align 8
  %123 = load i32, i32* %16, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  store i32 %119, i32* %126, align 4
  br label %127

127:                                              ; preds = %108
  %128 = load i32, i32* %16, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %16, align 4
  %130 = load i64, i64* @SLI_PAGE_SIZE, align 8
  %131 = load i64, i64* %17, align 8
  %132 = add i64 %131, %130
  store i64 %132, i64* %17, align 8
  br label %101

133:                                              ; preds = %101
  %134 = load i32, i32* %15, align 4
  %135 = sext i32 %134 to i64
  %136 = add i64 %135, 64
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %133, %80
  %139 = load i32, i32* %7, align 4
  ret i32 %139
}

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @sli_cmd_sli_config(%struct.TYPE_11__*, i8*, i64, i32, i32*) #1

declare dso_local i32 @ocs_log_test(i32, i8*, i32) #1

declare dso_local i32 @ocs_addr32_lo(i64) #1

declare dso_local i32 @ocs_addr32_hi(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
