; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtblk_softc = type { i32 }

@VTBLK_FLAG_SUSPEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vtblk_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtblk_suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtblk_softc*, align 8
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.vtblk_softc* @device_get_softc(i32 %5)
  store %struct.vtblk_softc* %6, %struct.vtblk_softc** %3, align 8
  %7 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %8 = call i32 @VTBLK_LOCK(%struct.vtblk_softc* %7)
  %9 = load i32, i32* @VTBLK_FLAG_SUSPEND, align 4
  %10 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %11 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %15 = call i32 @vtblk_quiesce(%struct.vtblk_softc* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load i32, i32* @VTBLK_FLAG_SUSPEND, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %22 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %18, %1
  %26 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %27 = call i32 @VTBLK_UNLOCK(%struct.vtblk_softc* %26)
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local %struct.vtblk_softc* @device_get_softc(i32) #1

declare dso_local i32 @VTBLK_LOCK(%struct.vtblk_softc*) #1

declare dso_local i32 @vtblk_quiesce(%struct.vtblk_softc*) #1

declare dso_local i32 @VTBLK_UNLOCK(%struct.vtblk_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
