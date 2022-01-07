; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_controller_construct.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_controller_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }

@SCIC_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@SCIC_LOG_OBJECT_INITIALIZATION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"scic_controller_construct(0x%x, 0x%x) enter\0A\00", align 1
@scic_sds_controller_state_table = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scic_controller_construct(%struct.TYPE_11__* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %7, align 8
  %10 = load i64, i64* %5, align 8
  %11 = inttoptr i64 %10 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %11, %struct.TYPE_12__** %8, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = call i32 @sci_base_object_get_logger(%struct.TYPE_11__* %12)
  %14 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %15 = load i32, i32* @SCIC_LOG_OBJECT_INITIALIZATION, align 4
  %16 = or i32 %14, %15
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = trunc i64 %18 to i32
  %20 = call i32 @SCIC_LOG_TRACE(i32 %19)
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %22 = call i32 @memset(%struct.TYPE_12__* %21, i32 0, i32 16)
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %25 = call i32 @scic_sds_library_get_controller_index(%struct.TYPE_11__* %23, %struct.TYPE_12__* %24)
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %36 = call i32 @sci_base_object_get_logger(%struct.TYPE_11__* %35)
  %37 = load i32, i32* @scic_sds_controller_state_table, align 4
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ARRAY_SIZE(i32 %43)
  %45 = call i32 @sci_base_controller_construct(i32* %34, i32 %36, i32 %37, i32 %40, i32 %44, i32* null)
  %46 = load i64, i64* %5, align 8
  %47 = load i8*, i8** %6, align 8
  %48 = call i32 @sci_object_set_association(i64 %46, i8* %47)
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %50 = call i32 @scic_sds_controller_initialize_state_logging(%struct.TYPE_12__* %49)
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %52 = call i32 @scic_sds_pci_bar_initialization(%struct.TYPE_12__* %51)
  %53 = load i32, i32* @SCI_SUCCESS, align 4
  ret i32 %53
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_11__*) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @scic_sds_library_get_controller_index(%struct.TYPE_11__*, %struct.TYPE_12__*) #1

declare dso_local i32 @sci_base_controller_construct(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @sci_object_set_association(i64, i8*) #1

declare dso_local i32 @scic_sds_controller_initialize_state_logging(%struct.TYPE_12__*) #1

declare dso_local i32 @scic_sds_pci_bar_initialization(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
