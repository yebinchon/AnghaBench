; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/network/extr_if_vtbe.c_vtbe_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/network/extr_if_vtbe.c_vtbe_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtbe_softc = type { i32, i32 }

@Q_SEL = common dso_local global i32 0, align 4
@VIRTIO_MMIO_QUEUE_SEL = common dso_local global i32 0, align 4
@Q_PFN = common dso_local global i32 0, align 4
@Q_NOTIFY = common dso_local global i32 0, align 4
@Q_NOTIFY1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vtbe_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtbe_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vtbe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.vtbe_softc*
  store %struct.vtbe_softc* %7, %struct.vtbe_softc** %3, align 8
  %8 = load %struct.vtbe_softc*, %struct.vtbe_softc** %3, align 8
  %9 = call i32 @VTBE_LOCK(%struct.vtbe_softc* %8)
  %10 = load %struct.vtbe_softc*, %struct.vtbe_softc** %3, align 8
  %11 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @PIO_READ(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.vtbe_softc*, %struct.vtbe_softc** %3, align 8
  %15 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @PIO_SET(i32 %16, i32 %17, i32 0)
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @htobe32(i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @Q_SEL, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %1
  %26 = load %struct.vtbe_softc*, %struct.vtbe_softc** %3, align 8
  %27 = load i32, i32* @VIRTIO_MMIO_QUEUE_SEL, align 4
  %28 = call i32 @READ4(%struct.vtbe_softc* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @be32toh(i32 %29)
  %31 = load %struct.vtbe_softc*, %struct.vtbe_softc** %3, align 8
  %32 = getelementptr inbounds %struct.vtbe_softc, %struct.vtbe_softc* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %25, %1
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @Q_PFN, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load %struct.vtbe_softc*, %struct.vtbe_softc** %3, align 8
  %40 = call i32 @vq_init(%struct.vtbe_softc* %39)
  br label %41

41:                                               ; preds = %38, %33
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @Q_NOTIFY, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load %struct.vtbe_softc*, %struct.vtbe_softc** %3, align 8
  %48 = call i32 @vtbe_txfinish_locked(%struct.vtbe_softc* %47)
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @Q_NOTIFY1, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.vtbe_softc*, %struct.vtbe_softc** %3, align 8
  %56 = call i32 @vtbe_rxfinish_locked(%struct.vtbe_softc* %55)
  br label %57

57:                                               ; preds = %54, %49
  %58 = load %struct.vtbe_softc*, %struct.vtbe_softc** %3, align 8
  %59 = call i32 @VTBE_UNLOCK(%struct.vtbe_softc* %58)
  ret void
}

declare dso_local i32 @VTBE_LOCK(%struct.vtbe_softc*) #1

declare dso_local i32 @PIO_READ(i32) #1

declare dso_local i32 @PIO_SET(i32, i32, i32) #1

declare dso_local i32 @htobe32(i32) #1

declare dso_local i32 @READ4(%struct.vtbe_softc*, i32) #1

declare dso_local i32 @be32toh(i32) #1

declare dso_local i32 @vq_init(%struct.vtbe_softc*) #1

declare dso_local i32 @vtbe_txfinish_locked(%struct.vtbe_softc*) #1

declare dso_local i32 @vtbe_rxfinish_locked(%struct.vtbe_softc*) #1

declare dso_local i32 @VTBE_UNLOCK(%struct.vtbe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
