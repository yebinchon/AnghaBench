; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_enqueue_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_enqueue_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32, i32 }
%struct.vtscsi_request = type { i32, i32, i64, i32, i32*, i32*, i32*, %struct.vtscsi_softc* }

@.str = private unnamed_addr constant [37 x i8] c"non-matching request vsr_softc %p/%p\00", align 1
@VTSCSI_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"req=%p\0A\00", align 1
@VTSCSI_REQUEST = common dso_local global i32 0, align 4
@VTSCSI_REQ_STATE_FREE = common dso_local global i32 0, align 4
@vsr_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtscsi_softc*, %struct.vtscsi_request*)* @vtscsi_enqueue_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_enqueue_request(%struct.vtscsi_softc* %0, %struct.vtscsi_request* %1) #0 {
  %3 = alloca %struct.vtscsi_softc*, align 8
  %4 = alloca %struct.vtscsi_request*, align 8
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %3, align 8
  store %struct.vtscsi_request* %1, %struct.vtscsi_request** %4, align 8
  %5 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %6 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %5, i32 0, i32 7
  %7 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %6, align 8
  %8 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %9 = icmp eq %struct.vtscsi_softc* %7, %8
  %10 = zext i1 %9 to i32
  %11 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %12 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %11, i32 0, i32 7
  %13 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %12, align 8
  %14 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %15 = bitcast %struct.vtscsi_softc* %14 to i8*
  %16 = call i32 @KASSERT(i32 %10, i8* %15)
  %17 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %18 = load i32, i32* @VTSCSI_TRACE, align 4
  %19 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %20 = call i32 @vtscsi_dprintf(%struct.vtscsi_softc* %17, i32 %18, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.vtscsi_request* %19)
  %21 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %22 = load i32, i32* @VTSCSI_REQUEST, align 4
  %23 = call i64 @vtscsi_thaw_simq(%struct.vtscsi_softc* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %27 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @xpt_release_simq(i32 %28, i32 1)
  br label %30

30:                                               ; preds = %25, %2
  %31 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %32 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %31, i32 0, i32 6
  store i32* null, i32** %32, align 8
  %33 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %34 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %33, i32 0, i32 5
  store i32* null, i32** %34, align 8
  %35 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %36 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %35, i32 0, i32 4
  store i32* null, i32** %36, align 8
  %37 = load i32, i32* @VTSCSI_REQ_STATE_FREE, align 4
  %38 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %39 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %41 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %43 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %42, i32 0, i32 1
  %44 = call i32 @bzero(i32* %43, i32 4)
  %45 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %46 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %45, i32 0, i32 0
  %47 = call i32 @bzero(i32* %46, i32 4)
  %48 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %49 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %48, i32 0, i32 0
  %50 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %51 = load i32, i32* @vsr_link, align 4
  %52 = call i32 @TAILQ_INSERT_TAIL(i32* %49, %struct.vtscsi_request* %50, i32 %51)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @vtscsi_dprintf(%struct.vtscsi_softc*, i32, i8*, %struct.vtscsi_request*) #1

declare dso_local i64 @vtscsi_thaw_simq(%struct.vtscsi_softc*, i32) #1

declare dso_local i32 @xpt_release_simq(i32, i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.vtscsi_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
