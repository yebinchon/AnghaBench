; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_bio_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_bio_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtblk_softc = type { i32 }
%struct.bio = type { i32, i32, i32, i32 }

@BIO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtblk_softc*, %struct.bio*, i32)* @vtblk_bio_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtblk_bio_done(%struct.vtblk_softc* %0, %struct.bio* %1, i32 %2) #0 {
  %4 = alloca %struct.vtblk_softc*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca i32, align 4
  store %struct.vtblk_softc* %0, %struct.vtblk_softc** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.vtblk_softc*, %struct.vtblk_softc** %4, align 8
  %8 = icmp ne %struct.vtblk_softc* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %3
  %10 = load %struct.vtblk_softc*, %struct.vtblk_softc** %4, align 8
  %11 = call i32 @VTBLK_LOCK_ASSERT_NOTOWNED(%struct.vtblk_softc* %10)
  br label %12

12:                                               ; preds = %9, %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %29

15:                                               ; preds = %12
  %16 = load %struct.bio*, %struct.bio** %5, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.bio*, %struct.bio** %5, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 3
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.bio*, %struct.bio** %5, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* @BIO_ERROR, align 4
  %25 = load %struct.bio*, %struct.bio** %5, align 8
  %26 = getelementptr inbounds %struct.bio, %struct.bio* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %15, %12
  %30 = load %struct.bio*, %struct.bio** %5, align 8
  %31 = call i32 @biodone(%struct.bio* %30)
  ret void
}

declare dso_local i32 @VTBLK_LOCK_ASSERT_NOTOWNED(%struct.vtblk_softc*) #1

declare dso_local i32 @biodone(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
