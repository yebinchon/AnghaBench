; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_fc_process_link_attention.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_sli4.c_sli_fc_process_link_attention.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 (i32, i8*)*, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [133 x i8] c"link_number=%d attn_type=%#x topology=%#x port_speed=%#x port_fault=%#x shared_link_status=%#x logical_link_speed=%#x event_tag=%#x\0A\00", align 1
@SLI_LINK_MEDIUM_FC = common dso_local global i32 0, align 4
@SLI_LINK_STATUS_UP = common dso_local global i32 0, align 4
@SLI_LINK_STATUS_DOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"attn_type: no hard alpa\0A\00", align 1
@SLI_LINK_STATUS_NO_ALPA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"attn_type: unknown\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"event_type: FC shared link event \0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"event_type: unknown\0A\00", align 1
@SLI_LINK_TOPO_NPORT = common dso_local global i32 0, align 4
@SLI_LINK_TOPO_LOOP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"topology Internal loopback\0A\00", align 1
@SLI_LINK_TOPO_LOOPBACK_INTERNAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"topology serdes loopback\0A\00", align 1
@SLI_LINK_TOPO_LOOPBACK_EXTERNAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [19 x i8] c"topology: unknown\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sli_fc_process_link_attention(%struct.TYPE_5__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_6__, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %9, %struct.TYPE_7__** %6, align 8
  %10 = bitcast %struct.TYPE_6__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 20, i1 false)
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 8
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 7
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %13, i8* getelementptr inbounds ([133 x i8], [133 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %19, i32 %22, i32 %25, i32 %28, i32 %31, i32 %34, i32 %37)
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32 (i32, i8*)*, i32 (i32, i8*)** %40, align 8
  %42 = icmp ne i32 (i32, i8*)* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %126

44:                                               ; preds = %2
  %45 = load i32, i32* @SLI_LINK_MEDIUM_FC, align 4
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 3
  store i32 %45, i32* %46, align 4
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  switch i32 %49, label %63 [
    i32 129, label %50
    i32 130, label %53
    i32 128, label %56
  ]

50:                                               ; preds = %44
  %51 = load i32, i32* @SLI_LINK_STATUS_UP, align 4
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  store i32 %51, i32* %52, align 4
  br label %68

53:                                               ; preds = %44
  %54 = load i32, i32* @SLI_LINK_STATUS_DOWN, align 4
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  store i32 %54, i32* %55, align 4
  br label %68

56:                                               ; preds = %44
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %59, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %61 = load i32, i32* @SLI_LINK_STATUS_NO_ALPA, align 4
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 2
  store i32 %61, i32* %62, align 4
  br label %68

63:                                               ; preds = %44
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ocs_log_test(i32 %66, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %68

68:                                               ; preds = %63, %56, %53, %50
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  switch i32 %71, label %78 [
    i32 136, label %72
    i32 135, label %73
  ]

72:                                               ; preds = %68
  br label %83

73:                                               ; preds = %68
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %76, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  br label %83

78:                                               ; preds = %68
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @ocs_log_test(i32 %81, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %83

83:                                               ; preds = %78, %73, %72
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  switch i32 %86, label %107 [
    i32 132, label %87
    i32 134, label %90
    i32 133, label %93
    i32 131, label %100
  ]

87:                                               ; preds = %83
  %88 = load i32, i32* @SLI_LINK_TOPO_NPORT, align 4
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32 %88, i32* %89, align 4
  br label %112

90:                                               ; preds = %83
  %91 = load i32, i32* @SLI_LINK_TOPO_LOOP, align 4
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32 %91, i32* %92, align 4
  br label %112

93:                                               ; preds = %83
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %96, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %98 = load i32, i32* @SLI_LINK_TOPO_LOOPBACK_INTERNAL, align 4
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32 %98, i32* %99, align 4
  br label %112

100:                                              ; preds = %83
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 (i32, i8*, ...) @ocs_log_debug(i32 %103, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %105 = load i32, i32* @SLI_LINK_TOPO_LOOPBACK_EXTERNAL, align 4
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  store i32 %105, i32* %106, align 4
  br label %112

107:                                              ; preds = %83
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @ocs_log_test(i32 %110, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0))
  br label %112

112:                                              ; preds = %107, %100, %93, %90, %87
  %113 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = mul nsw i32 %115, 1000
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32 %116, i32* %117, align 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i32 (i32, i8*)*, i32 (i32, i8*)** %119, align 8
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = bitcast %struct.TYPE_6__* %7 to i8*
  %125 = call i32 %120(i32 %123, i8* %124)
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %112, %43
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ocs_log_debug(i32, i8*, ...) #2

declare dso_local i32 @ocs_log_test(i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
