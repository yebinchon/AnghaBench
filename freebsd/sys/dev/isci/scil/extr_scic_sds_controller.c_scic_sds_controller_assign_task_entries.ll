; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_assign_task_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_assign_task_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@STARTING = common dso_local global i32 0, align 4
@ENDING = common dso_local global i32 0, align 4
@RANGE_CHECK_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scic_sds_controller_assign_task_entries(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %4 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %5 = call i32 @SMU_TCA_READ(%struct.TYPE_5__* %4, i32 0)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @STARTING, align 4
  %8 = call i32 @SMU_TCA_GEN_VAL(i32 %7, i64 0)
  %9 = or i32 %6, %8
  %10 = load i32, i32* @ENDING, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = sub nsw i64 %13, 1
  %15 = call i32 @SMU_TCA_GEN_VAL(i32 %10, i64 %14)
  %16 = or i32 %9, %15
  %17 = load i32, i32* @RANGE_CHECK_ENABLE, align 4
  %18 = call i32 @SMU_TCA_GEN_BIT(i32 %17)
  %19 = or i32 %16, %18
  store i32 %19, i32* %3, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @SMU_TCA_WRITE(%struct.TYPE_5__* %20, i32 0, i32 %21)
  ret void
}

declare dso_local i32 @SMU_TCA_READ(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @SMU_TCA_GEN_VAL(i32, i64) #1

declare dso_local i32 @SMU_TCA_GEN_BIT(i32) #1

declare dso_local i32 @SMU_TCA_WRITE(%struct.TYPE_5__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
