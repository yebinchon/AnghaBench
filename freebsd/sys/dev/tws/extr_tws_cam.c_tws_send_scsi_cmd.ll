; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_send_scsi_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_cam.c_tws_send_scsi_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32 }
%struct.tws_request = type { i32, i32, i32*, i32, i32, %struct.tws_command_packet*, i32 }
%struct.tws_command_packet = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32*, i32, i64, i64, i32 }

@.str = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@TWS_REQ_TYPE_AEN_FETCH = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tws_aen_complete = common dso_local global i32 0, align 4
@TWS_FW_CMD_EXECUTE_SCSI = common dso_local global i32 0, align 4
@TWS_SECTOR_SIZE = common dso_local global i32 0, align 4
@M_TWS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@TWS_DIR_IN = common dso_local global i32 0, align 4
@TWS_IO_TIMEOUT = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@tws_timeout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tws_send_scsi_cmd(%struct.tws_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tws_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tws_request*, align 8
  %7 = alloca %struct.tws_command_packet*, align 8
  %8 = alloca i32, align 4
  store %struct.tws_softc* %0, %struct.tws_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %10 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.tws_softc* %10, i32 %11)
  %13 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %14 = load i32, i32* @TWS_REQ_TYPE_AEN_FETCH, align 4
  %15 = call %struct.tws_request* @tws_get_request(%struct.tws_softc* %13, i32 %14)
  store %struct.tws_request* %15, %struct.tws_request** %6, align 8
  %16 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %17 = icmp eq %struct.tws_request* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  store i32 %19, i32* %3, align 4
  br label %100

20:                                               ; preds = %2
  %21 = load i32, i32* @tws_aen_complete, align 4
  %22 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %23 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 8
  %24 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %25 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %24, i32 0, i32 5
  %26 = load %struct.tws_command_packet*, %struct.tws_command_packet** %25, align 8
  store %struct.tws_command_packet* %26, %struct.tws_command_packet** %7, align 8
  %27 = load i32, i32* @TWS_FW_CMD_EXECUTE_SCSI, align 4
  %28 = load %struct.tws_command_packet*, %struct.tws_command_packet** %7, align 8
  %29 = getelementptr inbounds %struct.tws_command_packet, %struct.tws_command_packet* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 5
  store i32 %27, i32* %31, align 8
  %32 = load %struct.tws_command_packet*, %struct.tws_command_packet** %7, align 8
  %33 = getelementptr inbounds %struct.tws_command_packet, %struct.tws_command_packet* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 4
  store i64 0, i64* %35, align 8
  %36 = load %struct.tws_command_packet*, %struct.tws_command_packet** %7, align 8
  %37 = getelementptr inbounds %struct.tws_command_packet, %struct.tws_command_packet* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.tws_command_packet*, %struct.tws_command_packet** %7, align 8
  %41 = getelementptr inbounds %struct.tws_command_packet, %struct.tws_command_packet* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 16, i32* %43, align 8
  %44 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %45 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.tws_command_packet*, %struct.tws_command_packet** %7, align 8
  %48 = getelementptr inbounds %struct.tws_command_packet, %struct.tws_command_packet* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  store i32 %46, i32* %50, align 8
  %51 = load i32, i32* %5, align 4
  %52 = load %struct.tws_command_packet*, %struct.tws_command_packet** %7, align 8
  %53 = getelementptr inbounds %struct.tws_command_packet, %struct.tws_command_packet* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %51, i32* %57, align 4
  %58 = load %struct.tws_command_packet*, %struct.tws_command_packet** %7, align 8
  %59 = getelementptr inbounds %struct.tws_command_packet, %struct.tws_command_packet* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 4
  store i32 128, i32* %63, align 4
  %64 = load i32, i32* @TWS_SECTOR_SIZE, align 4
  %65 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %66 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load i32, i32* @TWS_SECTOR_SIZE, align 4
  %68 = load i32, i32* @M_TWS, align 4
  %69 = load i32, i32* @M_NOWAIT, align 4
  %70 = call i32* @malloc(i32 %67, i32 %68, i32 %69)
  %71 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %72 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %71, i32 0, i32 2
  store i32* %70, i32** %72, align 8
  %73 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %74 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = icmp eq i32* %75, null
  br i1 %76, label %77, label %79

77:                                               ; preds = %20
  %78 = load i32, i32* @ENOMEM, align 4
  store i32 %78, i32* %3, align 4
  br label %100

79:                                               ; preds = %20
  %80 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %81 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %80, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* @TWS_SECTOR_SIZE, align 4
  %84 = call i32 @bzero(i32* %82, i32 %83)
  %85 = load i32, i32* @TWS_DIR_IN, align 4
  %86 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %87 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %89 = getelementptr inbounds %struct.tws_request, %struct.tws_request* %88, i32 0, i32 0
  %90 = load i32, i32* @TWS_IO_TIMEOUT, align 4
  %91 = load i32, i32* @hz, align 4
  %92 = mul nsw i32 %90, %91
  %93 = load i32, i32* @tws_timeout, align 4
  %94 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %95 = call i32 @callout_reset(i32* %89, i32 %92, i32 %93, %struct.tws_request* %94)
  %96 = load %struct.tws_softc*, %struct.tws_softc** %4, align 8
  %97 = load %struct.tws_request*, %struct.tws_request** %6, align 8
  %98 = call i32 @tws_map_request(%struct.tws_softc* %96, %struct.tws_request* %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %79, %77, %18
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, %struct.tws_softc*, i32) #1

declare dso_local %struct.tws_request* @tws_get_request(%struct.tws_softc*, i32) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.tws_request*) #1

declare dso_local i32 @tws_map_request(%struct.tws_softc*, %struct.tws_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
