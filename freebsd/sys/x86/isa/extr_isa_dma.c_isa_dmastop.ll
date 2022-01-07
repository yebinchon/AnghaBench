; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_isa_dma.c_isa_dmastop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_isa_dma.c_isa_dmastop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@isa_dma_lock = common dso_local global i32 0, align 4
@dma_inuse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"isa_dmastop: channel %d not acquired\0A\00", align 1
@dma_busy = common dso_local global i32 0, align 4
@dma_auto_mode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"chan %d not busy\0A\00", align 1
@DMA1_SMSK = common dso_local global i32 0, align 4
@DMA2_SMSK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isa_dmastop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = call i32 @mtx_lock(i32* @isa_dma_lock)
  %6 = load i32, i32* @dma_inuse, align 4
  %7 = load i32, i32* %3, align 4
  %8 = shl i32 1, %7
  %9 = and i32 %6, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %12)
  br label %14

14:                                               ; preds = %11, %1
  %15 = load i32, i32* @dma_busy, align 4
  %16 = load i32, i32* %3, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %14
  %21 = load i32, i32* @dma_auto_mode, align 4
  %22 = load i32, i32* %3, align 4
  %23 = shl i32 1, %22
  %24 = and i32 %21, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = call i32 @mtx_unlock(i32* @isa_dma_lock)
  store i32 -2, i32* %2, align 4
  br label %51

30:                                               ; preds = %20, %14
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load i32, i32* @DMA1_SMSK, align 4
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, 3
  %38 = or i32 %37, 4
  %39 = call i32 @outb(i32 %35, i32 %38)
  br label %46

40:                                               ; preds = %30
  %41 = load i32, i32* @DMA2_SMSK, align 4
  %42 = load i32, i32* %3, align 4
  %43 = and i32 %42, 3
  %44 = or i32 %43, 4
  %45 = call i32 @outb(i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %40, %34
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @isa_dmastatus_locked(i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = call i32 @mtx_unlock(i32* @isa_dma_lock)
  %50 = load i32, i32* %4, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %46, %26
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @isa_dmastatus_locked(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
