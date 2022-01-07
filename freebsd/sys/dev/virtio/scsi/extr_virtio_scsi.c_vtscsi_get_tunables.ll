; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_get_tunables.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_get_tunables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"hw.vtscsi.debug_level\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"dev.vtscsi.%d.debug_level\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtscsi_softc*)* @vtscsi_get_tunables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_get_tunables(%struct.vtscsi_softc* %0) #0 {
  %2 = alloca %struct.vtscsi_softc*, align 8
  %3 = alloca [64 x i8], align 16
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %2, align 8
  %4 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %5 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %4, i32 0, i32 0
  %6 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %5)
  %7 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %8 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %9 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @device_get_unit(i32 %10)
  %12 = call i32 @snprintf(i8* %7, i32 64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %11)
  %13 = getelementptr inbounds [64 x i8], [64 x i8]* %3, i64 0, i64 0
  %14 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %2, align 8
  %15 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %14, i32 0, i32 0
  %16 = call i32 @TUNABLE_INT_FETCH(i8* %13, i32* %15)
  ret void
}

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
