; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_cb_link.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_hw.c_ocs_hw_cb_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_16__*, %struct.TYPE_14__, %struct.TYPE_13__, i32**, %struct.TYPE_15__, i32, i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 (i32, i32, i32*)* }
%struct.TYPE_15__ = type { i32, i32, i32 }

@OCS_HW_RTN_ERROR = common dso_local global i32 0, align 4
@SLI_LINK_TOPO_NPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Link Up, NPORT, speed is %d\0A\00", align 1
@SLI4_FCOE_FCF_TABLE_FIRST = common dso_local global i32 0, align 4
@SLI_LINK_TOPO_LOOP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Link Up, LOOP, speed is %d\0A\00", align 1
@SLI4_BMBX_SIZE = common dso_local global i32 0, align 4
@OCS_M_NOWAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"no buffer for command\0A\00", align 1
@OCS_CMD_NOWAIT = common dso_local global i32 0, align 4
@__ocs_read_topology_cb = common dso_local global i32 0, align 4
@OCS_HW_RTN_SUCCESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"READ_TOPOLOGY failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"Link Up, unsupported topology (%#x), speed is %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Link Down\0A\00", align 1
@SLI4_MAX_FCFI = common dso_local global i64 0, align 8
@OCS_HW_DOMAIN_LOST = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"unhandled link status %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @ocs_hw_cb_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_hw_cb_link(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_16__*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %13, %struct.TYPE_17__** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %15, %struct.TYPE_15__** %6, align 8
  store i32* null, i32** %7, align 8
  store i64 0, i64* %8, align 8
  %16 = load i32, i32* @OCS_HW_RTN_ERROR, align 4
  store i32 %16, i32* %9, align 4
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %18, align 8
  store %struct.TYPE_16__* %19, %struct.TYPE_16__** %10, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %21 = call i32 @ocs_hw_link_event_init(%struct.TYPE_17__* %20)
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %165 [
    i32 128, label %25
    i32 129, label %118
  ]

25:                                               ; preds = %2
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %29 = bitcast %struct.TYPE_15__* %27 to i8*
  %30 = bitcast %struct.TYPE_15__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 4 %30, i64 12, i1 false)
  %31 = load i32, i32* @SLI_LINK_TOPO_NPORT, align 4
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %25
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 (i32, i8*, ...) @device_printf(i32 %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %45 = load i32, i32* @SLI4_FCOE_FCF_TABLE_FIRST, align 4
  %46 = call i32 @ocs_hw_read_fcf(%struct.TYPE_17__* %44, i32 %45)
  br label %117

47:                                               ; preds = %25
  %48 = load i32, i32* @SLI_LINK_TOPO_LOOP, align 4
  %49 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %48, %51
  br i1 %52, label %53, label %105

53:                                               ; preds = %47
  store i32* null, i32** %11, align 8
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (i32, i8*, ...) @device_printf(i32 %56, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %62, align 8
  %64 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %65 = load i32, i32* @OCS_M_NOWAIT, align 4
  %66 = call i32* @ocs_malloc(%struct.TYPE_16__* %63, i32 %64, i32 %65)
  store i32* %66, i32** %11, align 8
  %67 = load i32*, i32** %11, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %74, label %69

69:                                               ; preds = %53
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %71, align 8
  %73 = call i32 @ocs_log_err(%struct.TYPE_16__* %72, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %173

74:                                               ; preds = %53
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %75, i32 0, i32 6
  %77 = load i32*, i32** %11, align 8
  %78 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 5
  %81 = call i32 @sli_cmd_read_topology(i32* %76, i32* %77, i32 %78, i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %74
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %85 = load i32*, i32** %11, align 8
  %86 = load i32, i32* @OCS_CMD_NOWAIT, align 4
  %87 = load i32, i32* @__ocs_read_topology_cb, align 4
  %88 = call i32 @ocs_hw_command(%struct.TYPE_17__* %84, i32* %85, i32 %86, i32 %87, i32* null)
  store i32 %88, i32* %9, align 4
  br label %89

89:                                               ; preds = %83, %74
  %90 = load i32, i32* %9, align 4
  %91 = load i32, i32* @OCS_HW_RTN_SUCCESS, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %93, label %104

93:                                               ; preds = %89
  %94 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %95, align 8
  %97 = call i32 (%struct.TYPE_16__*, i8*, ...) @ocs_log_test(%struct.TYPE_16__* %96, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_16__*, %struct.TYPE_16__** %99, align 8
  %101 = load i32*, i32** %11, align 8
  %102 = load i32, i32* @SLI4_BMBX_SIZE, align 4
  %103 = call i32 @ocs_free(%struct.TYPE_16__* %100, i32* %101, i32 %102)
  br label %104

104:                                              ; preds = %93, %89
  br label %116

105:                                              ; preds = %47
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i32, i8*, ...) @device_printf(i32 %108, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %111, i32 %114)
  br label %116

116:                                              ; preds = %105, %104
  br label %117

117:                                              ; preds = %116, %36
  br label %173

118:                                              ; preds = %2
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %10, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i32, i8*, ...) @device_printf(i32 %121, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 0
  store i32 %125, i32* %128, align 8
  store i64 0, i64* %8, align 8
  br label %129

129:                                              ; preds = %161, %118
  %130 = load i64, i64* %8, align 8
  %131 = load i64, i64* @SLI4_MAX_FCFI, align 8
  %132 = icmp ult i64 %130, %131
  br i1 %132, label %133, label %164

133:                                              ; preds = %129
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 3
  %136 = load i32**, i32*** %135, align 8
  %137 = load i64, i64* %8, align 8
  %138 = getelementptr inbounds i32*, i32** %136, i64 %137
  %139 = load i32*, i32** %138, align 8
  store i32* %139, i32** %7, align 8
  %140 = load i32*, i32** %7, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %160

142:                                              ; preds = %133
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %145, align 8
  %147 = icmp ne i32 (i32, i32, i32*)* %146, null
  br i1 %147, label %148, label %160

148:                                              ; preds = %142
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = load i32 (i32, i32, i32*)*, i32 (i32, i32, i32*)** %151, align 8
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @OCS_HW_DOMAIN_LOST, align 4
  %158 = load i32*, i32** %7, align 8
  %159 = call i32 %152(i32 %156, i32 %157, i32* %158)
  br label %160

160:                                              ; preds = %148, %142, %133
  br label %161

161:                                              ; preds = %160
  %162 = load i64, i64* %8, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %8, align 8
  br label %129

164:                                              ; preds = %129
  br label %173

165:                                              ; preds = %2
  %166 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %167 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %166, i32 0, i32 0
  %168 = load %struct.TYPE_16__*, %struct.TYPE_16__** %167, align 8
  %169 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = call i32 (%struct.TYPE_16__*, i8*, ...) @ocs_log_test(%struct.TYPE_16__* %168, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %171)
  br label %173

173:                                              ; preds = %165, %164, %117, %69
  ret i32 0
}

declare dso_local i32 @ocs_hw_link_event_init(%struct.TYPE_17__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ocs_hw_read_fcf(%struct.TYPE_17__*, i32) #1

declare dso_local i32* @ocs_malloc(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @ocs_log_err(%struct.TYPE_16__*, i8*) #1

declare dso_local i32 @sli_cmd_read_topology(i32*, i32*, i32, i32*) #1

declare dso_local i32 @ocs_hw_command(%struct.TYPE_17__*, i32*, i32, i32, i32*) #1

declare dso_local i32 @ocs_log_test(%struct.TYPE_16__*, i8*, ...) #1

declare dso_local i32 @ocs_free(%struct.TYPE_16__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
