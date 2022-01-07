; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/balloon/extr_virtio_balloon.c_vtballoon_send_page_frames.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/balloon/extr_virtio_balloon.c_vtballoon_send_page_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtballoon_softc = type { i32 }
%struct.virtqueue = type opaque
%struct.sglist = type { i32 }
%struct.sglist_seg = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"error adding page frames to sglist\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"error enqueuing page frames to virtqueue\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"vtbspf\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"unexpected balloon operation response\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtballoon_softc*, %struct.virtqueue*, i32)* @vtballoon_send_page_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtballoon_send_page_frames(%struct.vtballoon_softc* %0, %struct.virtqueue* %1, i32 %2) #0 {
  %4 = alloca %struct.vtballoon_softc*, align 8
  %5 = alloca %struct.virtqueue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sglist, align 4
  %8 = alloca [1 x %struct.sglist_seg], align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.vtballoon_softc* %0, %struct.vtballoon_softc** %4, align 8
  store %struct.virtqueue* %1, %struct.virtqueue** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = getelementptr inbounds [1 x %struct.sglist_seg], [1 x %struct.sglist_seg]* %8, i64 0, i64 0
  %12 = call i32 @sglist_init(%struct.sglist* %7, i32 1, %struct.sglist_seg* %11)
  %13 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %4, align 8
  %14 = getelementptr inbounds %struct.vtballoon_softc, %struct.vtballoon_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 4
  %19 = trunc i64 %18 to i32
  %20 = call i32 @sglist_append(%struct.sglist* %7, i32 %15, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.virtqueue*, %struct.virtqueue** %5, align 8
  %26 = bitcast %struct.virtqueue* %25 to i8*
  %27 = load %struct.virtqueue*, %struct.virtqueue** %5, align 8
  %28 = bitcast %struct.virtqueue* %27 to i8*
  %29 = call i32 @virtqueue_enqueue(i8* %26, i8* %28, %struct.sglist* %7, i32 1, i32 0)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @KASSERT(i32 %32, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.virtqueue*, %struct.virtqueue** %5, align 8
  %35 = bitcast %struct.virtqueue* %34 to i8*
  %36 = call i32 @virtqueue_notify(i8* %35)
  %37 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %4, align 8
  %38 = call i32 @VTBALLOON_LOCK(%struct.vtballoon_softc* %37)
  br label %39

39:                                               ; preds = %44, %3
  %40 = load %struct.virtqueue*, %struct.virtqueue** %5, align 8
  %41 = bitcast %struct.virtqueue* %40 to i8*
  %42 = call i8* @virtqueue_dequeue(i8* %41, i32* null)
  store i8* %42, i8** %9, align 8
  %43 = icmp eq i8* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %4, align 8
  %46 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %4, align 8
  %47 = call i32 @VTBALLOON_MTX(%struct.vtballoon_softc* %46)
  %48 = call i32 @msleep(%struct.vtballoon_softc* %45, i32 %47, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 0)
  br label %39

49:                                               ; preds = %39
  %50 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %4, align 8
  %51 = call i32 @VTBALLOON_UNLOCK(%struct.vtballoon_softc* %50)
  %52 = load i8*, i8** %9, align 8
  %53 = load %struct.virtqueue*, %struct.virtqueue** %5, align 8
  %54 = bitcast %struct.virtqueue* %53 to i8*
  %55 = icmp eq i8* %52, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @KASSERT(i32 %56, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @sglist_init(%struct.sglist*, i32, %struct.sglist_seg*) #1

declare dso_local i32 @sglist_append(%struct.sglist*, i32, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @virtqueue_enqueue(i8*, i8*, %struct.sglist*, i32, i32) #1

declare dso_local i32 @virtqueue_notify(i8*) #1

declare dso_local i32 @VTBALLOON_LOCK(%struct.vtballoon_softc*) #1

declare dso_local i8* @virtqueue_dequeue(i8*, i32*) #1

declare dso_local i32 @msleep(%struct.vtballoon_softc*, i32, i32, i8*, i32) #1

declare dso_local i32 @VTBALLOON_MTX(%struct.vtballoon_softc*) #1

declare dso_local i32 @VTBALLOON_UNLOCK(%struct.vtballoon_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
