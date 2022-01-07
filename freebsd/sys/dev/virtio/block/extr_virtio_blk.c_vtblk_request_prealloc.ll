; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_request_prealloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_request_prealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtblk_softc = type { i32, i32, i32 }
%struct.vtblk_request = type { i32, i32 }

@VTBLK_FLAG_INDIRECT = common dso_local global i32 0, align 4
@VTBLK_MIN_SEGMENTS = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtblk_softc*)* @vtblk_request_prealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtblk_request_prealloc(%struct.vtblk_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtblk_softc*, align 8
  %4 = alloca %struct.vtblk_request*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vtblk_softc* %0, %struct.vtblk_softc** %3, align 8
  %7 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %8 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @virtqueue_size(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %12 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @VTBLK_FLAG_INDIRECT, align 4
  %15 = and i32 %13, %14
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load i32, i32* @VTBLK_MIN_SEGMENTS, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sdiv i32 %19, %18
  store i32 %20, i32* %6, align 4
  br label %21

21:                                               ; preds = %17, %1
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %54, %21
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %22
  %27 = load i32, i32* @M_DEVBUF, align 4
  %28 = load i32, i32* @M_NOWAIT, align 4
  %29 = call %struct.vtblk_request* @malloc(i32 8, i32 %27, i32 %28)
  store %struct.vtblk_request* %29, %struct.vtblk_request** %4, align 8
  %30 = load %struct.vtblk_request*, %struct.vtblk_request** %4, align 8
  %31 = icmp eq %struct.vtblk_request* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @ENOMEM, align 4
  store i32 %33, i32* %2, align 4
  br label %58

34:                                               ; preds = %26
  %35 = load %struct.vtblk_request*, %struct.vtblk_request** %4, align 8
  %36 = getelementptr inbounds %struct.vtblk_request, %struct.vtblk_request* %35, i32 0, i32 1
  %37 = call i32 @sglist_count(i32* %36, i32 4)
  %38 = icmp eq i32 %37, 1
  %39 = zext i1 %38 to i32
  %40 = call i32 @MPASS(i32 %39)
  %41 = load %struct.vtblk_request*, %struct.vtblk_request** %4, align 8
  %42 = getelementptr inbounds %struct.vtblk_request, %struct.vtblk_request* %41, i32 0, i32 0
  %43 = call i32 @sglist_count(i32* %42, i32 4)
  %44 = icmp eq i32 %43, 1
  %45 = zext i1 %44 to i32
  %46 = call i32 @MPASS(i32 %45)
  %47 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %48 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.vtblk_softc*, %struct.vtblk_softc** %3, align 8
  %52 = load %struct.vtblk_request*, %struct.vtblk_request** %4, align 8
  %53 = call i32 @vtblk_request_enqueue(%struct.vtblk_softc* %51, %struct.vtblk_request* %52)
  br label %54

54:                                               ; preds = %34
  %55 = load i32, i32* %5, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %5, align 4
  br label %22

57:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %32
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @virtqueue_size(i32) #1

declare dso_local %struct.vtblk_request* @malloc(i32, i32, i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @sglist_count(i32*, i32) #1

declare dso_local i32 @vtblk_request_enqueue(%struct.vtblk_softc*, %struct.vtblk_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
