; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_alloc_virtqueues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_alloc_virtqueues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32, i32, i32, i32, i32 }
%struct.vq_alloc_info = type { i32 }

@vtscsi_control_vq_intr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s control\00", align 1
@vtscsi_event_vq_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"%s event\00", align 1
@vtscsi_request_vq_intr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"%s request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtscsi_softc*)* @vtscsi_alloc_virtqueues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtscsi_alloc_virtqueues(%struct.vtscsi_softc* %0) #0 {
  %2 = alloca %struct.vtscsi_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [3 x %struct.vq_alloc_info], align 4
  %5 = alloca i32, align 4
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %2, align 8
  %6 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %7 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %3, align 4
  store i32 3, i32* %5, align 4
  %9 = getelementptr inbounds [3 x %struct.vq_alloc_info], [3 x %struct.vq_alloc_info]* %4, i64 0, i64 0
  %10 = load i32, i32* @vtscsi_control_vq_intr, align 4
  %11 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %12 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %13 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %12, i32 0, i32 3
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @device_get_nameunit(i32 %14)
  %16 = call i32 @VQ_ALLOC_INFO_INIT(%struct.vq_alloc_info* %9, i32 0, i32 %10, %struct.vtscsi_softc* %11, i32* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = getelementptr inbounds [3 x %struct.vq_alloc_info], [3 x %struct.vq_alloc_info]* %4, i64 0, i64 1
  %18 = load i32, i32* @vtscsi_event_vq_intr, align 4
  %19 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %20 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %21 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %20, i32 0, i32 2
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_get_nameunit(i32 %22)
  %24 = call i32 @VQ_ALLOC_INFO_INIT(%struct.vq_alloc_info* %17, i32 0, i32 %18, %struct.vtscsi_softc* %19, i32* %21, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = getelementptr inbounds [3 x %struct.vq_alloc_info], [3 x %struct.vq_alloc_info]* %4, i64 0, i64 2
  %26 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %27 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @vtscsi_request_vq_intr, align 4
  %30 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %31 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %32 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @device_get_nameunit(i32 %33)
  %35 = call i32 @VQ_ALLOC_INFO_INIT(%struct.vq_alloc_info* %25, i32 %28, i32 %29, %struct.vtscsi_softc* %30, i32* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* %5, align 4
  %38 = getelementptr inbounds [3 x %struct.vq_alloc_info], [3 x %struct.vq_alloc_info]* %4, i64 0, i64 0
  %39 = call i32 @virtio_alloc_virtqueues(i32 %36, i32 0, i32 %37, %struct.vq_alloc_info* %38)
  ret i32 %39
}

declare dso_local i32 @VQ_ALLOC_INFO_INIT(%struct.vq_alloc_info*, i32, i32, %struct.vtscsi_softc*, i32*, i8*, i32) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @virtio_alloc_virtqueues(i32, i32, i32, %struct.vq_alloc_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
