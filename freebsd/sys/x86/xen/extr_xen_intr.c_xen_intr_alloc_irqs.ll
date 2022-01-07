; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_alloc_irqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_alloc_irqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@num_io_irqs = common dso_local global i64 0, align 8
@UINT_MAX = common dso_local global i64 0, align 8
@NR_EVENT_CHANNELS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"IRQ allocation overflow (num_msi_irqs too high?)\00", align 1
@first_evtchn_irq = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_intr_alloc_irqs() #0 {
  %1 = load i64, i64* @num_io_irqs, align 8
  %2 = load i64, i64* @UINT_MAX, align 8
  %3 = load i64, i64* @NR_EVENT_CHANNELS, align 8
  %4 = sub nsw i64 %2, %3
  %5 = icmp sgt i64 %1, %4
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @panic(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  %9 = load i64, i64* @num_io_irqs, align 8
  store i64 %9, i64* @first_evtchn_irq, align 8
  %10 = load i64, i64* @NR_EVENT_CHANNELS, align 8
  %11 = load i64, i64* @num_io_irqs, align 8
  %12 = add nsw i64 %11, %10
  store i64 %12, i64* @num_io_irqs, align 8
  ret void
}

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
