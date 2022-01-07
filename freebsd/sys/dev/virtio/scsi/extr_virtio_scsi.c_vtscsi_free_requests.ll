; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_free_requests.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_free_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i64 }
%struct.vtscsi_request = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"request callout still active\00", align 1
@M_DEVBUF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"leaked requests: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtscsi_softc*)* @vtscsi_free_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_free_requests(%struct.vtscsi_softc* %0) #0 {
  %2 = alloca %struct.vtscsi_softc*, align 8
  %3 = alloca %struct.vtscsi_request*, align 8
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %2, align 8
  br label %4

4:                                                ; preds = %8, %1
  %5 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %6 = call %struct.vtscsi_request* @vtscsi_dequeue_request(%struct.vtscsi_softc* %5)
  store %struct.vtscsi_request* %6, %struct.vtscsi_request** %3, align 8
  %7 = icmp ne %struct.vtscsi_request* %6, null
  br i1 %7, label %8, label %22

8:                                                ; preds = %4
  %9 = load %struct.vtscsi_request*, %struct.vtscsi_request** %3, align 8
  %10 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %9, i32 0, i32 0
  %11 = call i64 @callout_active(i32* %10)
  %12 = icmp eq i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = call i32 @KASSERT(i32 %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %16 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, -1
  store i64 %18, i64* %16, align 8
  %19 = load %struct.vtscsi_request*, %struct.vtscsi_request** %3, align 8
  %20 = load i32, i32* @M_DEVBUF, align 4
  %21 = call i32 @free(%struct.vtscsi_request* %19, i32 %20)
  br label %4

22:                                               ; preds = %4
  %23 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %24 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %29 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = call i32 @KASSERT(i32 %27, i8* %31)
  ret void
}

declare dso_local %struct.vtscsi_request* @vtscsi_dequeue_request(%struct.vtscsi_softc*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @callout_active(i32*) #1

declare dso_local i32 @free(%struct.vtscsi_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
