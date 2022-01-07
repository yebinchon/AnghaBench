; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_io_request.c_scif_cb_io_request_get_task_attribute.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/extr_isci_io_request.c_scif_cb_io_request_get_task_attribute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ISCI_IO_REQUEST = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@CAM_TAG_ACTION_VALID = common dso_local global i32 0, align 4
@SCI_SAS_HEAD_OF_QUEUE_ATTRIBUTE = common dso_local global i32 0, align 4
@SCI_SAS_ORDERED_ATTRIBUTE = common dso_local global i32 0, align 4
@SCI_SAS_ACA_ATTRIBUTE = common dso_local global i32 0, align 4
@SCI_SAS_SIMPLE_ATTRIBUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_cb_io_request_get_task_attribute(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ISCI_IO_REQUEST*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.ISCI_IO_REQUEST*
  store %struct.ISCI_IO_REQUEST* %6, %struct.ISCI_IO_REQUEST** %3, align 8
  %7 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %3, align 8
  %8 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CAM_TAG_ACTION_VALID, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %1
  %17 = load %struct.ISCI_IO_REQUEST*, %struct.ISCI_IO_REQUEST** %3, align 8
  %18 = getelementptr inbounds %struct.ISCI_IO_REQUEST, %struct.ISCI_IO_REQUEST* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %29 [
    i32 129, label %23
    i32 128, label %25
    i32 130, label %27
  ]

23:                                               ; preds = %16
  %24 = load i32, i32* @SCI_SAS_HEAD_OF_QUEUE_ATTRIBUTE, align 4
  store i32 %24, i32* %4, align 4
  br label %31

25:                                               ; preds = %16
  %26 = load i32, i32* @SCI_SAS_ORDERED_ATTRIBUTE, align 4
  store i32 %26, i32* %4, align 4
  br label %31

27:                                               ; preds = %16
  %28 = load i32, i32* @SCI_SAS_ACA_ATTRIBUTE, align 4
  store i32 %28, i32* %4, align 4
  br label %31

29:                                               ; preds = %16
  %30 = load i32, i32* @SCI_SAS_SIMPLE_ATTRIBUTE, align 4
  store i32 %30, i32* %4, align 4
  br label %31

31:                                               ; preds = %29, %27, %25, %23
  br label %34

32:                                               ; preds = %1
  %33 = load i32, i32* @SCI_SAS_SIMPLE_ATTRIBUTE, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %31
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
