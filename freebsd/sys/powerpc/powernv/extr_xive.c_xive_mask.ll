; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_xive.c_xive_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powernv/extr_xive.c_xive_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xive_irq = type { i32, i64 }

@MAX_XIVE_IRQS = common dso_local global i64 0, align 8
@OPAL_XIVE_IRQ_LSI = common dso_local global i32 0, align 4
@XIVE_IRQ_PQ_01 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i8*)* @xive_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xive_mask(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.xive_irq*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64, i64* @MAX_XIVE_IRQS, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %29

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.xive_irq*
  store %struct.xive_irq* %14, %struct.xive_irq** %7, align 8
  %15 = load %struct.xive_irq*, %struct.xive_irq** %7, align 8
  %16 = getelementptr inbounds %struct.xive_irq, %struct.xive_irq* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @OPAL_XIVE_IRQ_LSI, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  br label %29

22:                                               ; preds = %12
  %23 = load %struct.xive_irq*, %struct.xive_irq** %7, align 8
  %24 = getelementptr inbounds %struct.xive_irq, %struct.xive_irq* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @XIVE_IRQ_PQ_01, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @xive_read_mmap8(i64 %27)
  br label %29

29:                                               ; preds = %22, %21, %11
  ret void
}

declare dso_local i32 @xive_read_mmap8(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
