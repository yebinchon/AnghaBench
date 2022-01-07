; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_has_remote_devices_stopping.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_has_remote_devices_stopping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__** }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }

@SCI_BASE_REMOTE_DEVICE_STATE_STOPPING = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scic_sds_controller_has_remote_devices_stopping(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i64 0, i64* %4, align 8
  br label %5

5:                                                ; preds = %35, %1
  %6 = load i64, i64* %4, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ult i64 %6, %9
  br i1 %10, label %11, label %38

11:                                               ; preds = %5
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %14, i64 %15
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = icmp ne %struct.TYPE_8__* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %11
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %22, i64 %23
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SCI_BASE_REMOTE_DEVICE_STATE_STOPPING, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  %33 = load i32, i32* @TRUE, align 4
  store i32 %33, i32* %2, align 4
  br label %40

34:                                               ; preds = %19, %11
  br label %35

35:                                               ; preds = %34
  %36 = load i64, i64* %4, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %4, align 8
  br label %5

38:                                               ; preds = %5
  %39 = load i32, i32* @FALSE, align 4
  store i32 %39, i32* %2, align 4
  br label %40

40:                                               ; preds = %38, %32
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
