; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_timedout_scsi_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_timedout_scsi_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.vtscsi_request = type { i64, i32, i32, %struct.vtscsi_softc* }

@VTSCSI_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"timedout req=%p ccb=%p state=%#x\0A\00", align 1
@VTSCSI_FLAG_DETACH = common dso_local global i32 0, align 4
@VTSCSI_REQ_STATE_INUSE = common dso_local global i64 0, align 8
@VTSCSI_REQ_FLAG_TIMEOUT_SET = common dso_local global i32 0, align 4
@VTSCSI_REQ_STATE_FREE = common dso_local global i64 0, align 8
@VTSCSI_REQ_STATE_TIMEDOUT = common dso_local global i64 0, align 8
@VTSCSI_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"resetting bus\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vtscsi_timedout_scsi_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_timedout_scsi_cmd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vtscsi_softc*, align 8
  %4 = alloca %struct.vtscsi_request*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.vtscsi_request*
  store %struct.vtscsi_request* %6, %struct.vtscsi_request** %4, align 8
  %7 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %8 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %7, i32 0, i32 3
  %9 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %8, align 8
  store %struct.vtscsi_softc* %9, %struct.vtscsi_softc** %3, align 8
  %10 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %11 = load i32, i32* @VTSCSI_INFO, align 4
  %12 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %13 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %14 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %17 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 (%struct.vtscsi_softc*, i32, i8*, ...) @vtscsi_dprintf(%struct.vtscsi_softc* %10, i32 %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), %struct.vtscsi_request* %12, i32 %15, i64 %18)
  %20 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %21 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @VTSCSI_FLAG_DETACH, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  br label %73

27:                                               ; preds = %1
  %28 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %29 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @VTSCSI_REQ_STATE_INUSE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %40, label %33

33:                                               ; preds = %27
  %34 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %35 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @VTSCSI_REQ_FLAG_TIMEOUT_SET, align 4
  %38 = and i32 %36, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33, %27
  br label %73

41:                                               ; preds = %33
  %42 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %43 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %44 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @vtscsi_complete_vq(%struct.vtscsi_softc* %42, i32 %45)
  %47 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %48 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @VTSCSI_REQ_STATE_FREE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %73

53:                                               ; preds = %41
  %54 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %55 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = load i64, i64* @VTSCSI_REQ_STATE_TIMEDOUT, align 8
  %60 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %61 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  %62 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %63 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %64 = call i64 @vtscsi_abort_timedout_scsi_cmd(%struct.vtscsi_softc* %62, %struct.vtscsi_request* %63)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %53
  br label %73

67:                                               ; preds = %53
  %68 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %69 = load i32, i32* @VTSCSI_ERROR, align 4
  %70 = call i32 (%struct.vtscsi_softc*, i32, i8*, ...) @vtscsi_dprintf(%struct.vtscsi_softc* %68, i32 %69, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %71 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %72 = call i32 @vtscsi_reset_bus(%struct.vtscsi_softc* %71)
  br label %73

73:                                               ; preds = %67, %66, %52, %40, %26
  ret void
}

declare dso_local i32 @vtscsi_dprintf(%struct.vtscsi_softc*, i32, i8*, ...) #1

declare dso_local i32 @vtscsi_complete_vq(%struct.vtscsi_softc*, i32) #1

declare dso_local i64 @vtscsi_abort_timedout_scsi_cmd(%struct.vtscsi_softc*, %struct.vtscsi_request*) #1

declare dso_local i32 @vtscsi_reset_bus(%struct.vtscsi_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
