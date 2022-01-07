; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_intr.c_isrc_free_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_intr.c_isrc_free_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i64 }

@isrc_table_lock = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@irq_sources = common dso_local global %struct.intr_irqsrc** null, align 8
@EINVAL = common dso_local global i32 0, align 4
@INTR_IRQ_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intr_irqsrc*)* @isrc_free_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isrc_free_irq(%struct.intr_irqsrc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intr_irqsrc*, align 8
  store %struct.intr_irqsrc* %0, %struct.intr_irqsrc** %3, align 8
  %4 = load i32, i32* @MA_OWNED, align 4
  %5 = call i32 @mtx_assert(i32* @isrc_table_lock, i32 %4)
  %6 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %3, align 8
  %7 = getelementptr inbounds %struct.intr_irqsrc, %struct.intr_irqsrc* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** @irq_sources, align 8
  %10 = call i64 @nitems(%struct.intr_irqsrc** %9)
  %11 = icmp uge i64 %8, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %2, align 4
  br label %34

14:                                               ; preds = %1
  %15 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** @irq_sources, align 8
  %16 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %3, align 8
  %17 = getelementptr inbounds %struct.intr_irqsrc, %struct.intr_irqsrc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.intr_irqsrc*, %struct.intr_irqsrc** %15, i64 %18
  %20 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %19, align 8
  %21 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %3, align 8
  %22 = icmp ne %struct.intr_irqsrc* %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %2, align 4
  br label %34

25:                                               ; preds = %14
  %26 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** @irq_sources, align 8
  %27 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %3, align 8
  %28 = getelementptr inbounds %struct.intr_irqsrc, %struct.intr_irqsrc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.intr_irqsrc*, %struct.intr_irqsrc** %26, i64 %29
  store %struct.intr_irqsrc* null, %struct.intr_irqsrc** %30, align 8
  %31 = load i64, i64* @INTR_IRQ_INVALID, align 8
  %32 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %3, align 8
  %33 = getelementptr inbounds %struct.intr_irqsrc, %struct.intr_irqsrc* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %25, %23, %12
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @nitems(%struct.intr_irqsrc**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
