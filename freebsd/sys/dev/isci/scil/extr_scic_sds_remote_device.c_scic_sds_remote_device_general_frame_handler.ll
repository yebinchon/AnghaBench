; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_remote_device.c_scic_sds_remote_device_general_frame_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_remote_device.c_scic_sds_remote_device_general_frame_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__*, i32* }
%struct.TYPE_10__ = type { i64 (%struct.TYPE_12__*, i32)* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32 }

@SCI_SUCCESS = common dso_local global i64 0, align 8
@SCI_INVALID_HANDLE = common dso_local global %struct.TYPE_12__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @scic_sds_remote_device_general_frame_handler(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call %struct.TYPE_13__* @scic_sds_remote_device_get_controller(i32* %8)
  %10 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %11 = load i32, i32* %4, align 4
  %12 = bitcast %struct.TYPE_11__** %6 to i8**
  %13 = call i64 @scic_sds_unsolicited_frame_control_get_header(i32* %10, i32 %11, i8** %12)
  store i64 %13, i64* %5, align 8
  %14 = load i64, i64* @SCI_SUCCESS, align 8
  %15 = load i64, i64* %5, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %48

17:                                               ; preds = %2
  %18 = load i32*, i32** %3, align 8
  %19 = call %struct.TYPE_13__* @scic_sds_remote_device_get_controller(i32* %18)
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.TYPE_12__* @scic_sds_controller_get_io_request_from_tag(%struct.TYPE_13__* %19, i32 %22)
  store %struct.TYPE_12__* %23, %struct.TYPE_12__** %7, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** @SCI_INVALID_HANDLE, align 8
  %26 = icmp eq %struct.TYPE_12__* %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %17
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = icmp ne i32* %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %27, %17
  %34 = load i32*, i32** %3, align 8
  %35 = call %struct.TYPE_13__* @scic_sds_remote_device_get_controller(i32* %34)
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @scic_sds_controller_release_frame(%struct.TYPE_13__* %35, i32 %36)
  br label %47

38:                                               ; preds = %27
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load i64 (%struct.TYPE_12__*, i32)*, i64 (%struct.TYPE_12__*, i32)** %42, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i64 %43(%struct.TYPE_12__* %44, i32 %45)
  store i64 %46, i64* %5, align 8
  br label %47

47:                                               ; preds = %38, %33
  br label %48

48:                                               ; preds = %47, %2
  %49 = load i64, i64* %5, align 8
  ret i64 %49
}

declare dso_local i64 @scic_sds_unsolicited_frame_control_get_header(i32*, i32, i8**) #1

declare dso_local %struct.TYPE_13__* @scic_sds_remote_device_get_controller(i32*) #1

declare dso_local %struct.TYPE_12__* @scic_sds_controller_get_io_request_from_tag(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @scic_sds_controller_release_frame(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
