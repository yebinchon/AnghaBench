; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_execute_ctrl_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_execute_ctrl_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { %struct.virtqueue* }
%struct.virtqueue = type { i32 }
%struct.vtscsi_request = type { i32* }
%struct.sglist = type { i32 }

@VTSCSI_EXECUTE_POLL = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtscsi_softc*, %struct.vtscsi_request*, %struct.sglist*, i32, i32, i32)* @vtscsi_execute_ctrl_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtscsi_execute_ctrl_req(%struct.vtscsi_softc* %0, %struct.vtscsi_request* %1, %struct.sglist* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.vtscsi_softc*, align 8
  %9 = alloca %struct.vtscsi_request*, align 8
  %10 = alloca %struct.sglist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.virtqueue*, align 8
  %15 = alloca i32, align 4
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %8, align 8
  store %struct.vtscsi_request* %1, %struct.vtscsi_request** %9, align 8
  store %struct.sglist* %2, %struct.sglist** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %8, align 8
  %17 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %16, i32 0, i32 0
  %18 = load %struct.virtqueue*, %struct.virtqueue** %17, align 8
  store %struct.virtqueue* %18, %struct.virtqueue** %14, align 8
  %19 = load i32, i32* %13, align 4
  %20 = load i32, i32* @VTSCSI_EXECUTE_POLL, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %27, label %22

22:                                               ; preds = %6
  %23 = load %struct.vtscsi_request*, %struct.vtscsi_request** %9, align 8
  %24 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br label %27

27:                                               ; preds = %22, %6
  %28 = phi i1 [ true, %6 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @MPASS(i32 %29)
  %31 = load %struct.virtqueue*, %struct.virtqueue** %14, align 8
  %32 = load %struct.vtscsi_request*, %struct.vtscsi_request** %9, align 8
  %33 = load %struct.sglist*, %struct.sglist** %10, align 8
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* %12, align 4
  %36 = call i32 @virtqueue_enqueue(%struct.virtqueue* %31, %struct.vtscsi_request* %32, %struct.sglist* %33, i32 %34, i32 %35)
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %27
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* @ENOSPC, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* @EMSGSIZE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43, %39
  %48 = load i32, i32* @EAGAIN, align 4
  store i32 %48, i32* %15, align 4
  br label %49

49:                                               ; preds = %47, %43
  %50 = load i32, i32* %15, align 4
  store i32 %50, i32* %7, align 4
  br label %62

51:                                               ; preds = %27
  %52 = load %struct.virtqueue*, %struct.virtqueue** %14, align 8
  %53 = call i32 @virtqueue_notify(%struct.virtqueue* %52)
  %54 = load i32, i32* %13, align 4
  %55 = load i32, i32* @VTSCSI_EXECUTE_POLL, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %57, label %61

57:                                               ; preds = %51
  %58 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %8, align 8
  %59 = load %struct.vtscsi_request*, %struct.vtscsi_request** %9, align 8
  %60 = call i32 @vtscsi_poll_ctrl_req(%struct.vtscsi_softc* %58, %struct.vtscsi_request* %59)
  br label %61

61:                                               ; preds = %57, %51
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %61, %49
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @virtqueue_enqueue(%struct.virtqueue*, %struct.vtscsi_request*, %struct.sglist*, i32, i32) #1

declare dso_local i32 @virtqueue_notify(%struct.virtqueue*) #1

declare dso_local i32 @vtscsi_poll_ctrl_req(%struct.vtscsi_softc*, %struct.vtscsi_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
