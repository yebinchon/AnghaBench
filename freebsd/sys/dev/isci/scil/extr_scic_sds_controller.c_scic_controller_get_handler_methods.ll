; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_controller_get_handler_methods.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_controller_get_handler_methods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@SCI_FAILURE_UNSUPPORTED_MESSAGE_COUNT = common dso_local global i32 0, align 4
@scic_sds_controller_legacy_interrupt_handler = common dso_local global i32 0, align 4
@scic_sds_controller_legacy_completion_handler = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i32 0, align 4
@scic_sds_controller_single_vector_interrupt_handler = common dso_local global i32 0, align 4
@scic_sds_controller_single_vector_completion_handler = common dso_local global i32 0, align 4
@scic_sds_controller_normal_vector_interrupt_handler = common dso_local global i32 0, align 4
@scic_sds_controller_normal_vector_completion_handler = common dso_local global i32 0, align 4
@scic_sds_controller_error_vector_interrupt_handler = common dso_local global i32 0, align 4
@scic_sds_controller_error_vector_completion_handler = common dso_local global i32 0, align 4
@scic_sds_controller_polling_interrupt_handler = common dso_local global i32 0, align 4
@scic_sds_controller_polling_completion_handler = common dso_local global i32 0, align 4
@SCI_FAILURE_INVALID_PARAMETER_VALUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scic_controller_get_handler_methods(i32 %0, i32 %1, %struct.TYPE_3__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %6, align 8
  %8 = load i32, i32* @SCI_FAILURE_UNSUPPORTED_MESSAGE_COUNT, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %4, align 4
  switch i32 %9, label %74 [
    i32 130, label %10
    i32 129, label %24
    i32 128, label %60
  ]

10:                                               ; preds = %3
  %11 = load i32, i32* %5, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load i32, i32* @scic_sds_controller_legacy_interrupt_handler, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* @scic_sds_controller_legacy_completion_handler, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i64 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %13, %10
  br label %76

24:                                               ; preds = %3
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load i32, i32* @scic_sds_controller_single_vector_interrupt_handler, align 4
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @scic_sds_controller_single_vector_completion_handler, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %36, i32* %7, align 4
  br label %59

37:                                               ; preds = %24
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 2
  br i1 %39, label %40, label %58

40:                                               ; preds = %37
  %41 = load i32, i32* @scic_sds_controller_normal_vector_interrupt_handler, align 4
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @scic_sds_controller_normal_vector_completion_handler, align 4
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* @scic_sds_controller_error_vector_interrupt_handler, align 4
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @scic_sds_controller_error_vector_completion_handler, align 4
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i64 1
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32 %53, i32* %56, align 4
  %57 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %40, %37
  br label %59

59:                                               ; preds = %58, %27
  br label %76

60:                                               ; preds = %3
  %61 = load i32, i32* %5, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %60
  %64 = load i32, i32* @scic_sds_controller_polling_interrupt_handler, align 4
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  store i32 %64, i32* %67, align 4
  %68 = load i32, i32* @scic_sds_controller_polling_completion_handler, align 4
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i32 %68, i32* %71, align 4
  %72 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %63, %60
  br label %76

74:                                               ; preds = %3
  %75 = load i32, i32* @SCI_FAILURE_INVALID_PARAMETER_VALUE, align 4
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %74, %73, %59, %23
  %77 = load i32, i32* %7, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
