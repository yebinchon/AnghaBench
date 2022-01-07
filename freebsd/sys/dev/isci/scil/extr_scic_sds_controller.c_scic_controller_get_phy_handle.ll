; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_controller_get_phy_handle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_controller_get_phy_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32* }

@SCIC_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"scic_controller_get_phy_handle(0x%x, 0x%x, 0x%x) enter\0A\00", align 1
@SCI_SUCCESS = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_PORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Controller:0x%x PhyId:0x%x invalid phy index\0A\00", align 1
@SCI_FAILURE_INVALID_PHY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scic_controller_get_phy_handle(%struct.TYPE_5__* %0, i64 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32**, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32** %2, i32*** %7, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_5__* %9, %struct.TYPE_5__** %8, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = call i32 @sci_base_object_get_logger(%struct.TYPE_5__* %10)
  %12 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = load i32**, i32*** %7, align 8
  %16 = ptrtoint i32** %15 to i32
  %17 = call i32 @SCIC_LOG_TRACE(i32 %16)
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i64 @ARRAY_SIZE(i32* %21)
  %23 = icmp ult i64 %18, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32**, i32*** %7, align 8
  store i32* %29, i32** %30, align 8
  %31 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %31, i32* %4, align 4
  br label %43

32:                                               ; preds = %3
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %34 = call i32 @sci_base_object_get_logger(%struct.TYPE_5__* %33)
  %35 = load i32, i32* @SCIC_LOG_OBJECT_PORT, align 4
  %36 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %37 = or i32 %35, %36
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %39 = load i64, i64* %6, align 8
  %40 = trunc i64 %39 to i32
  %41 = call i32 @SCIC_LOG_ERROR(i32 %40)
  %42 = load i32, i32* @SCI_FAILURE_INVALID_PHY, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %32, %24
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_5__*) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @SCIC_LOG_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
