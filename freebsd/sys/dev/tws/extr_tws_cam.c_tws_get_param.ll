; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_get_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_get_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32 }
%struct.tws_request = type { i32, i32*, i64, %struct.tws_command_packet*, i32, i32*, i32 }
%struct.tws_command_packet = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %union.tws_command_giga }
%union.tws_command_giga = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64, i8*, i32 }
%struct.tws_getset_param = type { i32, i32, i64, i8* }

@SUCCESS = common dso_local global i32 0, align 4
@TWS_REQ_TYPE_GETSET_PARAM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [9 x i8] c"null req\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@TWS_SECTOR_SIZE = common dso_local global i32 0, align 4
@M_TWS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@TWS_DIR_IN = common dso_local global i32 0, align 4
@TWS_FW_CMD_GET_PARAM = common dso_local global i32 0, align 4
@TWS_9K_PARAM_DESCRIPTOR = common dso_local global i32 0, align 4
@TWS_REQ_STATE_FREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tws_get_param(%struct.tws_softc* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.tws_softc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca %struct.tws_request*, align 8
  %13 = alloca %struct.tws_command_packet*, align 8
  %14 = alloca %union.tws_command_giga*, align 8
  %15 = alloca %struct.tws_getset_param*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.tws_softc* %0, %struct.tws_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %19 = load i32, i32* @SUCCESS, align 4
  store i32 %19, i32* %18, align 4
  %20 = load %struct.tws_softc*, %struct.tws_softc** %7, align 8
  %21 = load i64, i64* @TWS_REQ_TYPE_GETSET_PARAM, align 8
  %22 = call %struct.tws_request* @tws_get_request(%struct.tws_softc* %20, i64 %21)
  store %struct.tws_request* %22, %struct.tws_request** %12, align 8
  %23 = load %struct.tws_request*, %struct.tws_request** %12, align 8
  %24 = icmp eq %struct.tws_request* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %5
  %26 = load %struct.tws_softc*, %struct.tws_softc** %7, align 8
  %27 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %26, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %28 = load i32, i32* @FAILURE, align 4
  store i32 %28, i32* %6, align 4
  br label %135

29:                                               ; preds = %5
  %30 = load i32, i32* @TWS_SECTOR_SIZE, align 4
  %31 = load %struct.tws_request*, %struct.tws_request** %12, align 8
  %32 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %31, i32 0, i32 6
  store i32 %30, i32* %32, align 8
  %33 = load i32, i32* @TWS_SECTOR_SIZE, align 4
  %34 = load i32, i32* @M_TWS, align 4
  %35 = load i32, i32* @M_NOWAIT, align 4
  %36 = call i32* @malloc(i32 %33, i32 %34, i32 %35)
  %37 = load %struct.tws_request*, %struct.tws_request** %12, align 8
  %38 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %37, i32 0, i32 1
  store i32* %36, i32** %38, align 8
  %39 = load %struct.tws_request*, %struct.tws_request** %12, align 8
  %40 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %45

43:                                               ; preds = %29
  %44 = load i32, i32* @FAILURE, align 4
  store i32 %44, i32* %6, align 4
  br label %135

45:                                               ; preds = %29
  %46 = load %struct.tws_request*, %struct.tws_request** %12, align 8
  %47 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* @TWS_SECTOR_SIZE, align 4
  %50 = call i32 @bzero(i32* %48, i32 %49)
  %51 = load %struct.tws_request*, %struct.tws_request** %12, align 8
  %52 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = bitcast i32* %53 to %struct.tws_getset_param*
  store %struct.tws_getset_param* %54, %struct.tws_getset_param** %15, align 8
  %55 = load %struct.tws_request*, %struct.tws_request** %12, align 8
  %56 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %55, i32 0, i32 5
  store i32* null, i32** %56, align 8
  %57 = load i32, i32* @TWS_DIR_IN, align 4
  %58 = load %struct.tws_request*, %struct.tws_request** %12, align 8
  %59 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load %struct.tws_request*, %struct.tws_request** %12, align 8
  %61 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %60, i32 0, i32 3
  %62 = load %struct.tws_command_packet*, %struct.tws_command_packet** %61, align 8
  store %struct.tws_command_packet* %62, %struct.tws_command_packet** %13, align 8
  %63 = load %struct.tws_command_packet*, %struct.tws_command_packet** %13, align 8
  %64 = getelementptr inbounds %struct.tws_command_packet, %struct.tws_command_packet* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store %union.tws_command_giga* %65, %union.tws_command_giga** %14, align 8
  %66 = load i32, i32* @TWS_FW_CMD_GET_PARAM, align 4
  %67 = call i32 @BUILD_SGL_OFF__OPCODE(i32 2, i32 %66)
  %68 = load %union.tws_command_giga*, %union.tws_command_giga** %14, align 8
  %69 = bitcast %union.tws_command_giga* %68 to %struct.TYPE_4__*
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 4
  store i32 %67, i32* %70, align 8
  %71 = load %struct.tws_request*, %struct.tws_request** %12, align 8
  %72 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = load %union.tws_command_giga*, %union.tws_command_giga** %14, align 8
  %76 = bitcast %union.tws_command_giga* %75 to %struct.TYPE_4__*
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  store i8* %74, i8** %77, align 8
  %78 = load %union.tws_command_giga*, %union.tws_command_giga** %14, align 8
  %79 = bitcast %union.tws_command_giga* %78 to %struct.TYPE_4__*
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  store i64 0, i64* %80, align 8
  %81 = load %union.tws_command_giga*, %union.tws_command_giga** %14, align 8
  %82 = bitcast %union.tws_command_giga* %81 to %struct.TYPE_4__*
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32 1, i32* %83, align 8
  %84 = load %union.tws_command_giga*, %union.tws_command_giga** %14, align 8
  %85 = bitcast %union.tws_command_giga* %84 to %struct.TYPE_4__*
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  store i32 2, i32* %86, align 4
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @TWS_9K_PARAM_DESCRIPTOR, align 4
  %89 = or i32 %87, %88
  %90 = load %struct.tws_getset_param*, %struct.tws_getset_param** %15, align 8
  %91 = getelementptr inbounds %struct.tws_getset_param, %struct.tws_getset_param* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i8*
  %95 = load %struct.tws_getset_param*, %struct.tws_getset_param** %15, align 8
  %96 = getelementptr inbounds %struct.tws_getset_param, %struct.tws_getset_param* %95, i32 0, i32 3
  store i8* %94, i8** %96, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = load %struct.tws_getset_param*, %struct.tws_getset_param** %15, align 8
  %100 = getelementptr inbounds %struct.tws_getset_param, %struct.tws_getset_param* %99, i32 0, i32 2
  store i64 %98, i64* %100, align 8
  %101 = load %struct.tws_softc*, %struct.tws_softc** %7, align 8
  %102 = load %struct.tws_request*, %struct.tws_request** %12, align 8
  %103 = call i32 @tws_map_request(%struct.tws_softc* %101, %struct.tws_request* %102)
  store i32 %103, i32* %18, align 4
  %104 = load i32, i32* %18, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %125, label %106

106:                                              ; preds = %45
  %107 = load %struct.tws_softc*, %struct.tws_softc** %7, align 8
  %108 = call i64 @tws_poll4_response(%struct.tws_softc* %107, i32* %17)
  store i64 %108, i64* %16, align 8
  %109 = load %struct.tws_softc*, %struct.tws_softc** %7, align 8
  %110 = load %struct.tws_request*, %struct.tws_request** %12, align 8
  %111 = call i32 @tws_unmap_request(%struct.tws_softc* %109, %struct.tws_request* %110)
  %112 = load i64, i64* %16, align 8
  %113 = load i64, i64* @TWS_REQ_TYPE_GETSET_PARAM, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %122

115:                                              ; preds = %106
  %116 = load i8*, i8** %11, align 8
  %117 = load %struct.tws_getset_param*, %struct.tws_getset_param** %15, align 8
  %118 = getelementptr inbounds %struct.tws_getset_param, %struct.tws_getset_param* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @memcpy(i8* %116, i32 %119, i32 %120)
  br label %124

122:                                              ; preds = %106
  %123 = load i32, i32* @FAILURE, align 4
  store i32 %123, i32* %18, align 4
  br label %124

124:                                              ; preds = %122, %115
  br label %125

125:                                              ; preds = %124, %45
  %126 = load %struct.tws_request*, %struct.tws_request** %12, align 8
  %127 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %126, i32 0, i32 1
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* @M_TWS, align 4
  %130 = call i32 @free(i32* %128, i32 %129)
  %131 = load i32, i32* @TWS_REQ_STATE_FREE, align 4
  %132 = load %struct.tws_request*, %struct.tws_request** %12, align 8
  %133 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %132, i32 0, i32 0
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* %18, align 4
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %125, %43, %25
  %136 = load i32, i32* %6, align 4
  ret i32 %136
}

declare dso_local %struct.tws_request* @tws_get_request(%struct.tws_softc*, i64) #1

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, i32, i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @BUILD_SGL_OFF__OPCODE(i32, i32) #1

declare dso_local i32 @tws_map_request(%struct.tws_softc*, %struct.tws_request*) #1

declare dso_local i64 @tws_poll4_response(%struct.tws_softc*, i32*) #1

declare dso_local i32 @tws_unmap_request(%struct.tws_softc*, %struct.tws_request*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
