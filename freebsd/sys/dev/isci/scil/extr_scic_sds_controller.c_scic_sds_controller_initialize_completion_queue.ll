; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_initialize_completion_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_initialize_completion_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64, i32*, i64 }

@POINTER = common dso_local global i32 0, align 4
@EVENT_POINTER = common dso_local global i32 0, align 4
@ENABLE = common dso_local global i32 0, align 4
@EVENT_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scic_sds_controller_initialize_completion_queue(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = sub i64 %11, 1
  %13 = call i64 @SMU_CQC_QUEUE_LIMIT_SET(i64 %12)
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = sub nsw i64 %16, 1
  %18 = call i64 @SMU_CQC_EVENT_LIMIT_SET(i64 %17)
  %19 = or i64 %13, %18
  store i64 %19, i64* %4, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @SMU_CQC_WRITE(%struct.TYPE_6__* %20, i64 %21)
  %23 = load i32, i32* @POINTER, align 4
  %24 = call i64 @SMU_CQGR_GEN_VAL(i32 %23, i32 0)
  %25 = load i32, i32* @EVENT_POINTER, align 4
  %26 = call i64 @SMU_CQGR_GEN_VAL(i32 %25, i32 0)
  %27 = or i64 %24, %26
  %28 = load i32, i32* @ENABLE, align 4
  %29 = call i64 @SMU_CQGR_GEN_BIT(i32 %28)
  %30 = or i64 %27, %29
  %31 = load i32, i32* @EVENT_ENABLE, align 4
  %32 = call i64 @SMU_CQGR_GEN_BIT(i32 %31)
  %33 = or i64 %30, %32
  store i64 %33, i64* %5, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @SMU_CQGR_WRITE(%struct.TYPE_6__* %34, i64 %35)
  %37 = load i64, i64* %5, align 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load i32, i32* @POINTER, align 4
  %41 = call i64 @SMU_CQPR_GEN_VAL(i32 %40, i32 0)
  %42 = load i32, i32* @EVENT_POINTER, align 4
  %43 = call i64 @SMU_CQPR_GEN_VAL(i32 %42, i32 0)
  %44 = or i64 %41, %43
  store i64 %44, i64* %6, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @SMU_CQPR_WRITE(%struct.TYPE_6__* %45, i64 %46)
  store i64 0, i64* %3, align 8
  br label %48

48:                                               ; preds = %60, %1
  %49 = load i64, i64* %3, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %49, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %48
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %3, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  store i32 -2147483648, i32* %59, align 4
  br label %60

60:                                               ; preds = %54
  %61 = load i64, i64* %3, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %3, align 8
  br label %48

63:                                               ; preds = %48
  ret void
}

declare dso_local i64 @SMU_CQC_QUEUE_LIMIT_SET(i64) #1

declare dso_local i64 @SMU_CQC_EVENT_LIMIT_SET(i64) #1

declare dso_local i32 @SMU_CQC_WRITE(%struct.TYPE_6__*, i64) #1

declare dso_local i64 @SMU_CQGR_GEN_VAL(i32, i32) #1

declare dso_local i64 @SMU_CQGR_GEN_BIT(i32) #1

declare dso_local i32 @SMU_CQGR_WRITE(%struct.TYPE_6__*, i64) #1

declare dso_local i64 @SMU_CQPR_GEN_VAL(i32, i32) #1

declare dso_local i32 @SMU_CQPR_WRITE(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
