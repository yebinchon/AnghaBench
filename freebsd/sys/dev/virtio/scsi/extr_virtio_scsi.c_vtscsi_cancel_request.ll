; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_cancel_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_cancel_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32 }
%struct.vtscsi_request = type { i32, i32, %union.ccb* }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@VTSCSI_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"req=%p ccb=%p\0A\00", align 1
@VTSCSI_FLAG_DETACH = common dso_local global i32 0, align 4
@VTSCSI_REQ_FLAG_TIMEOUT_SET = common dso_local global i32 0, align 4
@CAM_NO_HBA = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtscsi_softc*, %struct.vtscsi_request*)* @vtscsi_cancel_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_cancel_request(%struct.vtscsi_softc* %0, %struct.vtscsi_request* %1) #0 {
  %3 = alloca %struct.vtscsi_softc*, align 8
  %4 = alloca %struct.vtscsi_request*, align 8
  %5 = alloca %union.ccb*, align 8
  %6 = alloca i32, align 4
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %3, align 8
  store %struct.vtscsi_request* %1, %struct.vtscsi_request** %4, align 8
  %7 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %8 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %7, i32 0, i32 2
  %9 = load %union.ccb*, %union.ccb** %8, align 8
  store %union.ccb* %9, %union.ccb** %5, align 8
  %10 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %11 = load i32, i32* @VTSCSI_TRACE, align 4
  %12 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %13 = load %union.ccb*, %union.ccb** %5, align 8
  %14 = call i32 @vtscsi_dprintf(%struct.vtscsi_softc* %10, i32 %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.vtscsi_request* %12, %union.ccb* %13)
  %15 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %16 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @VTSCSI_FLAG_DETACH, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %2
  %25 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %26 = call i32 @VTSCSI_LOCK_NOTOWNED(%struct.vtscsi_softc* %25)
  br label %30

27:                                               ; preds = %2
  %28 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %29 = call i32 @VTSCSI_LOCK_OWNED(%struct.vtscsi_softc* %28)
  br label %30

30:                                               ; preds = %27, %24
  %31 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %32 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @VTSCSI_REQ_FLAG_TIMEOUT_SET, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %30
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %42 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %41, i32 0, i32 1
  %43 = call i32 @callout_drain(i32* %42)
  br label %48

44:                                               ; preds = %37
  %45 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %46 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %45, i32 0, i32 1
  %47 = call i32 @callout_stop(i32* %46)
  br label %48

48:                                               ; preds = %44, %40
  br label %49

49:                                               ; preds = %48, %30
  %50 = load %union.ccb*, %union.ccb** %5, align 8
  %51 = icmp ne %union.ccb* %50, null
  br i1 %51, label %52, label %76

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %52
  %56 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %57 = call i32 @VTSCSI_LOCK(%struct.vtscsi_softc* %56)
  %58 = load i32, i32* @CAM_NO_HBA, align 4
  %59 = load %union.ccb*, %union.ccb** %5, align 8
  %60 = bitcast %union.ccb* %59 to %struct.TYPE_2__*
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  br label %67

62:                                               ; preds = %52
  %63 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %64 = load %union.ccb*, %union.ccb** %5, align 8
  %65 = bitcast %union.ccb* %64 to %struct.TYPE_2__*
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  br label %67

67:                                               ; preds = %62, %55
  %68 = load %union.ccb*, %union.ccb** %5, align 8
  %69 = call i32 @xpt_done(%union.ccb* %68)
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %74 = call i32 @VTSCSI_UNLOCK(%struct.vtscsi_softc* %73)
  br label %75

75:                                               ; preds = %72, %67
  br label %76

76:                                               ; preds = %75, %49
  %77 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %78 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %79 = call i32 @vtscsi_enqueue_request(%struct.vtscsi_softc* %77, %struct.vtscsi_request* %78)
  ret void
}

declare dso_local i32 @vtscsi_dprintf(%struct.vtscsi_softc*, i32, i8*, %struct.vtscsi_request*, %union.ccb*) #1

declare dso_local i32 @VTSCSI_LOCK_NOTOWNED(%struct.vtscsi_softc*) #1

declare dso_local i32 @VTSCSI_LOCK_OWNED(%struct.vtscsi_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @VTSCSI_LOCK(%struct.vtscsi_softc*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @VTSCSI_UNLOCK(%struct.vtscsi_softc*) #1

declare dso_local i32 @vtscsi_enqueue_request(%struct.vtscsi_softc*, %struct.vtscsi_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
