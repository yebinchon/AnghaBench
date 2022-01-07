; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_strategy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_strategy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.vtblk_softc* }
%struct.vtblk_softc = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@VTBLK_FLAG_READONLY = common dso_local global i32 0, align 4
@BIO_WRITE = common dso_local global i64 0, align 8
@BIO_FLUSH = common dso_local global i64 0, align 8
@EROFS = common dso_local global i32 0, align 4
@VTBLK_FLAG_DETACH = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @vtblk_strategy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtblk_strategy(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.vtblk_softc*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %4 = load %struct.bio*, %struct.bio** %2, align 8
  %5 = getelementptr inbounds %struct.bio, %struct.bio* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.vtblk_softc*, %struct.vtblk_softc** %7, align 8
  store %struct.vtblk_softc* %8, %struct.vtblk_softc** %3, align 8
  %9 = icmp eq %struct.vtblk_softc* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.bio*, %struct.bio** %2, align 8
  %12 = load i32, i32* @EINVAL, align 4
  %13 = call i32 @vtblk_bio_done(%struct.vtblk_softc* null, %struct.bio* %11, i32 %12)
  br label %63

14:                                               ; preds = %1
  %15 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %16 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @VTBLK_FLAG_READONLY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %14
  %22 = load %struct.bio*, %struct.bio** %2, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @BIO_WRITE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %21
  %28 = load %struct.bio*, %struct.bio** %2, align 8
  %29 = getelementptr inbounds %struct.bio, %struct.bio* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @BIO_FLUSH, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27, %21
  %34 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %35 = load %struct.bio*, %struct.bio** %2, align 8
  %36 = load i32, i32* @EROFS, align 4
  %37 = call i32 @vtblk_bio_done(%struct.vtblk_softc* %34, %struct.bio* %35, i32 %36)
  br label %63

38:                                               ; preds = %27, %14
  %39 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %40 = call i32 @VTBLK_LOCK(%struct.vtblk_softc* %39)
  %41 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %42 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @VTBLK_FLAG_DETACH, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %38
  %48 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %49 = call i32 @VTBLK_UNLOCK(%struct.vtblk_softc* %48)
  %50 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %51 = load %struct.bio*, %struct.bio** %2, align 8
  %52 = load i32, i32* @ENXIO, align 4
  %53 = call i32 @vtblk_bio_done(%struct.vtblk_softc* %50, %struct.bio* %51, i32 %52)
  br label %63

54:                                               ; preds = %38
  %55 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %56 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %55, i32 0, i32 1
  %57 = load %struct.bio*, %struct.bio** %2, align 8
  %58 = call i32 @bioq_insert_tail(i32* %56, %struct.bio* %57)
  %59 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %60 = call i32 @vtblk_startio(%struct.vtblk_softc* %59)
  %61 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %62 = call i32 @VTBLK_UNLOCK(%struct.vtblk_softc* %61)
  br label %63

63:                                               ; preds = %54, %47, %33, %10
  ret void
}

declare dso_local i32 @vtblk_bio_done(%struct.vtblk_softc*, %struct.bio*, i32) #1

declare dso_local i32 @VTBLK_LOCK(%struct.vtblk_softc*) #1

declare dso_local i32 @VTBLK_UNLOCK(%struct.vtblk_softc*) #1

declare dso_local i32 @bioq_insert_tail(i32*, %struct.bio*) #1

declare dso_local i32 @vtblk_startio(%struct.vtblk_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
