; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_domain.c_scic_cb_port_hard_reset_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scif_sas_domain.c_scic_cb_port_hard_reset_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }

@SCIF_LOG_OBJECT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"scic_cb_port_hard_reset_complete(0x%x, 0x%x, 0x%x) enter\0A\00", align 1
@SCI_SAS_HARD_RESET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scic_cb_port_hard_reset_complete(i32 %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i64 @sci_object_get_association(i32 %11)
  %13 = inttoptr i64 %12 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %7, align 8
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %9, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %10, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %19 = call i32 @sci_base_object_get_logger(%struct.TYPE_14__* %18)
  %20 = load i32, i32* @SCIF_LOG_OBJECT_DOMAIN, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i64, i64* %6, align 8
  %24 = trunc i64 %23 to i32
  %25 = call i32 @SCIF_LOG_TRACE(i32 %24)
  br label %26

26:                                               ; preds = %62, %3
  %27 = load i32*, i32** %9, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %63

29:                                               ; preds = %26
  %30 = load i32*, i32** %9, align 8
  %31 = call i64 @sci_fast_list_get_object(i32* %30)
  %32 = inttoptr i64 %31 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %32, %struct.TYPE_12__** %10, align 8
  %33 = load i32*, i32** %9, align 8
  %34 = call i32* @sci_fast_list_get_next(i32* %33)
  store i32* %34, i32** %9, align 8
  %35 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %36 = call i64 @scif_sas_task_request_get_function(%struct.TYPE_12__* %35)
  %37 = load i64, i64* @SCI_SAS_HARD_RESET, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %62

39:                                               ; preds = %29
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** %42, align 8
  store %struct.TYPE_13__* %43, %struct.TYPE_13__** %8, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %45, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %48 = icmp eq %struct.TYPE_14__* %46, %47
  br i1 %48, label %49, label %61

49:                                               ; preds = %39
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @scic_remote_device_reset_complete(i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = call i64 @sci_object_get_association(i32 %54)
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %58 = load i64, i64* %6, align 8
  %59 = trunc i64 %58 to i32
  %60 = call i32 @scif_cb_task_request_complete(i64 %55, %struct.TYPE_13__* %56, %struct.TYPE_12__* %57, i32 %59)
  br label %63

61:                                               ; preds = %39
  br label %62

62:                                               ; preds = %61, %29
  br label %26

63:                                               ; preds = %49, %26
  ret void
}

declare dso_local i64 @sci_object_get_association(i32) #1

declare dso_local i32 @SCIF_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(%struct.TYPE_14__*) #1

declare dso_local i64 @sci_fast_list_get_object(i32*) #1

declare dso_local i32* @sci_fast_list_get_next(i32*) #1

declare dso_local i64 @scif_sas_task_request_get_function(%struct.TYPE_12__*) #1

declare dso_local i32 @scic_remote_device_reset_complete(i32) #1

declare dso_local i32 @scif_cb_task_request_complete(i64, %struct.TYPE_13__*, %struct.TYPE_12__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
