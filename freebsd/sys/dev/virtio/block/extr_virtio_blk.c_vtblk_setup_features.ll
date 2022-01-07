; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_setup_features.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_setup_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtblk_softc = type { i32, i32 }

@VIRTIO_RING_F_INDIRECT_DESC = common dso_local global i32 0, align 4
@VTBLK_FLAG_INDIRECT = common dso_local global i32 0, align 4
@VIRTIO_BLK_F_RO = common dso_local global i32 0, align 4
@VTBLK_FLAG_READONLY = common dso_local global i32 0, align 4
@VIRTIO_BLK_F_BARRIER = common dso_local global i32 0, align 4
@VTBLK_FLAG_BARRIER = common dso_local global i32 0, align 4
@VIRTIO_BLK_F_CONFIG_WCE = common dso_local global i32 0, align 4
@VTBLK_FLAG_WC_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtblk_softc*)* @vtblk_setup_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtblk_setup_features(%struct.vtblk_softc* %0) #0 {
  %2 = alloca %struct.vtblk_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.vtblk_softc* %0, %struct.vtblk_softc** %2, align 8
  %4 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %5 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %8 = call i32 @vtblk_negotiate_features(%struct.vtblk_softc* %7)
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @VIRTIO_RING_F_INDIRECT_DESC, align 4
  %11 = call i64 @virtio_with_feature(i32 %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load i32, i32* @VTBLK_FLAG_INDIRECT, align 4
  %15 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %16 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  br label %19

19:                                               ; preds = %13, %1
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @VIRTIO_BLK_F_RO, align 4
  %22 = call i64 @virtio_with_feature(i32 %20, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load i32, i32* @VTBLK_FLAG_READONLY, align 4
  %26 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %27 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %24, %19
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @VIRTIO_BLK_F_BARRIER, align 4
  %33 = call i64 @virtio_with_feature(i32 %31, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load i32, i32* @VTBLK_FLAG_BARRIER, align 4
  %37 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %38 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %35, %30
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @VIRTIO_BLK_F_CONFIG_WCE, align 4
  %44 = call i64 @virtio_with_feature(i32 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32, i32* @VTBLK_FLAG_WC_CONFIG, align 4
  %48 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %49 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %46, %41
  ret void
}

declare dso_local i32 @vtblk_negotiate_features(%struct.vtblk_softc*) #1

declare dso_local i64 @virtio_with_feature(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
