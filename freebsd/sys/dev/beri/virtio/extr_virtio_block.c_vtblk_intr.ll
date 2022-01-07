; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/extr_virtio_block.c_vtblk_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/beri/virtio/extr_virtio_block.c_vtblk_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beri_vtblk_softc = type { i32 }

@Q_PFN = common dso_local global i32 0, align 4
@Q_NOTIFY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vtblk_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtblk_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.beri_vtblk_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.beri_vtblk_softc*
  store %struct.beri_vtblk_softc* %7, %struct.beri_vtblk_softc** %3, align 8
  %8 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %3, align 8
  %9 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @PIO_READ(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %3, align 8
  %13 = getelementptr inbounds %struct.beri_vtblk_softc, %struct.beri_vtblk_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @PIO_SET(i32 %14, i32 %15, i32 0)
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @htobe32(i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @Q_PFN, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %3, align 8
  %25 = call i32 @vq_init(%struct.beri_vtblk_softc* %24)
  br label %26

26:                                               ; preds = %23, %1
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @Q_NOTIFY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.beri_vtblk_softc*, %struct.beri_vtblk_softc** %3, align 8
  %33 = call i32 @wakeup(%struct.beri_vtblk_softc* %32)
  br label %34

34:                                               ; preds = %31, %26
  ret void
}

declare dso_local i32 @PIO_READ(i32) #1

declare dso_local i32 @PIO_SET(i32, i32, i32) #1

declare dso_local i32 @htobe32(i32) #1

declare dso_local i32 @vq_init(%struct.beri_vtblk_softc*) #1

declare dso_local i32 @wakeup(%struct.beri_vtblk_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
