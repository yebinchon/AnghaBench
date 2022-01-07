; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_intr.c_intr_map_get_isrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_intr.c_intr_map_get_isrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.intr_irqsrc* }
%struct.intr_irqsrc = type { i32 }

@irq_map_lock = common dso_local global i32 0, align 4
@irq_map_count = common dso_local global i64 0, align 8
@irq_map = common dso_local global %struct.TYPE_2__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intr_irqsrc* (i64)* @intr_map_get_isrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intr_irqsrc* @intr_map_get_isrc(i64 %0) #0 {
  %2 = alloca %struct.intr_irqsrc*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.intr_irqsrc*, align 8
  store i64 %0, i64* %3, align 8
  %5 = call i32 @mtx_lock(i32* @irq_map_lock)
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @irq_map_count, align 8
  %8 = icmp uge i64 %6, %7
  br i1 %8, label %15, label %9

9:                                                ; preds = %1
  %10 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @irq_map, align 8
  %11 = load i64, i64* %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %10, i64 %11
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp eq %struct.TYPE_2__* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %9, %1
  %16 = call i32 @mtx_unlock(i32* @irq_map_lock)
  store %struct.intr_irqsrc* null, %struct.intr_irqsrc** %2, align 8
  br label %26

17:                                               ; preds = %9
  %18 = load %struct.TYPE_2__**, %struct.TYPE_2__*** @irq_map, align 8
  %19 = load i64, i64* %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %18, i64 %19
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %22, align 8
  store %struct.intr_irqsrc* %23, %struct.intr_irqsrc** %4, align 8
  %24 = call i32 @mtx_unlock(i32* @irq_map_lock)
  %25 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %4, align 8
  store %struct.intr_irqsrc* %25, %struct.intr_irqsrc** %2, align 8
  br label %26

26:                                               ; preds = %17, %15
  %27 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %2, align 8
  ret %struct.intr_irqsrc* %27
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
