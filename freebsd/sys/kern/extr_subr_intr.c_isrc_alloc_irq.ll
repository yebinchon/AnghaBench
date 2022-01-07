; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_intr.c_isrc_alloc_irq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_intr.c_isrc_alloc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i64 }

@isrc_table_lock = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@irq_sources = common dso_local global %struct.intr_irqsrc** null, align 8
@irq_next_free = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intr_irqsrc*)* @isrc_alloc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isrc_alloc_irq(%struct.intr_irqsrc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intr_irqsrc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.intr_irqsrc* %0, %struct.intr_irqsrc** %3, align 8
  %6 = load i32, i32* @MA_OWNED, align 4
  %7 = call i32 @mtx_assert(i32* @isrc_table_lock, i32 %6)
  %8 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** @irq_sources, align 8
  %9 = call i64 @nitems(%struct.intr_irqsrc** %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* @irq_next_free, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOSPC, align 4
  store i32 %14, i32* %2, align 4
  br label %66

15:                                               ; preds = %1
  %16 = load i64, i64* @irq_next_free, align 8
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %29, %15
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* %4, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %17
  %22 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** @irq_sources, align 8
  %23 = load i64, i64* %5, align 8
  %24 = getelementptr inbounds %struct.intr_irqsrc*, %struct.intr_irqsrc** %22, i64 %23
  %25 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %24, align 8
  %26 = icmp eq %struct.intr_irqsrc* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %51

28:                                               ; preds = %21
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %5, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %5, align 8
  br label %17

32:                                               ; preds = %17
  store i64 0, i64* %5, align 8
  br label %33

33:                                               ; preds = %45, %32
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @irq_next_free, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** @irq_sources, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds %struct.intr_irqsrc*, %struct.intr_irqsrc** %38, i64 %39
  %41 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %40, align 8
  %42 = icmp eq %struct.intr_irqsrc* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %51

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %5, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %5, align 8
  br label %33

48:                                               ; preds = %33
  %49 = load i64, i64* %4, align 8
  store i64 %49, i64* @irq_next_free, align 8
  %50 = load i32, i32* @ENOSPC, align 4
  store i32 %50, i32* %2, align 4
  br label %66

51:                                               ; preds = %43, %27
  %52 = load i64, i64* %5, align 8
  %53 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %3, align 8
  %54 = getelementptr inbounds %struct.intr_irqsrc, %struct.intr_irqsrc* %53, i32 0, i32 0
  store i64 %52, i64* %54, align 8
  %55 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %3, align 8
  %56 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** @irq_sources, align 8
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds %struct.intr_irqsrc*, %struct.intr_irqsrc** %56, i64 %57
  store %struct.intr_irqsrc* %55, %struct.intr_irqsrc** %58, align 8
  %59 = load i64, i64* %5, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* @irq_next_free, align 8
  %61 = load i64, i64* @irq_next_free, align 8
  %62 = load i64, i64* %4, align 8
  %63 = icmp uge i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  store i64 0, i64* @irq_next_free, align 8
  br label %65

65:                                               ; preds = %64, %51
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %48, %13
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @nitems(%struct.intr_irqsrc**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
