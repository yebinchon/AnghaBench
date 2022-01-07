; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_queue_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_queue_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { i64, i32*, %struct.TYPE_23__, i32 }
%struct.TYPE_23__ = type { i64 }
%struct.TYPE_26__ = type { i32, %struct.TYPE_26__*, i32, i32 }
%struct.TYPE_25__ = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"bad parameter sli4=%p q=%p\0A\00", align 1
@SLI4_PORT_TYPE_FC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"unsupported WQ destroy\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"unsupported RQ destroy\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"bad queue type %d\0A\00", align 1
@SLI4_IF_TYPE_BE3_SKH_PF = common dso_local global i64 0, align 8
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"bootstrap mailbox write fail destroy %s\0A\00", align 1
@SLI_QNAME = common dso_local global %struct.TYPE_24__** null, align 8
@.str.5 = private unnamed_addr constant [23 x i8] c"bad status destroy %s\0A\00", align 1
@sli4_cmd_sli_config_t = common dso_local global i32 0, align 4
@payload = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"bad destroy %s status=%#x addl=%#x\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"%s queue ID %d free failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_queue_free(%struct.TYPE_24__* %0, %struct.TYPE_26__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_24__*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64 (%struct.TYPE_24__*, i64, i32, %struct.TYPE_26__*)*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_25__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %6, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 (%struct.TYPE_24__*, i64, i32, %struct.TYPE_26__*)* null, i64 (%struct.TYPE_24__*, i64, i32, %struct.TYPE_26__*)** %10, align 8
  store i32 -1, i32* %11, align 4
  %13 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %14 = icmp ne %struct.TYPE_24__* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %17 = icmp ne %struct.TYPE_26__* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %15, %4
  %19 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %20 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %21 = call i32 (i32*, i8*, %struct.TYPE_24__*, ...) @ocs_log_err(i32* null, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), %struct.TYPE_24__* %19, %struct.TYPE_26__* %20)
  store i32 -1, i32* %5, align 4
  br label %196

22:                                               ; preds = %15
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %164

25:                                               ; preds = %22
  %26 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %58 [
    i32 131, label %29
    i32 132, label %30
    i32 130, label %31
    i32 128, label %32
    i32 129, label %45
  ]

29:                                               ; preds = %25
  store i64 (%struct.TYPE_24__*, i64, i32, %struct.TYPE_26__*)* @sli_cmd_common_destroy_eq, i64 (%struct.TYPE_24__*, i64, i32, %struct.TYPE_26__*)** %10, align 8
  br label %66

30:                                               ; preds = %25
  store i64 (%struct.TYPE_24__*, i64, i32, %struct.TYPE_26__*)* @sli_cmd_common_destroy_cq, i64 (%struct.TYPE_24__*, i64, i32, %struct.TYPE_26__*)** %10, align 8
  br label %66

31:                                               ; preds = %25
  store i64 (%struct.TYPE_24__*, i64, i32, %struct.TYPE_26__*)* @sli_cmd_common_destroy_mq, i64 (%struct.TYPE_24__*, i64, i32, %struct.TYPE_26__*)** %10, align 8
  br label %66

32:                                               ; preds = %25
  %33 = load i32, i32* @SLI4_PORT_TYPE_FC, align 4
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = icmp eq i32 %33, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i64 (%struct.TYPE_24__*, i64, i32, %struct.TYPE_26__*)* @sli_cmd_fcoe_wq_destroy, i64 (%struct.TYPE_24__*, i64, i32, %struct.TYPE_26__*)** %10, align 8
  br label %44

39:                                               ; preds = %32
  %40 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 (i32*, i8*, ...) @ocs_log_test(i32* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %196

44:                                               ; preds = %38
  br label %66

45:                                               ; preds = %25
  %46 = load i32, i32* @SLI4_PORT_TYPE_FC, align 4
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  store i64 (%struct.TYPE_24__*, i64, i32, %struct.TYPE_26__*)* @sli_cmd_fcoe_rq_destroy, i64 (%struct.TYPE_24__*, i64, i32, %struct.TYPE_26__*)** %10, align 8
  br label %57

52:                                               ; preds = %45
  %53 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 (i32*, i8*, ...) @ocs_log_test(i32* %55, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %5, align 4
  br label %196

57:                                               ; preds = %51
  br label %66

58:                                               ; preds = %25
  %59 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 (i32*, i8*, ...) @ocs_log_test(i32* %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %64)
  store i32 -1, i32* %5, align 4
  br label %196

66:                                               ; preds = %57, %44, %31, %30, %29
  %67 = load i64, i64* @SLI4_IF_TYPE_BE3_SKH_PF, align 8
  %68 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %66
  store i64 (%struct.TYPE_24__*, i64, i32, %struct.TYPE_26__*)* null, i64 (%struct.TYPE_24__*, i64, i32, %struct.TYPE_26__*)** %10, align 8
  br label %73

73:                                               ; preds = %72, %66
  %74 = load i64 (%struct.TYPE_24__*, i64, i32, %struct.TYPE_26__*)*, i64 (%struct.TYPE_24__*, i64, i32, %struct.TYPE_26__*)** %10, align 8
  %75 = icmp ne i64 (%struct.TYPE_24__*, i64, i32, %struct.TYPE_26__*)* %74, null
  br i1 %75, label %76, label %163

76:                                               ; preds = %73
  %77 = load i64 (%struct.TYPE_24__*, i64, i32, %struct.TYPE_26__*)*, i64 (%struct.TYPE_24__*, i64, i32, %struct.TYPE_26__*)** %10, align 8
  %78 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %79 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %84 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_26__*, %struct.TYPE_26__** %85, align 8
  %87 = call i64 %77(%struct.TYPE_24__* %78, i64 %82, i32 %83, %struct.TYPE_26__* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %163

89:                                               ; preds = %76
  store %struct.TYPE_25__* null, %struct.TYPE_25__** %12, align 8
  %90 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %91 = call i64 @sli_bmbx_command(%struct.TYPE_24__* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %89
  %94 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.TYPE_24__**, %struct.TYPE_24__*** @SLI_QNAME, align 8
  %98 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %99 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %97, i64 %101
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %102, align 8
  %104 = call i32 @ocs_log_crit(i32* %96, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), %struct.TYPE_24__* %103)
  br label %162

105:                                              ; preds = %89
  %106 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = call i64 @sli_res_sli_config(i64 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %105
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.TYPE_24__**, %struct.TYPE_24__*** @SLI_QNAME, align 8
  %117 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %116, i64 %120
  %122 = load %struct.TYPE_24__*, %struct.TYPE_24__** %121, align 8
  %123 = call i32 (i32*, i8*, %struct.TYPE_24__*, ...) @ocs_log_err(i32* %115, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), %struct.TYPE_24__* %122)
  br label %161

124:                                              ; preds = %105
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to i32*
  %130 = load i32, i32* @sli4_cmd_sli_config_t, align 4
  %131 = load i32, i32* @payload, align 4
  %132 = call i32 @offsetof(i32 %130, i32 %131)
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %129, i64 %133
  %135 = bitcast i32* %134 to i8*
  %136 = bitcast i8* %135 to %struct.TYPE_25__*
  store %struct.TYPE_25__* %136, %struct.TYPE_25__** %12, align 8
  %137 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %138 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %159

141:                                              ; preds = %124
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.TYPE_24__**, %struct.TYPE_24__*** @SLI_QNAME, align 8
  %146 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %145, i64 %149
  %151 = load %struct.TYPE_24__*, %struct.TYPE_24__** %150, align 8
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 (i32*, i8*, %struct.TYPE_24__*, ...) @ocs_log_err(i32* %144, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), %struct.TYPE_24__* %151, i32 %154, i32 %157)
  br label %160

159:                                              ; preds = %124
  store i32 0, i32* %11, align 4
  br label %160

160:                                              ; preds = %159, %141
  br label %161

161:                                              ; preds = %160, %112
  br label %162

162:                                              ; preds = %161, %93
  br label %163

163:                                              ; preds = %162, %76, %73
  br label %164

164:                                              ; preds = %163, %22
  %165 = load i64, i64* %9, align 8
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %194

167:                                              ; preds = %164
  %168 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %168, i32 0, i32 3
  %170 = call i32 @ocs_lock_free(i32* %169)
  %171 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %174, i32 0, i32 2
  %176 = call i64 @ocs_dma_free(i32* %173, i32* %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %193

178:                                              ; preds = %167
  %179 = load %struct.TYPE_24__*, %struct.TYPE_24__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %179, i32 0, i32 1
  %181 = load i32*, i32** %180, align 8
  %182 = load %struct.TYPE_24__**, %struct.TYPE_24__*** @SLI_QNAME, align 8
  %183 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %184 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %182, i64 %186
  %188 = load %struct.TYPE_24__*, %struct.TYPE_24__** %187, align 8
  %189 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_26__*, %struct.TYPE_26__** %190, align 8
  %192 = call i32 (i32*, i8*, %struct.TYPE_24__*, ...) @ocs_log_err(i32* %181, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), %struct.TYPE_24__* %188, %struct.TYPE_26__* %191)
  store i32 -1, i32* %11, align 4
  br label %193

193:                                              ; preds = %178, %167
  br label %194

194:                                              ; preds = %193, %164
  %195 = load i32, i32* %11, align 4
  store i32 %195, i32* %5, align 4
  br label %196

196:                                              ; preds = %194, %58, %52, %39, %18
  %197 = load i32, i32* %5, align 4
  ret i32 %197
}

declare dso_local i32 @ocs_log_err(i32*, i8*, %struct.TYPE_24__*, ...) #1

declare dso_local i64 @sli_cmd_common_destroy_eq(%struct.TYPE_24__*, i64, i32, %struct.TYPE_26__*) #1

declare dso_local i64 @sli_cmd_common_destroy_cq(%struct.TYPE_24__*, i64, i32, %struct.TYPE_26__*) #1

declare dso_local i64 @sli_cmd_common_destroy_mq(%struct.TYPE_24__*, i64, i32, %struct.TYPE_26__*) #1

declare dso_local i64 @sli_cmd_fcoe_wq_destroy(%struct.TYPE_24__*, i64, i32, %struct.TYPE_26__*) #1

declare dso_local i32 @ocs_log_test(i32*, i8*, ...) #1

declare dso_local i64 @sli_cmd_fcoe_rq_destroy(%struct.TYPE_24__*, i64, i32, %struct.TYPE_26__*) #1

declare dso_local i64 @sli_bmbx_command(%struct.TYPE_24__*) #1

declare dso_local i32 @ocs_log_crit(i32*, i8*, %struct.TYPE_24__*) #1

declare dso_local i64 @sli_res_sli_config(i64) #1

declare dso_local i32 @offsetof(i32, i32) #1

declare dso_local i32 @ocs_lock_free(i32*) #1

declare dso_local i64 @ocs_dma_free(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
