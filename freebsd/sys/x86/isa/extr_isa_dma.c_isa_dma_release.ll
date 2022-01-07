; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_isa_dma.c_isa_dma_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_isa_dma.c_isa_dma_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@isa_dma_lock = common dso_local global i32 0, align 4
@dma_busy = common dso_local global i32 0, align 4
@dma_inuse = common dso_local global i32 0, align 4
@dma_auto_mode = common dso_local global i32 0, align 4
@VALID_DMA_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @isa_dma_release(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = call i32 @mtx_lock(i32* @isa_dma_lock)
  %4 = load i32, i32* @dma_busy, align 4
  %5 = load i32, i32* %2, align 4
  %6 = shl i32 1, %5
  %7 = and i32 %4, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = shl i32 1, %10
  %12 = xor i32 %11, -1
  %13 = load i32, i32* @dma_busy, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* @dma_busy, align 4
  br label %15

15:                                               ; preds = %9, %1
  %16 = load i32, i32* %2, align 4
  %17 = shl i32 1, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* @dma_inuse, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* @dma_inuse, align 4
  %21 = load i32, i32* %2, align 4
  %22 = shl i32 1, %21
  %23 = xor i32 %22, -1
  %24 = load i32, i32* @dma_auto_mode, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* @dma_auto_mode, align 4
  %26 = call i32 @mtx_unlock(i32* @isa_dma_lock)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
