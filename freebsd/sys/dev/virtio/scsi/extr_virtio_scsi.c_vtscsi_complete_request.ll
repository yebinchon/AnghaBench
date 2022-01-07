; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_complete_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_complete_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_request = type { i32, i32, i32 (i32, %struct.vtscsi_request*)* }

@VTSCSI_REQ_FLAG_POLLED = common dso_local global i32 0, align 4
@VTSCSI_REQ_FLAG_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vtscsi_request*)* @vtscsi_complete_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_complete_request(%struct.vtscsi_request* %0) #0 {
  %2 = alloca %struct.vtscsi_request*, align 8
  store %struct.vtscsi_request* %0, %struct.vtscsi_request** %2, align 8
  %3 = load %struct.vtscsi_request*, %struct.vtscsi_request** %2, align 8
  %4 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = load i32, i32* @VTSCSI_REQ_FLAG_POLLED, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, i32* @VTSCSI_REQ_FLAG_COMPLETE, align 4
  %11 = load %struct.vtscsi_request*, %struct.vtscsi_request** %2, align 8
  %12 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 8
  br label %15

15:                                               ; preds = %9, %1
  %16 = load %struct.vtscsi_request*, %struct.vtscsi_request** %2, align 8
  %17 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %16, i32 0, i32 2
  %18 = load i32 (i32, %struct.vtscsi_request*)*, i32 (i32, %struct.vtscsi_request*)** %17, align 8
  %19 = icmp ne i32 (i32, %struct.vtscsi_request*)* %18, null
  br i1 %19, label %20, label %29

20:                                               ; preds = %15
  %21 = load %struct.vtscsi_request*, %struct.vtscsi_request** %2, align 8
  %22 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %21, i32 0, i32 2
  %23 = load i32 (i32, %struct.vtscsi_request*)*, i32 (i32, %struct.vtscsi_request*)** %22, align 8
  %24 = load %struct.vtscsi_request*, %struct.vtscsi_request** %2, align 8
  %25 = getelementptr inbounds %struct.vtscsi_request, %struct.vtscsi_request* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.vtscsi_request*, %struct.vtscsi_request** %2, align 8
  %28 = call i32 %23(i32 %26, %struct.vtscsi_request* %27)
  br label %29

29:                                               ; preds = %20, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
