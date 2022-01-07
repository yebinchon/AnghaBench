; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_read_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_read_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32 }
%struct.virtio_scsi_config = type { i32 }

@num_queues = common dso_local global i32 0, align 4
@seg_max = common dso_local global i32 0, align 4
@max_sectors = common dso_local global i32 0, align 4
@cmd_per_lun = common dso_local global i32 0, align 4
@event_info_size = common dso_local global i32 0, align 4
@sense_size = common dso_local global i32 0, align 4
@cdb_size = common dso_local global i32 0, align 4
@max_channel = common dso_local global i32 0, align 4
@max_target = common dso_local global i32 0, align 4
@max_lun = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtscsi_softc*, %struct.virtio_scsi_config*)* @vtscsi_read_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_read_config(%struct.vtscsi_softc* %0, %struct.virtio_scsi_config* %1) #0 {
  %3 = alloca %struct.vtscsi_softc*, align 8
  %4 = alloca %struct.virtio_scsi_config*, align 8
  %5 = alloca i32, align 4
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %3, align 8
  store %struct.virtio_scsi_config* %1, %struct.virtio_scsi_config** %4, align 8
  %6 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %7 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* %5, align 4
  %9 = load %struct.virtio_scsi_config*, %struct.virtio_scsi_config** %4, align 8
  %10 = call i32 @bzero(%struct.virtio_scsi_config* %9, i32 4)
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @num_queues, align 4
  %13 = load %struct.virtio_scsi_config*, %struct.virtio_scsi_config** %4, align 8
  %14 = call i32 @VTSCSI_GET_CONFIG(i32 %11, i32 %12, %struct.virtio_scsi_config* %13)
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @seg_max, align 4
  %17 = load %struct.virtio_scsi_config*, %struct.virtio_scsi_config** %4, align 8
  %18 = call i32 @VTSCSI_GET_CONFIG(i32 %15, i32 %16, %struct.virtio_scsi_config* %17)
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @max_sectors, align 4
  %21 = load %struct.virtio_scsi_config*, %struct.virtio_scsi_config** %4, align 8
  %22 = call i32 @VTSCSI_GET_CONFIG(i32 %19, i32 %20, %struct.virtio_scsi_config* %21)
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @cmd_per_lun, align 4
  %25 = load %struct.virtio_scsi_config*, %struct.virtio_scsi_config** %4, align 8
  %26 = call i32 @VTSCSI_GET_CONFIG(i32 %23, i32 %24, %struct.virtio_scsi_config* %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @event_info_size, align 4
  %29 = load %struct.virtio_scsi_config*, %struct.virtio_scsi_config** %4, align 8
  %30 = call i32 @VTSCSI_GET_CONFIG(i32 %27, i32 %28, %struct.virtio_scsi_config* %29)
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @sense_size, align 4
  %33 = load %struct.virtio_scsi_config*, %struct.virtio_scsi_config** %4, align 8
  %34 = call i32 @VTSCSI_GET_CONFIG(i32 %31, i32 %32, %struct.virtio_scsi_config* %33)
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @cdb_size, align 4
  %37 = load %struct.virtio_scsi_config*, %struct.virtio_scsi_config** %4, align 8
  %38 = call i32 @VTSCSI_GET_CONFIG(i32 %35, i32 %36, %struct.virtio_scsi_config* %37)
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @max_channel, align 4
  %41 = load %struct.virtio_scsi_config*, %struct.virtio_scsi_config** %4, align 8
  %42 = call i32 @VTSCSI_GET_CONFIG(i32 %39, i32 %40, %struct.virtio_scsi_config* %41)
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @max_target, align 4
  %45 = load %struct.virtio_scsi_config*, %struct.virtio_scsi_config** %4, align 8
  %46 = call i32 @VTSCSI_GET_CONFIG(i32 %43, i32 %44, %struct.virtio_scsi_config* %45)
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @max_lun, align 4
  %49 = load %struct.virtio_scsi_config*, %struct.virtio_scsi_config** %4, align 8
  %50 = call i32 @VTSCSI_GET_CONFIG(i32 %47, i32 %48, %struct.virtio_scsi_config* %49)
  ret void
}

declare dso_local i32 @bzero(%struct.virtio_scsi_config*, i32) #1

declare dso_local i32 @VTSCSI_GET_CONFIG(i32, i32, %struct.virtio_scsi_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
