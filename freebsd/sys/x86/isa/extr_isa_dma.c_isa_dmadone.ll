; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_isa_dma.c_isa_dmadone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_isa_dma.c_isa_dmadone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@isa_dma_lock = common dso_local global i32 0, align 4
@dma_busy = common dso_local global i32 0, align 4
@dma_auto_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"isa_dmadone: channel %d not busy\0A\00", align 1
@DMA2_SMSK = common dso_local global i32 0, align 4
@DMA1_SMSK = common dso_local global i32 0, align 4
@dma_bounced = common dso_local global i32 0, align 4
@ISADMA_READ = common dso_local global i32 0, align 4
@dma_bouncebuf = common dso_local global i32* null, align 8
@VALID_DMA_MASK = common dso_local global i32 0, align 4
@dma_inuse = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isa_dmadone(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = call i32 @mtx_lock(i32* @isa_dma_lock)
  %10 = load i32, i32* @dma_busy, align 4
  %11 = load i32, i32* %8, align 4
  %12 = shl i32 1, %11
  %13 = and i32 %10, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %4
  %16 = load i32, i32* @dma_auto_mode, align 4
  %17 = load i32, i32* %8, align 4
  %18 = shl i32 1, %17
  %19 = and i32 %16, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %22)
  br label %24

24:                                               ; preds = %21, %15, %4
  %25 = load i32, i32* @dma_auto_mode, align 4
  %26 = load i32, i32* %8, align 4
  %27 = shl i32 1, %26
  %28 = and i32 %25, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  %32 = and i32 %31, 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @DMA2_SMSK, align 4
  br label %38

36:                                               ; preds = %30
  %37 = load i32, i32* @DMA1_SMSK, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load i32, i32* %8, align 4
  %41 = and i32 %40, 3
  %42 = or i32 %41, 4
  %43 = call i32 @outb(i32 %39, i32 %42)
  br label %44

44:                                               ; preds = %38, %24
  %45 = load i32, i32* @dma_bounced, align 4
  %46 = load i32, i32* %8, align 4
  %47 = shl i32 1, %46
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %70

50:                                               ; preds = %44
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @ISADMA_READ, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %50
  %56 = load i32*, i32** @dma_bouncebuf, align 8
  %57 = load i32, i32* %8, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @bcopy(i32 %60, i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %55, %50
  %65 = load i32, i32* %8, align 4
  %66 = shl i32 1, %65
  %67 = xor i32 %66, -1
  %68 = load i32, i32* @dma_bounced, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* @dma_bounced, align 4
  br label %70

70:                                               ; preds = %64, %44
  %71 = load i32, i32* %8, align 4
  %72 = shl i32 1, %71
  %73 = xor i32 %72, -1
  %74 = load i32, i32* @dma_busy, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* @dma_busy, align 4
  %76 = call i32 @mtx_unlock(i32* @isa_dma_lock)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
