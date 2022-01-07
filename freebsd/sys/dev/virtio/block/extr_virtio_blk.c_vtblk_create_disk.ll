; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_create_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_create_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtblk_softc = type { i32, %struct.disk* }
%struct.disk = type { i32, i64 }

@.str = private unnamed_addr constant [29 x i8] c"%juMB (%ju %u byte sectors)\0A\00", align 1
@DISK_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtblk_softc*)* @vtblk_create_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtblk_create_disk(%struct.vtblk_softc* %0) #0 {
  %2 = alloca %struct.vtblk_softc*, align 8
  %3 = alloca %struct.disk*, align 8
  store %struct.vtblk_softc* %0, %struct.vtblk_softc** %2, align 8
  %4 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %5 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %4, i32 0, i32 1
  %6 = load %struct.disk*, %struct.disk** %5, align 8
  store %struct.disk* %6, %struct.disk** %3, align 8
  %7 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %8 = call i32 @vtblk_ident(%struct.vtblk_softc* %7)
  %9 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %10 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.disk*, %struct.disk** %3, align 8
  %13 = getelementptr inbounds %struct.disk, %struct.disk* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = trunc i64 %14 to i32
  %16 = ashr i32 %15, 20
  %17 = load %struct.disk*, %struct.disk** %3, align 8
  %18 = getelementptr inbounds %struct.disk, %struct.disk* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = load %struct.disk*, %struct.disk** %3, align 8
  %22 = getelementptr inbounds %struct.disk, %struct.disk* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sdiv i32 %20, %23
  %25 = load %struct.disk*, %struct.disk** %3, align 8
  %26 = getelementptr inbounds %struct.disk, %struct.disk* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @device_printf(i32 %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %24, i32 %27)
  %29 = load %struct.disk*, %struct.disk** %3, align 8
  %30 = load i32, i32* @DISK_VERSION, align 4
  %31 = call i32 @disk_create(%struct.disk* %29, i32 %30)
  ret void
}

declare dso_local i32 @vtblk_ident(%struct.vtblk_softc*) #1

declare dso_local i32 @device_printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @disk_create(%struct.disk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
