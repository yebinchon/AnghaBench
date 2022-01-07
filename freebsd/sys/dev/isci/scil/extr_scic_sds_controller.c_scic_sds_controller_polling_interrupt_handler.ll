; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_polling_interrupt_handler.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isci/scil/extr_scic_sds_controller.c_scic_sds_controller_polling_interrupt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SCIC_LOG_OBJECT_CONTROLLER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"scic_sds_controller_polling_interrupt_handler(0x%d) enter\0A\00", align 1
@SMU_ISR_COMPLETION = common dso_local global i32 0, align 4
@SMU_ISR_QUEUE_ERROR = common dso_local global i32 0, align 4
@SMU_ISR_QUEUE_SUSPEND = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @scic_sds_controller_polling_interrupt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scic_sds_controller_polling_interrupt_handler(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64, i64* %3, align 8
  %7 = inttoptr i64 %6 to i32*
  store i32* %7, i32** %5, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @sci_base_object_get_logger(i64 %8)
  %10 = load i32, i32* @SCIC_LOG_OBJECT_CONTROLLER, align 4
  %11 = load i64, i64* %3, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i32 @SCIC_LOG_TRACE(i32 %12)
  %14 = load i32*, i32** %5, align 8
  %15 = call i32 @SMU_ISR_READ(i32* %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @SMU_ISR_COMPLETION, align 4
  %18 = load i32, i32* @SMU_ISR_QUEUE_ERROR, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @SMU_ISR_QUEUE_SUSPEND, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %16, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @FALSE, align 4
  store i32 %25, i32* %2, align 4
  br label %30

26:                                               ; preds = %1
  %27 = load i64, i64* %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @scic_sds_controller_standard_interrupt_handler(i64 %27, i32 %28)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %26, %24
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @SCIC_LOG_TRACE(i32) #1

declare dso_local i32 @sci_base_object_get_logger(i64) #1

declare dso_local i32 @SMU_ISR_READ(i32*) #1

declare dso_local i32 @scic_sds_controller_standard_interrupt_handler(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
