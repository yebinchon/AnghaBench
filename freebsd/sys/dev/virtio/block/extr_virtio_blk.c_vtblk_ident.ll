; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_ident.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/block/extr_virtio_blk.c_vtblk_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtblk_softc = type { i32, %struct.disk* }
%struct.disk = type { i32 }
%struct.bio = type { i32, i32, i32 }
%struct.vtblk_request = type { i32, %struct.bio*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64, i32 }

@VIRTIO_BLK_ID_BYTES = common dso_local global i32 0, align 4
@DISK_IDENT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"no_ident\00", align 1
@vtblk_no_ident = common dso_local global i32 0, align 4
@VIRTIO_BLK_T_GET_ID = common dso_local global i32 0, align 4
@BIO_READ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"error getting device identifier: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtblk_softc*)* @vtblk_ident to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtblk_ident(%struct.vtblk_softc* %0) #0 {
  %2 = alloca %struct.vtblk_softc*, align 8
  %3 = alloca %struct.bio, align 4
  %4 = alloca %struct.disk*, align 8
  %5 = alloca %struct.vtblk_request*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vtblk_softc* %0, %struct.vtblk_softc** %2, align 8
  %8 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %9 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %8, i32 0, i32 1
  %10 = load %struct.disk*, %struct.disk** %9, align 8
  store %struct.disk* %10, %struct.disk** %4, align 8
  %11 = load i32, i32* @VIRTIO_BLK_ID_BYTES, align 4
  %12 = load i32, i32* @DISK_IDENT_SIZE, align 4
  %13 = call i32 @MIN(i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %15 = load i32, i32* @vtblk_no_ident, align 4
  %16 = call i64 @vtblk_tunable_int(%struct.vtblk_softc* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %67

19:                                               ; preds = %1
  %20 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %21 = call %struct.vtblk_request* @vtblk_request_dequeue(%struct.vtblk_softc* %20)
  store %struct.vtblk_request* %21, %struct.vtblk_request** %5, align 8
  %22 = load %struct.vtblk_request*, %struct.vtblk_request** %5, align 8
  %23 = icmp eq %struct.vtblk_request* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %67

25:                                               ; preds = %19
  %26 = load %struct.vtblk_request*, %struct.vtblk_request** %5, align 8
  %27 = getelementptr inbounds %struct.vtblk_request, %struct.vtblk_request* %26, i32 0, i32 0
  store i32 -1, i32* %27, align 8
  %28 = load i32, i32* @VIRTIO_BLK_T_GET_ID, align 4
  %29 = load %struct.vtblk_request*, %struct.vtblk_request** %5, align 8
  %30 = getelementptr inbounds %struct.vtblk_request, %struct.vtblk_request* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 8
  %32 = load %struct.vtblk_request*, %struct.vtblk_request** %5, align 8
  %33 = getelementptr inbounds %struct.vtblk_request, %struct.vtblk_request* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 1, i32* %34, align 8
  %35 = load %struct.vtblk_request*, %struct.vtblk_request** %5, align 8
  %36 = getelementptr inbounds %struct.vtblk_request, %struct.vtblk_request* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.vtblk_request*, %struct.vtblk_request** %5, align 8
  %39 = getelementptr inbounds %struct.vtblk_request, %struct.vtblk_request* %38, i32 0, i32 1
  store %struct.bio* %3, %struct.bio** %39, align 8
  %40 = call i32 @g_reset_bio(%struct.bio* %3)
  %41 = load i32, i32* @BIO_READ, align 4
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %3, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = load %struct.disk*, %struct.disk** %4, align 8
  %44 = getelementptr inbounds %struct.disk, %struct.disk* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.bio, %struct.bio* %3, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  %47 = load i32, i32* %6, align 4
  %48 = getelementptr inbounds %struct.bio, %struct.bio* %3, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %50 = call i32 @VTBLK_LOCK(%struct.vtblk_softc* %49)
  %51 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %52 = load %struct.vtblk_request*, %struct.vtblk_request** %5, align 8
  %53 = call i32 @vtblk_poll_request(%struct.vtblk_softc* %51, %struct.vtblk_request* %52)
  store i32 %53, i32* %7, align 4
  %54 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %55 = call i32 @VTBLK_UNLOCK(%struct.vtblk_softc* %54)
  %56 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %57 = load %struct.vtblk_request*, %struct.vtblk_request** %5, align 8
  %58 = call i32 @vtblk_request_enqueue(%struct.vtblk_softc* %56, %struct.vtblk_request* %57)
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %25
  %62 = load %struct.vtblk_softc*, %struct.vtblk_softc** %2, align 8
  %63 = getelementptr inbounds %struct.vtblk_softc, %struct.vtblk_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @device_printf(i32 %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %18, %24, %61, %25
  ret void
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @vtblk_tunable_int(%struct.vtblk_softc*, i8*, i32) #1

declare dso_local %struct.vtblk_request* @vtblk_request_dequeue(%struct.vtblk_softc*) #1

declare dso_local i32 @g_reset_bio(%struct.bio*) #1

declare dso_local i32 @VTBLK_LOCK(%struct.vtblk_softc*) #1

declare dso_local i32 @vtblk_poll_request(%struct.vtblk_softc*, %struct.vtblk_request*) #1

declare dso_local i32 @VTBLK_UNLOCK(%struct.vtblk_softc*) #1

declare dso_local i32 @vtblk_request_enqueue(%struct.vtblk_softc*, %struct.vtblk_request*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
