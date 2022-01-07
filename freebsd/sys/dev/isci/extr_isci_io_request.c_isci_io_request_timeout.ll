; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_io_request.c_isci_io_request_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_io_request.c_isci_io_request_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISCI_IO_REQUEST = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ISCI_REMOTE_DEVICE = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ISCI_CONTROLLER* }
%struct.ISCI_CONTROLLER = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isci_io_request_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ISCI_IO_REQUEST*, align 8
  %4 = alloca %struct.ISCI_REMOTE_DEVICE*, align 8
  %5 = alloca %struct.ISCI_CONTROLLER*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.ISCI_IO_REQUEST*
  store %struct.ISCI_IO_REQUEST* %7, %struct.ISCI_IO_REQUEST** %3, align 8
  %8 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %3, align 8
  %9 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @sci_object_get_association(i32 %11)
  %13 = inttoptr i64 %12 to %struct.ISCI_REMOTE_DEVICE*
  store %struct.ISCI_REMOTE_DEVICE* %13, %struct.ISCI_REMOTE_DEVICE** %4, align 8
  %14 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %4, align 8
  %15 = getelementptr inbounds %struct.ISCI_REMOTE_DEVICE, %struct.ISCI_REMOTE_DEVICE* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %17, align 8
  store %struct.ISCI_CONTROLLER* %18, %struct.ISCI_CONTROLLER** %5, align 8
  %19 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %5, align 8
  %20 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %19, i32 0, i32 0
  %21 = call i32 @mtx_lock(i32* %20)
  %22 = load %struct.ISCI_REMOTE_DEVICE*, %struct.ISCI_REMOTE_DEVICE** %4, align 8
  %23 = call i32 @isci_remote_device_reset(%struct.ISCI_REMOTE_DEVICE* %22, i32* null)
  %24 = load %struct.ISCI_CONTROLLER*, %struct.ISCI_CONTROLLER** %5, align 8
  %25 = getelementptr inbounds %struct.ISCI_CONTROLLER, %struct.ISCI_CONTROLLER* %24, i32 0, i32 0
  %26 = call i32 @mtx_unlock(i32* %25)
  ret void
}

declare dso_local i64 @sci_object_get_association(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @isci_remote_device_reset(%struct.ISCI_REMOTE_DEVICE*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
