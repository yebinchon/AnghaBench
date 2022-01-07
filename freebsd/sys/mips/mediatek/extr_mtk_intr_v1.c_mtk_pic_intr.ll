; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_intr_v1.c_mtk_pic_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mediatek/extr_mtk_intr_v1.c_mtk_pic_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i32, i32 }
%struct.mtk_pic_softc = type { i32 }

@curthread = common dso_local global %struct.thread* null, align 8
@MTK_IRQ0STAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Stray interrupt %u detected\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"all interrupts handled\00", align 1
@FILTER_HANDLED = common dso_local global i32 0, align 4
@MTK_IRQ1STAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @mtk_pic_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pic_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mtk_pic_softc*, align 8
  %4 = alloca %struct.thread*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = bitcast i8* %7 to %struct.mtk_pic_softc*
  store %struct.mtk_pic_softc* %8, %struct.mtk_pic_softc** %3, align 8
  %9 = load %struct.thread*, %struct.thread** @curthread, align 8
  store %struct.thread* %9, %struct.thread** %4, align 8
  %10 = load %struct.thread*, %struct.thread** %4, align 8
  %11 = getelementptr inbounds %struct.thread, %struct.thread* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %11, align 4
  %14 = load %struct.mtk_pic_softc*, %struct.mtk_pic_softc** %3, align 8
  %15 = load i32, i32* @MTK_IRQ0STAT, align 4
  %16 = call i32 @READ4(%struct.mtk_pic_softc* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  br label %17

17:                                               ; preds = %46, %37, %1
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @fls(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %47

21:                                               ; preds = %17
  %22 = load i32, i32* %5, align 4
  %23 = add i32 %22, -1
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = shl i32 1, %24
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %6, align 4
  %29 = load %struct.mtk_pic_softc*, %struct.mtk_pic_softc** %3, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @PIC_INTR_ISRC(%struct.mtk_pic_softc* %29, i32 %30)
  %32 = load %struct.thread*, %struct.thread** @curthread, align 8
  %33 = getelementptr inbounds %struct.thread, %struct.thread* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @intr_isrc_dispatch(i32 %31, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %21
  %38 = load %struct.mtk_pic_softc*, %struct.mtk_pic_softc** %3, align 8
  %39 = getelementptr inbounds %struct.mtk_pic_softc, %struct.mtk_pic_softc* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.mtk_pic_softc*, %struct.mtk_pic_softc** %3, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @pic_irq_mask(%struct.mtk_pic_softc* %43, i32 %44)
  br label %17

46:                                               ; preds = %21
  br label %17

47:                                               ; preds = %17
  %48 = load i32, i32* %5, align 4
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @KASSERT(i32 %50, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.thread*, %struct.thread** %4, align 8
  %53 = getelementptr inbounds %struct.thread, %struct.thread* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* @FILTER_HANDLED, align 4
  ret i32 %56
}

declare dso_local i32 @READ4(%struct.mtk_pic_softc*, i32) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i64 @intr_isrc_dispatch(i32, i32) #1

declare dso_local i32 @PIC_INTR_ISRC(%struct.mtk_pic_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @pic_irq_mask(%struct.mtk_pic_softc*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
