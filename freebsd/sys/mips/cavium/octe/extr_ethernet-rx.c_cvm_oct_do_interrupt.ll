; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_ethernet-rx.c_cvm_oct_do_interrupt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/octe/extr_ethernet-rx.c_cvm_oct_do_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTERRUPT_LIMIT = common dso_local global i64 0, align 8
@CVMX_POW_WQ_INT = common dso_local global i32 0, align 4
@pow_receive_group = common dso_local global i32 0, align 4
@cvm_oct_taskq = common dso_local global i32 0, align 4
@cvm_oct_task = common dso_local global i32 0, align 4
@FILTER_HANDLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvm_oct_do_interrupt(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i64, i64* @INTERRUPT_LIMIT, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %10

5:                                                ; preds = %1
  %6 = load i32, i32* @CVMX_POW_WQ_INT, align 4
  %7 = load i32, i32* @pow_receive_group, align 4
  %8 = shl i32 1, %7
  %9 = call i32 @cvmx_write_csr(i32 %6, i32 %8)
  br label %15

10:                                               ; preds = %1
  %11 = load i32, i32* @CVMX_POW_WQ_INT, align 4
  %12 = load i32, i32* @pow_receive_group, align 4
  %13 = shl i32 65537, %12
  %14 = call i32 @cvmx_write_csr(i32 %11, i32 %13)
  br label %15

15:                                               ; preds = %10, %5
  %16 = load i32, i32* @cvm_oct_taskq, align 4
  %17 = call i32 @taskqueue_enqueue(i32 %16, i32* @cvm_oct_task)
  %18 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %18
}

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
