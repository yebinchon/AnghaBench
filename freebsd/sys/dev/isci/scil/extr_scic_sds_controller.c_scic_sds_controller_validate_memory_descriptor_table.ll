; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_validate_memory_descriptor_table.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_validate_memory_descriptor_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32, i32, i32* }

@SCU_MDE_COMPLETION_QUEUE = common dso_local global i64 0, align 8
@SCU_COMPLETION_RAM_ALIGNMENT = common dso_local global i32 0, align 4
@SCI_MDE_ATTRIBUTE_CACHEABLE = common dso_local global i32 0, align 4
@SCI_MDE_ATTRIBUTE_PHYSICALLY_CONTIGUOUS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@SCI_FAILURE_UNSUPPORTED_INFORMATION_FIELD = common dso_local global i32 0, align 4
@SCU_MDE_REMOTE_NODE_CONTEXT = common dso_local global i64 0, align 8
@SCU_REMOTE_NODE_CONTEXT_ALIGNMENT = common dso_local global i32 0, align 4
@SCU_MDE_TASK_CONTEXT = common dso_local global i64 0, align 8
@SCU_TASK_CONTEXT_ALIGNMENT = common dso_local global i32 0, align 4
@SCU_MDE_UF_BUFFER = common dso_local global i64 0, align 8
@SCU_UNSOLICITED_FRAME_BUFFER_ALIGNMENT = common dso_local global i32 0, align 4
@SCI_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scic_sds_controller_validate_memory_descriptor_table(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 4
  %7 = load i32*, i32** %6, align 8
  %8 = load i64, i64* @SCU_MDE_COMPLETION_QUEUE, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  %10 = load i32, i32* @SCU_COMPLETION_RAM_ALIGNMENT, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 4, %14
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @SCI_MDE_ATTRIBUTE_CACHEABLE, align 4
  %18 = load i32, i32* @SCI_MDE_ATTRIBUTE_PHYSICALLY_CONTIGUOUS, align 4
  %19 = or i32 %17, %18
  %20 = call i64 @sci_base_mde_is_valid(i32* %9, i32 %10, i32 %16, i32 %19)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @FALSE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @SCI_FAILURE_UNSUPPORTED_INFORMATION_FIELD, align 4
  store i32 %25, i32* %2, align 4
  br label %86

26:                                               ; preds = %1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @SCU_MDE_REMOTE_NODE_CONTEXT, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* @SCU_REMOTE_NODE_CONTEXT_ALIGNMENT, align 4
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @SCI_MDE_ATTRIBUTE_PHYSICALLY_CONTIGUOUS, align 4
  %40 = call i64 @sci_base_mde_is_valid(i32* %31, i32 %32, i32 %38, i32 %39)
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* %4, align 8
  %42 = load i64, i64* @FALSE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %26
  %45 = load i32, i32* @SCI_FAILURE_UNSUPPORTED_INFORMATION_FIELD, align 4
  store i32 %45, i32* %2, align 4
  br label %86

46:                                               ; preds = %26
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 4
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @SCU_MDE_TASK_CONTEXT, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* @SCU_TASK_CONTEXT_ALIGNMENT, align 4
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 4
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* @SCI_MDE_ATTRIBUTE_PHYSICALLY_CONTIGUOUS, align 4
  %60 = call i64 @sci_base_mde_is_valid(i32* %51, i32 %52, i32 %58, i32 %59)
  store i64 %60, i64* %4, align 8
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* @FALSE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %46
  %65 = load i32, i32* @SCI_FAILURE_UNSUPPORTED_INFORMATION_FIELD, align 4
  store i32 %65, i32* %2, align 4
  br label %86

66:                                               ; preds = %46
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @SCU_MDE_UF_BUFFER, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* @SCU_UNSOLICITED_FRAME_BUFFER_ALIGNMENT, align 4
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @scic_sds_unsolicited_frame_control_get_mde_size(i32 %75)
  %77 = load i32, i32* @SCI_MDE_ATTRIBUTE_PHYSICALLY_CONTIGUOUS, align 4
  %78 = call i64 @sci_base_mde_is_valid(i32* %71, i32 %72, i32 %76, i32 %77)
  store i64 %78, i64* %4, align 8
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* @FALSE, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %66
  %83 = load i32, i32* @SCI_FAILURE_UNSUPPORTED_INFORMATION_FIELD, align 4
  store i32 %83, i32* %2, align 4
  br label %86

84:                                               ; preds = %66
  %85 = load i32, i32* @SCI_SUCCESS, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %84, %82, %64, %44, %24
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i64 @sci_base_mde_is_valid(i32*, i32, i32, i32) #1

declare dso_local i32 @scic_sds_unsolicited_frame_control_get_mde_size(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
