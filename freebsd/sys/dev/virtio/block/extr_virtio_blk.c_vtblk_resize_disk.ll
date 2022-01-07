; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_resize_disk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_resize_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtblk_softc = type { %struct.disk*, i32 }
%struct.disk = type { i32, i64 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"resized to %juMB (%ju %u byte sectors)\0A\00", align 1
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"disk_resize(9) failed, error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtblk_softc*, i64)* @vtblk_resize_disk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtblk_resize_disk(%struct.vtblk_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.vtblk_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.disk*, align 8
  %7 = alloca i32, align 4
  store %struct.vtblk_softc* %0, %struct.vtblk_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %9 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %5, align 4
  %11 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %12 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %11, i32 0, i32 0
  %13 = load %struct.disk*, %struct.disk** %12, align 8
  store %struct.disk* %13, %struct.disk** %6, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.disk*, %struct.disk** %6, align 8
  %16 = getelementptr inbounds %struct.disk, %struct.disk* %15, i32 0, i32 1
  store i64 %14, i64* %16, align 8
  %17 = load i64, i64* @bootverbose, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.disk*, %struct.disk** %6, align 8
  %22 = getelementptr inbounds %struct.disk, %struct.disk* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = ashr i32 %24, 20
  %26 = load %struct.disk*, %struct.disk** %6, align 8
  %27 = getelementptr inbounds %struct.disk, %struct.disk* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = load %struct.disk*, %struct.disk** %6, align 8
  %31 = getelementptr inbounds %struct.disk, %struct.disk* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sdiv i32 %29, %32
  %34 = load %struct.disk*, %struct.disk** %6, align 8
  %35 = getelementptr inbounds %struct.disk, %struct.disk* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %19, %2
  %39 = load %struct.disk*, %struct.disk** %6, align 8
  %40 = load i32, i32* @M_NOWAIT, align 4
  %41 = call i32 @disk_resize(%struct.disk* %39, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (i32, i8*, i32, ...) @device_printf(i32 %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %44, %38
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @disk_resize(%struct.disk*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
