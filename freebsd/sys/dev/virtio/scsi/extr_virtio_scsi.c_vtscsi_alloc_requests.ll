; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_alloc_requests.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_alloc_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32, i32, i32 }
%struct.vtscsi_request = type { i32 }

@VTSCSI_FLAG_INDIRECT = common dso_local global i32 0, align 4
@VTSCSI_MIN_SEGMENTS = common dso_local global i32 0, align 4
@VTSCSI_RESERVED_REQUESTS = common dso_local global i64 0, align 8
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtscsi_softc*)* @vtscsi_alloc_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtscsi_alloc_requests(%struct.vtscsi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtscsi_softc*, align 8
  %4 = alloca %struct.vtscsi_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %3, align 8
  %7 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %8 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @virtqueue_size(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %12 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @VTSCSI_FLAG_INDIRECT, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @VTSCSI_MIN_SEGMENTS, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sdiv i32 %19, %18
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %17, %1
  %22 = load i64, i64* @VTSCSI_RESERVED_REQUESTS, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = add nsw i64 %24, %22
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %27

27:                                               ; preds = %50, %21
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %27
  %32 = load i32, i32* @M_DEVBUF, align 4
  %33 = load i32, i32* @M_NOWAIT, align 4
  %34 = call %struct.vtscsi_request* @malloc(i32 4, i32 %32, i32 %33)
  store %struct.vtscsi_request* %34, %struct.vtscsi_request** %4, align 8
  %35 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %36 = icmp eq %struct.vtscsi_request* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %31
  %38 = load i32, i32* @ENOMEM, align 4
  store i32 %38, i32* %2, align 4
  br label %54

39:                                               ; preds = %31
  %40 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %41 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %42 = call i32 @vtscsi_init_request(%struct.vtscsi_softc* %40, %struct.vtscsi_request* %41)
  %43 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %44 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %48 = load %struct.vtscsi_request*, %struct.vtscsi_request** %4, align 8
  %49 = call i32 @vtscsi_enqueue_request(%struct.vtscsi_softc* %47, %struct.vtscsi_request* %48)
  br label %50

50:                                               ; preds = %39
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %27

53:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %37
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @virtqueue_size(i32) #1

declare dso_local %struct.vtscsi_request* @malloc(i32, i32, i32) #1

declare dso_local i32 @vtscsi_init_request(%struct.vtscsi_softc*, %struct.vtscsi_request*) #1

declare dso_local i32 @vtscsi_enqueue_request(%struct.vtscsi_softc*, %struct.vtscsi_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
