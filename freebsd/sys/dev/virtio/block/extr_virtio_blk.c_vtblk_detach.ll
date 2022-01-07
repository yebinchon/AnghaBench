; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtblk_softc = type { i32*, i32*, i32 }

@VTBLK_FLAG_DETACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @vtblk_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtblk_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtblk_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.vtblk_softc* @device_get_softc(i32 %4)
  store %struct.vtblk_softc* %5, %struct.vtblk_softc** %3, align 8
  %6 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %7 = call i32 @VTBLK_LOCK(%struct.vtblk_softc* %6)
  %8 = load i32, i32* @VTBLK_FLAG_DETACH, align 4
  %9 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %10 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = or i32 %11, %8
  store i32 %12, i32* %10, align 8
  %13 = load i32, i32* %2, align 4
  %14 = call i64 @device_is_attached(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %18 = call i32 @vtblk_stop(%struct.vtblk_softc* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %21 = call i32 @VTBLK_UNLOCK(%struct.vtblk_softc* %20)
  %22 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %23 = call i32 @vtblk_drain(%struct.vtblk_softc* %22)
  %24 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %25 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %30 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @disk_destroy(i32* %31)
  %33 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %34 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %28, %19
  %36 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %37 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %42 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @sglist_free(i32* %43)
  %45 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %46 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %45, i32 0, i32 0
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %40, %35
  %48 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %49 = call i32 @VTBLK_LOCK_DESTROY(%struct.vtblk_softc* %48)
  ret i32 0
}

declare dso_local %struct.vtblk_softc* @device_get_softc(i32) #1

declare dso_local i32 @VTBLK_LOCK(%struct.vtblk_softc*) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @vtblk_stop(%struct.vtblk_softc*) #1

declare dso_local i32 @VTBLK_UNLOCK(%struct.vtblk_softc*) #1

declare dso_local i32 @vtblk_drain(%struct.vtblk_softc*) #1

declare dso_local i32 @disk_destroy(i32*) #1

declare dso_local i32 @sglist_free(i32*) #1

declare dso_local i32 @VTBLK_LOCK_DESTROY(%struct.vtblk_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
