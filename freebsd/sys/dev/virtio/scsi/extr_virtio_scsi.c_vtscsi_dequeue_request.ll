; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_dequeue_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_dequeue_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_request = type { i32 }
%struct.vtscsi_softc = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@VTSCSI_REQ_STATE_INUSE = common dso_local global i32 0, align 4
@vsr_link = common dso_local global i32 0, align 4
@VTSCSI_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"req=%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vtscsi_request* (%struct.vtscsi_softc*)* @vtscsi_dequeue_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vtscsi_request* @vtscsi_dequeue_request(%struct.vtscsi_softc* %0) #0 {
  %2 = alloca %struct.vtscsi_softc*, align 8
  %3 = alloca %struct.vtscsi_request*, align 8
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %2, align 8
  %4 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %5 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %4, i32 0, i32 1
  %6 = call %struct.vtscsi_request* @TAILQ_FIRST(i32* %5)
  store %struct.vtscsi_request* %6, %struct.vtscsi_request** %3, align 8
  %7 = load %struct.vtscsi_request*, %struct.vtscsi_request** %3, align 8
  %8 = icmp ne %struct.vtscsi_request* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load i32, i32* @VTSCSI_REQ_STATE_INUSE, align 4
  %11 = load %struct.vtscsi_request*, %struct.vtscsi_request** %3, align 8
  %12 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %14 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %13, i32 0, i32 1
  %15 = load %struct.vtscsi_request*, %struct.vtscsi_request** %3, align 8
  %16 = load i32, i32* @vsr_link, align 4
  %17 = call i32 @TAILQ_REMOVE(i32* %14, %struct.vtscsi_request* %15, i32 %16)
  br label %24

18:                                               ; preds = %1
  %19 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %20 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %18, %9
  %25 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %26 = load i32, i32* @VTSCSI_TRACE, align 4
  %27 = load %struct.vtscsi_request*, %struct.vtscsi_request** %3, align 8
  %28 = call i32 @vtscsi_dprintf(%struct.vtscsi_softc* %25, i32 %26, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.vtscsi_request* %27)
  %29 = load %struct.vtscsi_request*, %struct.vtscsi_request** %3, align 8
  ret %struct.vtscsi_request* %29
}

declare dso_local %struct.vtscsi_request* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.vtscsi_request*, i32) #1

declare dso_local i32 @vtscsi_dprintf(%struct.vtscsi_softc*, i32, i8*, %struct.vtscsi_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
