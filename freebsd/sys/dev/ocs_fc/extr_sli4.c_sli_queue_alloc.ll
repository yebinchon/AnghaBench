; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_queue_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_queue_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i32, %struct.TYPE_23__, i32, i32 }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_25__ = type { i32, i32, i32, %struct.TYPE_22__ }
%struct.TYPE_22__ = type { %struct.TYPE_21__ }
%struct.TYPE_21__ = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"bad parameter sli4=%p q=%p\0A\00", align 1
@SLI_PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"illegal n_entries value %d for MQ\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SLI4_PORT_TYPE_FC = common dso_local global i32 0, align 4
@SLI4_IF_TYPE_BE3_SKH_PF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"unsupported WQ create\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"unknown queue type %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"%s allocation failed\0A\00", align 1
@SLI_QNAME = common dso_local global i32* null, align 8
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [18 x i8] c"create %s failed\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"cannot create %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_queue_alloc(%struct.TYPE_24__* %0, i32 %1, %struct.TYPE_25__* %2, i32 %3, %struct.TYPE_25__* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_24__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_25__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64 (%struct.TYPE_24__*, i32, i32, i32*, i32, i32)*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %8, align 8
  store i32 %1, i32* %9, align 4
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.TYPE_25__* %4, %struct.TYPE_25__** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i64 (%struct.TYPE_24__*, i32, i32, i32*, i32, i32)* null, i64 (%struct.TYPE_24__*, i32, i32, i32*, i32, i32)** %16, align 8
  %17 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %18 = icmp ne %struct.TYPE_24__* %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %6
  %20 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %21 = icmp ne %struct.TYPE_25__* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %19, %6
  %23 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %24 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %25 = call i32 (i32, i8*, %struct.TYPE_24__*, ...) @ocs_log_err(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.TYPE_24__* %23, %struct.TYPE_25__* %24)
  store i32 -1, i32* %7, align 4
  br label %157

26:                                               ; preds = %19
  %27 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @sli_get_queue_entry_size(%struct.TYPE_24__* %27, i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 -1, i32* %7, align 4
  br label %157

33:                                               ; preds = %26
  %34 = load i32, i32* @SLI_PAGE_SIZE, align 4
  store i32 %34, i32* %15, align 4
  %35 = load i32, i32* %9, align 4
  switch i32 %35, label %74 [
    i32 130, label %36
    i32 131, label %37
    i32 129, label %38
    i32 128, label %53
  ]

36:                                               ; preds = %33
  store i64 (%struct.TYPE_24__*, i32, i32, i32*, i32, i32)* @sli_cmd_common_create_eq, i64 (%struct.TYPE_24__*, i32, i32, i32*, i32, i32)** %16, align 8
  br label %80

37:                                               ; preds = %33
  store i64 (%struct.TYPE_24__*, i32, i32, i32*, i32, i32)* @sli_cmd_common_create_cq, i64 (%struct.TYPE_24__*, i32, i32, i32*, i32, i32)** %16, align 8
  br label %80

38:                                               ; preds = %33
  %39 = load i32, i32* %11, align 4
  switch i32 %39, label %41 [
    i32 16, label %40
    i32 32, label %40
    i32 64, label %40
    i32 128, label %40
  ]

40:                                               ; preds = %38, %38, %38, %38
  br label %47

41:                                               ; preds = %38
  %42 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 (i32, i8*, ...) @ocs_log_test(i32 %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  store i32 -1, i32* %7, align 4
  br label %157

47:                                               ; preds = %40
  %48 = load i32, i32* @TRUE, align 4
  %49 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %51, i32 0, i32 0
  store i32 %48, i32* %52, align 4
  store i64 (%struct.TYPE_24__*, i32, i32, i32*, i32, i32)* @sli_cmd_common_create_mq_ext, i64 (%struct.TYPE_24__*, i32, i32, i32*, i32, i32)** %16, align 8
  br label %80

53:                                               ; preds = %33
  %54 = load i32, i32* @SLI4_PORT_TYPE_FC, align 4
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %53
  %60 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SLI4_IF_TYPE_BE3_SKH_PF, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i64 (%struct.TYPE_24__*, i32, i32, i32*, i32, i32)* @sli_cmd_fcoe_wq_create, i64 (%struct.TYPE_24__*, i32, i32, i32*, i32, i32)** %16, align 8
  br label %67

66:                                               ; preds = %59
  store i64 (%struct.TYPE_24__*, i32, i32, i32*, i32, i32)* @sli_cmd_fcoe_wq_create_v1, i64 (%struct.TYPE_24__*, i32, i32, i32*, i32, i32)** %16, align 8
  br label %67

67:                                               ; preds = %66, %65
  br label %73

68:                                               ; preds = %53
  %69 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (i32, i8*, ...) @ocs_log_test(i32 %71, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %7, align 4
  br label %157

73:                                               ; preds = %67
  br label %80

74:                                               ; preds = %33
  %75 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 (i32, i8*, ...) @ocs_log_test(i32 %77, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  store i32 -1, i32* %7, align 4
  br label %157

80:                                               ; preds = %73, %47, %37, %36
  %81 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %15, align 4
  %87 = call i64 @__sli_queue_init(%struct.TYPE_24__* %81, %struct.TYPE_25__* %82, i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %80
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** @SLI_QNAME, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to %struct.TYPE_24__*
  %100 = call i32 (i32, i8*, %struct.TYPE_24__*, ...) @ocs_log_err(i32 %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_24__* %99)
  store i32 -1, i32* %7, align 4
  br label %157

101:                                              ; preds = %80
  %102 = load i64 (%struct.TYPE_24__*, i32, i32, i32*, i32, i32)*, i64 (%struct.TYPE_24__*, i32, i32, i32*, i32, i32)** %16, align 8
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %104 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %109 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %112 = icmp ne %struct.TYPE_25__* %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %101
  %114 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  br label %118

117:                                              ; preds = %101
  br label %118

118:                                              ; preds = %117, %113
  %119 = phi i32 [ %116, %113 ], [ 0, %117 ]
  %120 = load i32, i32* %13, align 4
  %121 = call i64 %102(%struct.TYPE_24__* %103, i32 %107, i32 %108, i32* %110, i32 %119, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %144

123:                                              ; preds = %118
  %124 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %125 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %126 = call i64 @__sli_create_queue(%struct.TYPE_24__* %124, %struct.TYPE_25__* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %140

128:                                              ; preds = %123
  %129 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load i32*, i32** @SLI_QNAME, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = sext i32 %136 to i64
  %138 = inttoptr i64 %137 to %struct.TYPE_24__*
  %139 = call i32 (i32, i8*, %struct.TYPE_24__*, ...) @ocs_log_err(i32 %131, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_24__* %138)
  store i32 -1, i32* %7, align 4
  br label %157

140:                                              ; preds = %123
  %141 = load i32, i32* %13, align 4
  %142 = load %struct.TYPE_25__*, %struct.TYPE_25__** %10, align 8
  %143 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 4
  br label %156

144:                                              ; preds = %118
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %8, align 8
  %146 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32*, i32** @SLI_QNAME, align 8
  %149 = load i32, i32* %9, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = inttoptr i64 %153 to %struct.TYPE_24__*
  %155 = call i32 (i32, i8*, %struct.TYPE_24__*, ...) @ocs_log_err(i32 %147, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_24__* %154)
  store i32 -1, i32* %7, align 4
  br label %157

156:                                              ; preds = %140
  store i32 0, i32* %7, align 4
  br label %157

157:                                              ; preds = %156, %144, %128, %89, %74, %68, %41, %32, %22
  %158 = load i32, i32* %7, align 4
  ret i32 %158
}

declare dso_local i32 @ocs_log_err(i32, i8*, %struct.TYPE_24__*, ...) #1

declare dso_local i32 @sli_get_queue_entry_size(%struct.TYPE_24__*, i32) #1

declare dso_local i64 @sli_cmd_common_create_eq(%struct.TYPE_24__*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @sli_cmd_common_create_cq(%struct.TYPE_24__*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ocs_log_test(i32, i8*, ...) #1

declare dso_local i64 @sli_cmd_common_create_mq_ext(%struct.TYPE_24__*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @sli_cmd_fcoe_wq_create(%struct.TYPE_24__*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @sli_cmd_fcoe_wq_create_v1(%struct.TYPE_24__*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @__sli_queue_init(%struct.TYPE_24__*, %struct.TYPE_25__*, i32, i32, i32, i32) #1

declare dso_local i64 @__sli_create_queue(%struct.TYPE_24__*, %struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
