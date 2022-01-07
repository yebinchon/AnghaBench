; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_set_param.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32 }
%struct.tws_request = type { i32, i64, %struct.tws_command_packet*, i32, i32, i32*, i32 }
%struct.tws_command_packet = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %union.tws_command_giga }
%union.tws_command_giga = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64, i8*, i32 }
%struct.tws_getset_param = type { i32, i32, i64, i8* }

@TWS_REQ_TYPE_GETSET_PARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"null req\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@TWS_SECTOR_SIZE = common dso_local global i32 0, align 4
@M_TWS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@tws_getset_param_complete = common dso_local global i32 0, align 4
@TWS_DIR_OUT = common dso_local global i32 0, align 4
@TWS_FW_CMD_SET_PARAM = common dso_local global i32 0, align 4
@TWS_9K_PARAM_DESCRIPTOR = common dso_local global i32 0, align 4
@TWS_IOCTL_TIMEOUT = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@tws_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tws_set_param(%struct.tws_softc* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
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
  %16 = alloca i32, align 4
  store %struct.tws_softc* %0, %struct.tws_softc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %17 = load %struct.tws_softc*, %struct.tws_softc** %7, align 8
  %18 = load i32, i32* @TWS_REQ_TYPE_GETSET_PARAM, align 4
  %19 = call %struct.tws_request* @tws_get_request(%struct.tws_softc* %17, i32 %18)
  store %struct.tws_request* %19, %struct.tws_request** %12, align 8
  %20 = load %struct.tws_request*, %struct.tws_request** %12, align 8
  %21 = icmp eq %struct.tws_request* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load %struct.tws_softc*, %struct.tws_softc** %7, align 8
  %24 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %23, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* %6, align 4
  br label %117

26:                                               ; preds = %5
  %27 = load i32, i32* @TWS_SECTOR_SIZE, align 4
  %28 = load %struct.tws_request*, %struct.tws_request** %12, align 8
  %29 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %28, i32 0, i32 6
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* @TWS_SECTOR_SIZE, align 4
  %31 = load i32, i32* @M_TWS, align 4
  %32 = load i32, i32* @M_NOWAIT, align 4
  %33 = call i32* @malloc(i32 %30, i32 %31, i32 %32)
  %34 = load %struct.tws_request*, %struct.tws_request** %12, align 8
  %35 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %34, i32 0, i32 5
  store i32* %33, i32** %35, align 8
  %36 = load %struct.tws_request*, %struct.tws_request** %12, align 8
  %37 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %36, i32 0, i32 5
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %26
  %41 = load i32, i32* @ENOMEM, align 4
  store i32 %41, i32* %6, align 4
  br label %117

42:                                               ; preds = %26
  %43 = load %struct.tws_request*, %struct.tws_request** %12, align 8
  %44 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %43, i32 0, i32 5
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* @TWS_SECTOR_SIZE, align 4
  %47 = call i32 @bzero(i32* %45, i32 %46)
  %48 = load %struct.tws_request*, %struct.tws_request** %12, align 8
  %49 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %48, i32 0, i32 5
  %50 = load i32*, i32** %49, align 8
  %51 = bitcast i32* %50 to %struct.tws_getset_param*
  store %struct.tws_getset_param* %51, %struct.tws_getset_param** %15, align 8
  %52 = load i32, i32* @tws_getset_param_complete, align 4
  %53 = load %struct.tws_request*, %struct.tws_request** %12, align 8
  %54 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* @TWS_DIR_OUT, align 4
  %56 = load %struct.tws_request*, %struct.tws_request** %12, align 8
  %57 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %56, i32 0, i32 3
  store i32 %55, i32* %57, align 8
  %58 = load %struct.tws_request*, %struct.tws_request** %12, align 8
  %59 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %58, i32 0, i32 2
  %60 = load %struct.tws_command_packet*, %struct.tws_command_packet** %59, align 8
  store %struct.tws_command_packet* %60, %struct.tws_command_packet** %13, align 8
  %61 = load %struct.tws_command_packet*, %struct.tws_command_packet** %13, align 8
  %62 = getelementptr inbounds %struct.tws_command_packet, %struct.tws_command_packet* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store %union.tws_command_giga* %63, %union.tws_command_giga** %14, align 8
  %64 = load i32, i32* @TWS_FW_CMD_SET_PARAM, align 4
  %65 = call i32 @BUILD_SGL_OFF__OPCODE(i32 2, i32 %64)
  %66 = load %union.tws_command_giga*, %union.tws_command_giga** %14, align 8
  %67 = bitcast %union.tws_command_giga* %66 to %struct.TYPE_4__*
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 4
  store i32 %65, i32* %68, align 8
  %69 = load %struct.tws_request*, %struct.tws_request** %12, align 8
  %70 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to i8*
  %73 = load %union.tws_command_giga*, %union.tws_command_giga** %14, align 8
  %74 = bitcast %union.tws_command_giga* %73 to %struct.TYPE_4__*
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 3
  store i8* %72, i8** %75, align 8
  %76 = load %union.tws_command_giga*, %union.tws_command_giga** %14, align 8
  %77 = bitcast %union.tws_command_giga* %76 to %struct.TYPE_4__*
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 2
  store i64 0, i64* %78, align 8
  %79 = load %union.tws_command_giga*, %union.tws_command_giga** %14, align 8
  %80 = bitcast %union.tws_command_giga* %79 to %struct.TYPE_4__*
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i32 1, i32* %81, align 8
  %82 = load %union.tws_command_giga*, %union.tws_command_giga** %14, align 8
  %83 = bitcast %union.tws_command_giga* %82 to %struct.TYPE_4__*
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 1
  store i32 2, i32* %84, align 4
  %85 = load i32, i32* %8, align 4
  %86 = load i32, i32* @TWS_9K_PARAM_DESCRIPTOR, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.tws_getset_param*, %struct.tws_getset_param** %15, align 8
  %89 = getelementptr inbounds %struct.tws_getset_param, %struct.tws_getset_param* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sext i32 %90 to i64
  %92 = inttoptr i64 %91 to i8*
  %93 = load %struct.tws_getset_param*, %struct.tws_getset_param** %15, align 8
  %94 = getelementptr inbounds %struct.tws_getset_param, %struct.tws_getset_param* %93, i32 0, i32 3
  store i8* %92, i8** %94, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = load %struct.tws_getset_param*, %struct.tws_getset_param** %15, align 8
  %98 = getelementptr inbounds %struct.tws_getset_param, %struct.tws_getset_param* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  %99 = load %struct.tws_getset_param*, %struct.tws_getset_param** %15, align 8
  %100 = getelementptr inbounds %struct.tws_getset_param, %struct.tws_getset_param* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i8*, i8** %11, align 8
  %103 = load i32, i32* %10, align 4
  %104 = call i32 @memcpy(i32 %101, i8* %102, i32 %103)
  %105 = load %struct.tws_request*, %struct.tws_request** %12, align 8
  %106 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %105, i32 0, i32 0
  %107 = load i32, i32* @TWS_IOCTL_TIMEOUT, align 4
  %108 = load i32, i32* @hz, align 4
  %109 = mul nsw i32 %107, %108
  %110 = load i32, i32* @tws_timeout, align 4
  %111 = load %struct.tws_request*, %struct.tws_request** %12, align 8
  %112 = call i32 @callout_reset(i32* %106, i32 %109, i32 %110, %struct.tws_request* %111)
  %113 = load %struct.tws_softc*, %struct.tws_softc** %7, align 8
  %114 = load %struct.tws_request*, %struct.tws_request** %12, align 8
  %115 = call i32 @tws_map_request(%struct.tws_softc* %113, %struct.tws_request* %114)
  store i32 %115, i32* %16, align 4
  %116 = load i32, i32* %16, align 4
  store i32 %116, i32* %6, align 4
  br label %117

117:                                              ; preds = %42, %40, %22
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local %struct.tws_request* @tws_get_request(%struct.tws_softc*, i32) #1

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, i32, i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @BUILD_SGL_OFF__OPCODE(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.tws_request*) #1

declare dso_local i32 @tws_map_request(%struct.tws_softc*, %struct.tws_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
