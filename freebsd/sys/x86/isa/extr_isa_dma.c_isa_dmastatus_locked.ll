; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_isa_dma.c_isa_dmastatus_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_isa_dma.c_isa_dmastatus_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@isa_dma_lock = common dso_local global i32 0, align 4
@MA_OWNED = common dso_local global i32 0, align 4
@dma_inuse = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"isa_dmastatus: channel %d not active\0A\00", align 1
@dma_busy = common dso_local global i32 0, align 4
@dma_auto_mode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"chan %d not busy\0A\00", align 1
@DMA1_FFC = common dso_local global i32 0, align 4
@DMA2_FFC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @isa_dmastatus_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isa_dmastatus_locked(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @mtx_assert(i32* @isa_dma_lock, i32 %11)
  %13 = load i32, i32* @dma_inuse, align 4
  %14 = load i32, i32* %3, align 4
  %15 = shl i32 1, %14
  %16 = and i32 %13, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 -1, i32* %2, align 4
  br label %90

21:                                               ; preds = %1
  %22 = load i32, i32* @dma_busy, align 4
  %23 = load i32, i32* %3, align 4
  %24 = shl i32 1, %23
  %25 = and i32 %22, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load i32, i32* @dma_auto_mode, align 4
  %29 = load i32, i32* %3, align 4
  %30 = shl i32 1, %29
  %31 = and i32 %28, %30
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  store i32 -2, i32* %2, align 4
  br label %90

36:                                               ; preds = %27, %21
  %37 = load i32, i32* %3, align 4
  %38 = icmp slt i32 %37, 4
  br i1 %38, label %39, label %44

39:                                               ; preds = %36
  %40 = load i32, i32* @DMA1_FFC, align 4
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @DMA1_CHN(i32 %41)
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  br label %50

44:                                               ; preds = %36
  %45 = load i32, i32* @DMA2_FFC, align 4
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %3, align 4
  %47 = sub nsw i32 %46, 4
  %48 = call i32 @DMA2_CHN(i32 %47)
  %49 = add nsw i32 %48, 2
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %44, %39
  %51 = call i32 (...) @disable_intr()
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @outb(i32 %52, i32 0)
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @inb(i32 %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @inb(i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @outb(i32 %58, i32 0)
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @inb(i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @inb(i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = call i32 (...) @enable_intr()
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp sge i32 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %50
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %8, align 4
  %71 = shl i32 %70, 8
  %72 = add nsw i32 %69, %71
  %73 = add nsw i32 %72, 1
  %74 = and i32 %73, 65535
  store i32 %74, i32* %4, align 4
  br label %82

75:                                               ; preds = %50
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %10, align 4
  %78 = shl i32 %77, 8
  %79 = add nsw i32 %76, %78
  %80 = add nsw i32 %79, 1
  %81 = and i32 %80, 65535
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %75, %68
  %83 = load i32, i32* %3, align 4
  %84 = icmp sge i32 %83, 4
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i32, i32* %4, align 4
  %87 = mul nsw i32 %86, 2
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32, i32* %4, align 4
  store i32 %89, i32* %2, align 4
  br label %90

90:                                               ; preds = %88, %33, %18
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @DMA1_CHN(i32) #1

declare dso_local i32 @DMA2_CHN(i32) #1

declare dso_local i32 @disable_intr(...) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @enable_intr(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
